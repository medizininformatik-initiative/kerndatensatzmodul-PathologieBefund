# Detaillierte QA Error-Analyse und Priorisierung

## Executive Summary
**87 Errors analysiert** | **Priorität:** 31 KRITISCH | 34 HOCH | 22 MITTEL

---

## 🚨 KRITISCHE ERRORS (Priorität 1) - 31 Errors

### A. Build-Breaking Configuration Errors (2 Errors)

#### A1. Suppressed Messages File Missing
- **Error:** `ImplementationGuide.definition.parameter[23].value: Supressed messages file not found`
- **Impact:** 🔴 Build-breaking - Unterbricht IG Publisher Workflow
- **Ursache:** Parameter verweist auf nicht-existente Datei
- **Lösung:** Suppressed messages file erstellen oder Parameter entfernen
- **Priorität:** ⭐ KRITISCH - Sofort beheben

#### A2. FHIR Version Mismatch  
- **Error:** `This IG is for FHIR version 4.0.1, while package 'hl7.fhir.uv.subscriptions-backport.r4#1.1.0' is for FHIR version 4.0.0`
- **Impact:** 🔴 Dependency conflict - Potentielle Runtime-Fehler
- **Ursache:** Inkompatible Package-Versionen in sushi-config.yaml
- **Lösung:** Package auf FHIR 4.0.1 kompatible Version aktualisieren
- **Priorität:** ⭐ KRITISCH - Dependency-Problem lösen

### B. CapabilityStatement URL Errors (3 Errors)

#### B1. Canonical URL Mismatch
- **Error:** `Canonical URL (...mii-cps-patho-capability-statement) does not match URL (...metadata)`
- **Impact:** 🔴 Resource discovery failure - FHIR Clients können Resource nicht finden
- **Ursache:** Inkonsistente URL-Definition zwischen canonical und tatsächlicher URL
- **Lösung:** URLs in CapabilityStatement Definition alignen
- **Priorität:** ⭐ KRITISCH - Behindert FHIR API Funktionalität

#### B2. Resource ID/URL Mismatch
- **Error:** `Resource id/url mismatch: mii-cps-patho-capability-statement/https://...metadata`
- **Impact:** 🔴 FHIR Validation failure
- **Ursache:** ID stimmt nicht mit URL überein
- **Lösung:** Entweder ID oder URL korrigieren für Konsistenz
- **Priorität:** ⭐ KRITISCH - FHIR Standard violation

#### B3. URL Mismatch (Duplicate)
- **Error:** `URL Mismatch https://...mii-cps-patho-capability-statement vs https://...metadata`
- **Impact:** 🔴 Systematischer URL-Fehler
- **Ursache:** Gleiche Ursache wie B1
- **Lösung:** Zusammen mit B1 lösen
- **Priorität:** ⭐ KRITISCH - Teil der URL-Problematik

### C. ServiceRequest Slicing Errors (6 Errors)

#### C1-C6. Multiple Slice Matches
- **Errors:** 6x `Element stimmt mit mehr als einem Slice überein - codedCondition vs [anamnesis|activeProblems|observations]`
- **File:** `ServiceRequest/mii-exa-patho-request`
- **Impact:** 🔴 Profile validation failure - ServiceRequest unusable
- **Ursache:** Mehrdeutige Slicing-Diskriminatoren in ServiceRequest Profile
- **Interpretation:** 
  - Slices überlappen sich in ihren Matching-Kriterien
  - `supportingInfo[0]` und `supportingInfo[1]` können nicht eindeutig zugeordnet werden
  - Profile-Design Problem, nicht Instance-Problem
- **Lösung:** Slicing-Diskriminatoren im Profile schärfen
- **Priorität:** ⭐ KRITISCH - ServiceRequest Profile unbrauchbar

### D. ServiceRequest Resource Type Errors (4 Errors)

#### D1-D2. Invalid Resource Target Types for supportingInfo[0]
- **Error 1:** `Es konnte kein passendes Profil für List/mii-exa-patho-history-of-present-illness gefunden werden`
- **Error 2:** `Ungültiger Ressourcen-Zieltyp. Gefunden List, aber Condition erwartet`
- **Impact:** 🔴 Instance validation failure
- **Ursache:** ServiceRequest Profile erlaubt nur Condition, aber Instance referenziert List
- **Lösung:** Entweder Profile erweitern (List erlauben) oder Instance ändern (Condition verwenden)
- **Priorität:** ⭐ KRITISCH - Struktureller Design-Konflikt

#### D3-D4. Invalid Resource Target Types for supportingInfo[1]  
- **Error 3:** `Es konnte kein passendes Profil für List/mii-exa-patho-active-problems-list gefunden werden`
- **Error 4:** `Ungültiger Ressourcen-Zieltyp. Gefunden List, aber Condition erwartet`
- **Impact:** 🔴 Instance validation failure 
- **Ursache:** Gleiche Ursache wie D1-D2
- **Lösung:** Konsistente Lösung wie D1-D2
- **Priorität:** ⭐ KRITISCH - Struktureller Design-Konflikt

### E. Broken Links (2 Errors)

#### E1-E2. Unresolvable supportingInfo Extension Links
- **Error:** `The link 'StructureDefinition-workflow-supportingInfo.html' cannot be resolved`
- **File:** `StructureDefinition-mii-pr-patho-report-definitions.html` (2 occurrences)
- **Impact:** 🔴 Broken documentation - Users can't access extension details
- **Ursache:** Link verweist auf nicht-existente HTML-Seite
- **Lösung:** Korrekte Extension URL verwenden oder Extension lokal definieren
- **Priorität:** ⭐ KRITISCH - Dokumentation unbrauchbar

### F. Composition Slicing Error (1 Error)

#### F1. Type Slicing Evaluation Failure
- **Error:** `Slicing kann nicht ausgewertet werden: Diskriminator hat keinen fixed Value, kein Binding oder existence assertions`
- **File:** `Composition/mii-exa-patho-composition`
- **Impact:** 🔴 Profile validation failure für Composition
- **Ursache:** Slicing-Diskriminator für `type.coding:sct` nicht eindeutig definiert
- **Lösung:** Diskriminator mit fixed value, required binding oder existence constraint definieren
- **Priorität:** ⭐ KRITISCH - Composition Profile defekt

### G. SNOMED CT ServiceRequest Errors (3 Errors)

#### G1. ServiceRequest Category SNOMED Error
- **Error:** `ServiceRequest.category[0]: The codesystem http://snomed.info/sct does not support supplements`
- **Impact:** 🔴 Code validation failure - ServiceRequest kategorisierung fehlgeschlagen
- **Ursache:** SNOMED CT unterstützt MII Supplement nicht
- **Priorität:** ⭐ KRITISCH - ServiceRequest functionality compromised

#### G2. ServiceRequest Code SNOMED Error  
- **Error:** `ServiceRequest.code: The codesystem http://snomed.info/sct does not support supplements`
- **Impact:** 🔴 Code validation failure - ServiceRequest type unvalid
- **Ursache:** Gleiche SNOMED Supplement Problematik
- **Priorität:** ⭐ KRITISCH - Kern-ServiceRequest functionality

### H. Critical Display Name Errors (3 Errors)

#### H1. List Problem Display Name
- **Error:** `Wrong Display Name 'Problem list - Reported' for LOINC#11450-4. Valid: 'Problemliste - Berichtet'`
- **File:** `List/mii-exa-patho-active-problems-list`
- **Impact:** 🔴 User interface confusion - Falsche deutsche Bezeichnung
- **Lösung:** Display Name auf deutsche Version korrigieren
- **Priorität:** ⭐ KRITISCH - User Experience

#### H2. Observation Biopsy Site Display Name
- **Error:** `Wrong Display Name 'Biopsy site Patient' for LOINC#94738-2. Default: 'Biopsy site [Anatomy]'`
- **File:** `Observation/mii-exa-patho-biopsy-site-a`
- **Impact:** 🔴 Misleading terminology - Clinical confusion possible
- **Lösung:** Korrekten Display Namen verwenden
- **Priorität:** ⭐ KRITISCH - Clinical safety

#### H3. Diagnostic Conclusion Display Name
- **Error:** `Wrong Display Name 'Adenokarzinom o.n.A.' for ICD-O-3#8140/3. Valid: 'Adenocarcinoma, NOS'`
- **File:** `Observation/mii-exa-patho-diagnostic-conclusion-1`
- **Impact:** 🔴 Diagnostic terminology mismatch - Clinical safety issue
- **Lösung:** Standardisierten Display Namen verwenden
- **Priorität:** ⭐ KRITISCH - Clinical terminology accuracy

---

## 🟠 HOHE PRIORITÄT ERRORS (Priorität 2) - 34 Errors

### I. SNOMED CT Supplement Errors (31 Errors)

**Gemeinsame Charakteristika:**
- **Root Cause:** `The codesystem http://snomed.info/sct does not support supplements: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/CodeSystem/mii-cs-diagnose-lebensphase-supplement-snomed|2025.0.1`
- **Impact:** 🟠 Code validation failures - Terminology not processable
- **Interpretation:** Systematisches Problem mit MII SNOMED Supplement

#### I1. Condition Errors (2 Errors)
- `Condition/mii-exa-patho-problem-list-item-1: Condition.code`
- `Condition/mii-exa-patho-problem-list-item-2: Condition.code`
- **Priorität:** 🟠 HOCH - Problem list functionality compromised

#### I2. DiagnosticReport Error (1 Error)
- `DiagnosticReport/mii-exa-patho-report: DiagnosticReport.conclusionCode[0]`
- **Priorität:** 🟠 HOCH - Main report conclusion invalid

#### I3. Observation Errors (4 Errors)
- `Observation/mii-exa-patho-biopsy-site-a: value.ofType(CodeableConcept)`
- `Observation/mii-exa-patho-diagnostic-conclusion-2: value.ofType(CodeableConcept)`
- `Observation/mii-exa-patho-gleason-pattern-a: value.ofType(CodeableConcept)`
- `Observation/mii-exa-patho-histologic-type-a: code AND value`
- **Priorität:** 🟠 HOCH - Core pathology observations invalid

#### I4. Practitioner Errors (3 Errors)
- `Practitioner/2346545: qualification[0].code`
- `Practitioner/34456: qualification[0].code`  
- `Practitioner/765879: qualification[0].code`
- **Priorität:** 🟠 HOCH - Professional qualifications unvalidated

#### I5. Specimen Errors (21 Errors)
**4 Specimen-Instanzen × 5-6 Errors each:**

**Specimen/mii-exa-patho-prostate-biopsy-block (6 Errors):**
- `type`, `collection.method`, `collection.bodySite`, `processing[0].procedure`, `container[0].type`
- Plus: `bodySite` not in required ValueSet

**Specimen/mii-exa-patho-prostate-biopsy-schnitt-HE (6 Errors):**
- Gleiche Pattern wie oben

**Specimen/mii-exa-patho-prostate-biopsy-schnitt-p63 (6 Errors):**
- Gleiche Pattern wie oben  

**Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample (6 Errors):**
- Zusätzlich: `extension[0].extension[0].value.ofType(CodeableConcept)`
- Gleiche 5 Standard-Errors

**Priorität:** 🟠 HOCH - Specimen processing chain invalid

---

## 🟡 MITTLERE PRIORITÄT ERRORS (Priorität 3) - 22 Errors

### J. ValueSet Validation Errors (6 Errors)

#### J1-J3. Container Type ValueSet Errors (3 Warnings treated as Errors)
- **Pattern:** `Konnte nicht bestätigen, dass Codes im ValueSet https://...mii-vs-patho-container-type-snomed-ct enthalten sind`
- **Files:** 3 Specimen instances
- **Impact:** 🟡 ValueSet validation uncertainty
- **Ursache:** Server-side validation error
- **Priorität:** 🟡 MITTEL - Validation infrastructure issue

#### J2-J4. BodySite ValueSet Errors (3 Errors) 
- **Pattern:** `Die angegebene Codierung ist nicht im ValueSet 'MII VS Biobank BodyStructures SCT' enthalten`
- **Files:** 3 Specimen instances  
- **Impact:** 🟡 Required ValueSet violation
- **Ursache:** Code nicht in vorgeschriebenem ValueSet
- **Priorität:** 🟡 MITTEL - Content curation needed

---

## 📊 Zusammenfassung der Prioritäten

| Priorität | Count | Impact | Lösungsaufwand |
|-----------|-------|---------|----------------|
| ⭐ KRITISCH | 31 | Build/Functionality breaking | Sofort |
| 🟠 HOCH | 34 | Feature impairment | 1-2 Sprints |  
| 🟡 MITTEL | 22 | Quality/Validation issues | Nächste Releases |

## 🎯 Empfohlene Lösungsreihenfolge

### Sofort (Diese Woche)
1. **Suppressed messages file** erstellen/konfigurieren
2. **FHIR version mismatch** in dependencies lösen
3. **CapabilityStatement URLs** alignen
4. **ServiceRequest slicing** im Profile korrigieren

### Sprint 1 (2 Wochen)  
5. **ServiceRequest supportingInfo** Type-Konflikte lösen
6. **Composition slicing** Diskriminatoren definieren
7. **Kritische Display Names** korrigieren
8. **Extension links** reparieren

### Sprint 2 (4 Wochen)
9. **SNOMED CT Supplement** Strategie entwickeln und implementieren
10. **ValueSet validations** Content-Review durchführen

### Kontinuierlich
11. **Validation pipeline** etablieren für frühe Error-Detection
12. **Dependency monitoring** für Version-Konflikte

---

*Analyse basiert auf qa.txt vom 28. November 2025*