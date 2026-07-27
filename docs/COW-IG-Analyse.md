# Analyse: Clinical Order Workflows (COW) IG & IHE PaLM fuer MII Pathologie

**Datum:** 2026-04-15  
**Quellen:**
- COW IG: https://build.fhir.org/ig/HL7/fhir-cow-ig/en/ (v1.0.0-ballot, STU 1 Ballot, FHIR R4)
- IHE PaLM Technical Framework: Revision 11.0 (Final Text, April 2024)  
**Ziel:** Konkrete Sendeszenarien fuer Pathologie-Auftraege extrahieren und mit Docker testen

---

## 1. Kernkonzepte des COW IG

### 1.1 Akteure

| Akteur | Rolle | Pathologie-Kontext |
|--------|-------|--------------------|
| **Placer** | Erstellt den Auftrag (Requestor, Referrer, Prescriber) | Kliniker/Einsender, der eine Probe zur Untersuchung schickt |
| **Filler** | Fuehrt den Auftrag aus (Performer, Fulfiller) | Pathologie-Labor, das die Untersuchung durchfuehrt |
| **Patient** | Gegenstand der Untersuchung | Patient, von dem die Probe stammt |

### 1.2 Ressourcen-Dreieck: Request - Task - Event

```
ServiceRequest (Request)     -->  Task (Koordination)  -->  DiagnosticReport (Event/Output)
   [Placer-owned]                [Shared]                   [Filler-owned]
```

- **ServiceRequest**: Enthaelt den Auftrag (was soll gemacht werden, Status, Intent)
- **Task**: Koordiniert die Ausfuehrung zwischen Placer und Filler, traegt den Workflow-Status
- **DiagnosticReport/Observation**: Ergebnis der Untersuchung, gehoert dem Filler

**Eigentumsregel:** "A Request resource SHALL only ever be directly modified by the party which instantiated that resource."

### 1.3 Communication Patterns

| Pattern | Beschreibung |
|---------|-------------|
| **RESTful + Task** | Placer erstellt Task auf gemeinsamem Server, Filler aktualisiert Status |
| **Subscription** | Benachrichtigung bei Status-Aenderungen via FHIR Subscriptions |
| **Messaging** | Nachrichten-basierter Austausch ueber MessageHeader/Bundle |
| **Polling** | Filler/Placer fragt periodisch nach Updates |

### 1.4 Workflow-States (Task-Status)

| State | Task.status | Task.businessStatus | Request.status | Beschreibung |
|-------|------------|---------------------|---------------|-------------|
| Auftrag erstellt | requested | - | active | Placer hat Auftrag platziert |
| Filler wartet auf Info | received | Awaiting Information | active | Filler braucht mehr Daten |
| Filler akzeptiert | accepted | - | active | Filler nimmt Auftrag an |
| In Bearbeitung | in-progress | (kontextabhaengig) | active | Untersuchung laeuft |
| Teilergebnis | in-progress | Partial | active | Erste Ergebnisse vorhanden |
| Vorlaeufig | in-progress | Preliminary | active | Vorlaeufiger Befund |
| Abgeschlossen | completed | - | completed | Befund fertig |
| Abgelehnt | rejected | - | active | Filler lehnt Auftrag ab |
| Fehlgeschlagen | failed | - | ended | Probe ungeeignet o.ae. |
| Abgebrochen | cancelled | - | revoked | Auftrag zurueckgezogen |

---

## 2. Order Grouping

### 2.1 Zwei Grouping-Mechanismen

#### A) Requisition-basiert (einfach)
Mehrere ServiceRequests teilen sich denselben `groupIdentifier` / `requisition`:
```
ServiceRequest A  -->  requisition = "G01"
ServiceRequest B  -->  requisition = "G01"  
ServiceRequest C  -->  requisition = "G01"
```
- Jeder Request bleibt unabhaengig aktionierbar
- Kein zusaetzliches Grouping-Resource noetig
- **Euer aktuelles Modell:** `requisition` mit type `PGN` (Placer Group Number) - passt hierzu

#### B) RequestGroup-basiert (interdependent)
```
RequestGroup (ID: 123)
  |-- action[0].resource --> ServiceRequest A (intent: "option")
  |-- action[1].resource --> ServiceRequest B (intent: "option")
  |-- action[2].resource --> ServiceRequest C (intent: "option")
```
- Referenzierte Requests muessen `intent = "option"` haben (nicht eigenstaendig interpretierbar)
- Statusaenderungen passieren auf RequestGroup-Ebene
- **Euer RequestGroup-Profil:** Referenziert ServiceRequests, ABER setzt `intent = "order"` statt `"option"` --> **Abweichung vom COW IG!**

### 2.2 Search Parameters (COW IG)
- `group-or-identifier`: Sucht entweder `groupIdentifier` oder `identifier`
- `activity-resource`: Findet Requests innerhalb einer RequestGroup

### 2.3 Task und Grouping
- `Task.focus` zeigt auf den Request ODER die RequestGroup
- Bei requisition-basiertem Grouping ohne RequestGroup: Task.focus muss ALLE Requests referenzieren

---

## 3. Konkrete Sendeszenarien fuer Pathologie

### Szenario 1: Einfacher Pathologie-Auftrag (Happy Path)

**Beschreibung:** Kliniker schickt Biopsie-Probe zur histologischen Untersuchung.

**Ablauf:**
```
Placer (KIS)                                    Filler (Pathologie-LIS)
    |                                                  |
    |-- 1. POST ServiceRequest (active, order) ------->|
    |-- 2. POST Specimen (available) ----------------->|
    |-- 3. POST Task (requested, fulfill) ------------>|
    |                                                  |
    |                         4. PUT Task (accepted) --|
    |                                                  |
    |                      5. PUT Task (in-progress) --|
    |                                                  |
    |                   [Makroskopie, Mikroskopie...]   |
    |                                                  |
    |                      6. POST DiagnosticReport ---|
    |                      7. PUT Task (completed,     |
    |                         output: DiagReport) -----|
    |                                                  |
    |<---- 8. Notification (Subscription/Message) -----|
    |                                                  |
    |-- 9. PUT ServiceRequest (completed) ------------>|
```

**FHIR-Ressourcen:**
- `ServiceRequest` (code: Pathology consultation, intent: order, status: active -> completed)
- `Specimen` (type: Biopsy, status: available)
- `Task` (code: fulfill, focus: ServiceRequest, input: Specimen, status: requested -> accepted -> in-progress -> completed)
- `DiagnosticReport` (basedOn: ServiceRequest, status: final)
- `Patient`, `Practitioner`, `Encounter`

---

### Szenario 2: Probenabweisung (Specimen Rejected)

**Beschreibung:** Labor erhaelt eine ungeeignete Probe (z.B. haemolysiert, zu wenig Material, falsch fixiert).

**Ablauf:**
```
Placer (KIS)                                    Filler (Pathologie-LIS)
    |                                                  |
    |-- 1. POST ServiceRequest (active) -------------->|
    |-- 2. POST Specimen (available) ----------------->|
    |-- 3. POST Task (requested) --------------------->|
    |                                                  |
    |                         4. PUT Task (accepted) --|
    |                      5. PUT Task (in-progress) --|
    |                                                  |
    |              [Probe wird geprueft -> ungeeignet]  |
    |                                                  |
    |                 6. PUT Specimen (unsatisfactory,  |
    |                    condition: "insufficient") ----|
    |                 7. PUT Task (failed,              |
    |                    output: Specimen) -------------|
    |                                                  |
    |<---- 8. Notification ----------------------------|
    |                                                  |
    |-- 9. PUT ServiceRequest (ended) ---------------->|
    |                                                  |
    | [Option: Neue Probe einsenden -> Szenario 1]     |
```

**Besonderheiten:**
- `Specimen.status = "unsatisfactory"`, `Specimen.condition` beschreibt das Problem
- `Task.status = "failed"`, `Task.output` referenziert die abgelehnte Probe
- `ServiceRequest.status = "ended"` (nicht "completed", da kein Befund erstellt)

---

### Szenario 3: Nachforderung / Reflex-Untersuchung (Lab-initiiert)

**Beschreibung:** Pathologie bestellt eigenstaendig eine Zusatzfaerbung oder molekularpathologische Untersuchung basierend auf initialen Befunden (z.B. Immunhistochemie nach Histologie).

**Ablauf:**
```
Placer (KIS)              Filler (Pathologie)          Referenzlabor
    |                            |                          |
    |-- 1. SR + Specimen + Task ->|                         |
    |                            |                          |
    |               2. Task (in-progress)                   |
    |               [Histologie durchgefuehrt]              |
    |                            |                          |
    |               3. Neuer ServiceRequest                 |
    |                  (Immunhistochemie,                    |
    |                   basedOn: Original-SR)                |
    |                            |                          |
    |               4. Aliquot-Specimen erstellt             |
    |                  (parent: Original-Specimen)           |
    |                            |                          |
    |                            |-- 5. SR + Specimen       |
    |                            |   + Task (requested) --->|
    |                            |                          |
    |                            |    6. Task (accepted) ---|
    |                            |    7. Task (in-progress)-|
    |                            |    8. DiagnosticReport --|
    |                            |    9. Task (completed) --|
    |                            |                          |
    |               10. Gesamtbefund erstellt               |
    |                   (DiagnosticReport)                   |
    |               11. Original Task (completed)           |
    |                            |                          |
    |<-- 12. Notification -------|                          |
    |                            |                          |
    |-- 13. SR (completed) ----->|                          |
```

**Besonderheiten:**
- Filler wird zum Placer fuer die Zusatzuntersuchung
- `ServiceRequest.basedOn` verknuepft Folgeauftrag mit Originalauftrag
- `Specimen` Aliquot mit `parent`-Referenz zum Original
- Zwei Task-Ketten: Placer<->Filler und Filler<->Referenzlabor

---

### Szenario 4: Auftragsablehnung durch Filler (Decline)

**Beschreibung:** Pathologie lehnt den Auftrag ab (z.B. nicht zustaendig, Kapazitaet, fehlende Informationen).

**Ablauf:**
```
Placer (KIS)                                    Filler (Pathologie-LIS)
    |                                                  |
    |-- 1. POST ServiceRequest (active) -------------->|
    |-- 2. POST Task (requested) --------------------->|
    |                                                  |
    |                  3. PUT Task (rejected,           |
    |                     statusReason: "not capable")--|
    |                                                  |
    |<---- 4. Notification ----------------------------|
    |                                                  |
    | [Option A: Anderen Filler suchen]                |
    | [Option B: Auftrag stornieren]                   |
```

**Variante - Filler schlaegt Stornierung vor:**
```
    |                  3. POST Cancellation-Request-Task|
    |                     (code: "abort",               |
    |                      intent: "proposal",          |
    |                      focus: ServiceRequest) ------|
    |                                                  |
    |<---- 4. Notification ----------------------------|
    |                                                  |
    | [Placer entscheidet ob storniert wird]            |
```

---

### Szenario 5: Stornierung durch Placer (Cancel)

**Beschreibung:** Kliniker zieht den Auftrag zurueck (z.B. falsche Probe, Patient verstorben, klinische Entscheidung).

**Ablauf:**

#### 5a) Vor Beginn der Arbeit:
```
Placer (KIS)                                    Filler (Pathologie-LIS)
    |                                                  |
    |-- 1. POST ServiceRequest + Task (requested) ---->|
    |                                                  |
    |-- 2. PUT Task (cancelled) ---------------------->|
    |-- 3. PUT ServiceRequest (revoked) -------------->|
```

#### 5b) Waehrend laufender Arbeit:
```
Placer (KIS)                                    Filler (Pathologie-LIS)
    |                                                  |
    |  [Task ist bereits in-progress]                  |
    |                                                  |
    |-- 2. POST Cancellation-Request-Task ------------>|
    |       (code: "abort", focus: Coordination-Task)  |
    |                                                  |
    |         3. PUT Cancel-Task (accepted/rejected) --|
    |                                                  |
    | [Wenn accepted:]                                 |
    |              4. PUT Coordination-Task (cancelled)-|
    |                                                  |
    |-- 5. PUT ServiceRequest (revoked) -------------->|
```

**Besonderheiten:**
- Vor Arbeitsbeginn: Placer kann Task direkt auf `cancelled` setzen
- Waehrend Arbeit: Formaler Cancellation-Request-Task noetig (code: "abort")
- Filler kann Stornierung ablehnen (z.B. Arbeit bereits abgeschlossen)

---

### Szenario 6: Gruppierter Auftrag (Multiple Untersuchungen)

**Beschreibung:** Kliniker bestellt mehrere Untersuchungen fuer dieselbe Probe (z.B. Histologie + Immunhistochemie + Molekularpathologie).

#### 6a) Requisition-basiert (unabhaengige Auftraege):
```
Placer (KIS)                                    Filler (Pathologie-LIS)
    |                                                  |
    |-- 1. POST Specimen ----------------------------- |
    |-- 2. POST SR-1 (Histologie, requisition: G01) -->|
    |-- 3. POST SR-2 (IHC, requisition: G01) -------->|
    |-- 4. POST SR-3 (MolPath, requisition: G01) ---->|
    |-- 5. POST Task-1 (focus: SR-1) ----------------->|
    |-- 6. POST Task-2 (focus: SR-2) ----------------->|
    |-- 7. POST Task-3 (focus: SR-3) ----------------->|
    |                                                  |
    | [Jeder Auftrag wird unabhaengig bearbeitet]      |
    | [Einzelne koennen abgeschlossen/abgelehnt werden]|
```

#### 6b) RequestGroup-basiert (interdependente Auftraege):
```
Placer (KIS)                                    Filler (Pathologie-LIS)
    |                                                  |
    |-- 1. POST Specimen ---------------------------->|
    |-- 2. POST SR-1 (intent: option) --------------->|
    |-- 3. POST SR-2 (intent: option) --------------->|
    |-- 4. POST SR-3 (intent: option) --------------->|
    |-- 5. POST RequestGroup (actions: SR-1,2,3) ---->|
    |-- 6. POST Task (focus: RequestGroup) ----------->|
    |                                                  |
    | [Statusaenderungen nur auf RequestGroup-Ebene]   |
    | [Ein Task fuer die gesamte Gruppe]               |
```

---

### Szenario 7: Filler fragt nach zusaetzlichen Informationen

**Beschreibung:** Pathologie braucht klinische Zusatzinfos (z.B. Vorbefunde, Medikation, OP-Bericht).

**Ablauf:**
```
Placer (KIS)                                    Filler (Pathologie-LIS)
    |                                                  |
    |-- 1. SR + Specimen + Task (requested) ---------->|
    |                                                  |
    |                  2. PUT Task (received,           |
    |                     businessStatus:               |
    |                     "Awaiting Information") -----|
    |                                                  |
    | [Option A: Filler fragt per RESTful Query ab]    |
    |                                                  |
    | [Option B: Filler sendet Communication]          |
    |                  3. POST Communication            |
    |                     (about: Task,                 |
    |                      payload: "Bitte OP-Bericht  |
    |                      nachreichen") --------------|
    |                                                  |
    |<---- 4. Notification ----------------------------|
    |                                                  |
    |-- 5. Placer liefert Info (z.B. DocumentRef) ---->|
    |                                                  |
    |                  6. PUT Task (in-progress) ------|
    |                  [Arbeit wird fortgesetzt]        |
```

---

## 4. IHE PaLM - Analyse und Mapping

### 4.1 Ueberblick

IHE PaLM (Pathology and Laboratory Medicine) entstand 2016 durch Zusammenlegung der IHE-Domaenen Laboratory (LAB, seit 2003) und Anatomic Pathology (AP, seit 2006). Aktuell: **Revision 11.0** (Final Text, April 2024).

**Wichtigste Erkenntnis: IHE PaLM hat KEINE FHIR IGs.** Das gesamte Framework ist HL7 v2.5 / CDA R2 basiert. Der COW IG ist das FHIR-Aequivalent fuer Order-Workflows.

### 4.2 Relevante IHE PaLM Profile

| Profil | Akronym | Relevanz fuer MII Patho |
|--------|---------|------------------------|
| **Laboratory Testing Workflow** | LTW | Hoch - Kern-Auftragsworkflow (Placer/Filler) |
| **Laboratory Analytical Workflow** | LAW | Mittel - Geraete-Level (Analyzer/AWOS) |
| **Laboratory Device Automation** | LDA | Mittel - Pre/Post-Analytik (Embedding, Staining) |
| **Inter-Laboratory Workflow** | ILW | Hoch - Subcontracting/Referenzlabor |
| **Specimen Event Tracking** | SET | Hoch - Probenlebenszyklus |
| **Anatomic Pathology Structured Report** | APSR | Hoch - CDA-basierte AP-Berichte |
| **Anatomic Pathology Workflow** | APW | Hoch - AP-spezifische Workflows (Trial Impl.) |
| **Digital Pathology Image Acquisition** | DPIA | Niedrig - Whole Slide Imaging (DICOM) |
| **Laboratory Clinical Communications** | LCC | Mittel - Auftragsaenderungen |

### 4.3 LTW Arbeitshierarchie (Kern des IHE PaLM Order-Modells)

```
ORDER GROUP (Placer Group Number) ......... optional
  |
  +-- ORDER (Placer Order Number / Filler Order Number) ... required
        |
        +-- WORK ORDER (intern im Labor) .................. required
              |
              +-- AWOS (Analytical Work Order Step) ....... Geraete-Level
              +-- SWOS (Specimen Work Order Step) ......... Probenverarbeitung
```

### 4.4 LTW Akteure und Transaktionen

| Akteur | Transaktion | HL7 v2 Message | FHIR-Aequivalent |
|--------|-------------|----------------|-------------------|
| **Order Placer** -> Order Filler | LAB-1 (Placer Order Mgt) | OML | POST ServiceRequest + Task |
| **Order Filler** -> Order Placer | LAB-2 (Filler Order Mgt) | OML | POST Task (filler-initiated) |
| **Order Filler** -> Result Tracker | LAB-3 (Order Results Mgt) | ORU | PUT Task (completed, output: DR) |
| **Order Filler** -> Automation Mgr | LAB-4 (Work Order Mgt) | OML | Interne Task-Zerlegung |
| **Automation Mgr** -> Order Filler | LAB-5 (Test Results Mgt) | OUL | Interne Ergebnisrueckmeldung |

### 4.5 Anatomic Pathology vs. Clinical Lab (wichtige Unterschiede)

| Aspekt | Klinisches Labor | Anatomische Pathologie |
|--------|-----------------|----------------------|
| Probentyp | Blut, Urin, Koerperfluessigkeiten | Gewebe, Biopsien, Zytologie |
| Probenverarbeitung | Zentrifugation, Aliquotierung | Grossing, Einbettung, Mikrotomie, Faerbung |
| Abgeleitete Proben | Aliquots | Gewebebloecke, Schnitte, Slides |
| Ergebnisse | Numerisch/kategorisch | Narrative Berichte + strukturierte Befunde |
| Bildgebung | Selten | Whole Slide Imaging (DPIA) |
| Berichtsstruktur | Tabellarisch | Synoptische Berichte (APSR) + Narrativ |
| Validation | Biomedizinische Review | Patholog:innen-Beurteilung mit Interpretation |
| Durchlaufzeit | Minuten bis Stunden | Tage bis Wochen |
| Unterauftraege | Haeufig (ILW) | Referenzlabore, Molekularpathologie |

### 4.6 Specimen Event Tracking (SET) - 15 Ereignistypen

**Entnahme:** Containers Prepared, Collection Succeeded, Collection Failed  
**Transport:** Specimen Departed, Arrived, Accepted, Rejected  
**Identifikation:** Identifier Changed  
**Verarbeitung:** Procedure Step -> Derived Specimen, Procedure Step Succeeded, Procedure Step Failed  
**Archivierung:** Archived, Retrieved from Archive, Disposed Of

### 4.7 Mapping IHE PaLM -> FHIR

| IHE PaLM Konzept | FHIR Resource | MII Patho Status |
|-------------------|---------------|-----------------|
| Order Group (Placer Group) | ServiceRequest.requisition | Vorhanden (PGN) |
| Order (Placer Order Nr) | ServiceRequest.identifier[Placer-ID] | Vorhanden |
| Order (Filler Order Nr) | ServiceRequest.identifier[Filler-ID] | Vorhanden |
| Work Order | Task (lab-intern) | **Fehlt** |
| AWOS/SWOS | Task (sub-task) | **Fehlt** (out of scope?) |
| Order Placer | ServiceRequest.requester | Vorhanden |
| Order Filler | Task.owner | **Fehlt** (kein Task-Profil) |
| Specimen | Specimen (mit .parent fuer Derivate) | Vorhanden |
| Specimen Events (SET) | Provenance / AuditEvent | **Fehlt** |
| Clinical Validation | DiagnosticReport.status (preliminary -> final) | Vorhanden |
| Results (ORU) | DiagnosticReport + Observation | Vorhanden |
| Report Facsimile | DiagnosticReport.presentedForm (PDF) | Pruefen |
| Lab Report (XD-LAB) | Bundle + Composition + DiagnosticReport | Vorhanden |
| APSR | Composition mit strukturierten Sektionen | Vorhanden (Composition-Profil) |
| Code Sets (LCSD) | ActivityDefinition / CodeSystem | Teilweise (ValueSets) |

---

## 5. Vergleich COW IG vs. MII Patho (aktueller Stand)

### 5.1 Was ihr bereits habt

| Element | MII Patho Status | COW IG |
|---------|-----------------|--------|
| ServiceRequest mit Placer/Filler ID | Ja (Slicing auf identifier) | Ja |
| Requisition / GroupIdentifier | Ja (requisition mit PGN) | Ja |
| RequestGroup | Ja (Profil vorhanden) | Ja |
| Specimen-Referenz im Auftrag | Ja | Ja |
| SupportingInfo (Anamnese, Probleme) | Ja (4 Slices) | Implizit |

### 5.2 Was fehlt / abweicht

| Element | Status | Empfehlung |
|---------|--------|------------|
| **Task-Profil** | Fehlt komplett | Coordination Task ist das Herzstueck des COW Workflows - braucht eigenes Profil |
| **RequestGroup.intent** | Setzt `order` | COW sagt referenzierte SRs muessen `intent: option` haben - pruefen ob relevant |
| **Cancellation-Request-Task** | Fehlt | Eigenes Task-Profil fuer Stornierungsanfragen |
| **Communication-Profil** | Fehlt | Fuer Rueckfragen Filler->Placer |
| **Subscription/Notification** | Fehlt | Fuer asynchrone Benachrichtigungen |
| **DiagnosticReport.basedOn -> SR** | Vorhanden? | Verknuepfung Befund -> Auftrag pruefen |
| **Specimen.condition** | Fehlt? | Fuer Probenabweisung (Szenario 2) |

---

## 6. Docker-Testplan (Vorschlag)

### 6.1 Setup
```
Docker Compose:
  - HAPI FHIR Server (Placer)     Port: 8080
  - HAPI FHIR Server (Filler)     Port: 8081
  - (Optional) Subscriptions-Broker oder Message-Queue
```

### 6.2 Testskript-Struktur
Fuer jedes Szenario ein Shell-/Python-Skript das:
1. Ressourcen per REST erstellt (POST/PUT)
2. Status-Transitionen sequentiell durchfuehrt
3. Zwischen Placer- und Filler-Server wechselt
4. Am Ende den erwarteten Zustand validiert

### 6.3 Priorisierung fuer Tests

| Prio | Szenario | Begruendung |
|------|----------|-------------|
| 1 | Einfacher Auftrag (Sz. 1) | Basis-Workflow, muss zuerst funktionieren |
| 2 | Probenabweisung (Sz. 2) | Haeufiges Realszenario in der Pathologie |
| 3 | Nachforderung (Sz. 3) | Sehr patho-spezifisch (IHC, MolPath) |
| 4 | Gruppierter Auftrag (Sz. 6) | Testet euer RequestGroup-Profil |
| 5 | Stornierung (Sz. 5) | Wichtig fuer Vollstaendigkeit |
| 6 | Ablehnung (Sz. 4) | Seltener, aber relevant |
| 7 | Info-Anforderung (Sz. 7) | Nice-to-have |

---

## 7. Empfehlungen fuer WGM-Praesentation bei O&O

1. **Task als zentrales Koordinationselement** demonstrieren - das ist der Kern des COW IG
2. **Konkretes Pathologie-Beispiel** (Szenario 1 + 3) live am Docker-Setup zeigen
3. **Alignment mit COW IG** hervorheben - MII Patho als fruehe Adoptoren
4. **Offene Fragen** mitbringen:
   - RequestGroup mit intent "option" vs "order" - was ist fuer Pathologie sinnvoller?
   - Wie integriert sich der COW-Workflow mit IHE PaLM?
   - Task-Hosting: Wer hostet den Coordination Task in der deutschen Infrastruktur?
   - Subscription vs. Messaging fuer Pathologie-Befundmitteilung?
