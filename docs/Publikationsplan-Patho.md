# Publikationsplan: MII-Kerndatensatzmodul Pathologiebefundbericht

**Ziel:** Publikation zum FHIR-IG des MII-Moduls Pathologie, Einreichung bis Ende 2026.
**Venue (entschieden):** *Scientific Data* (Nature) – Article-Typ **Data Descriptor**.
**Primärer Angle (entschieden):** **Internationale Konvergenz** – Alignment/Abgrenzung des deutschen Pathologiebefund-Modells zu IHE PaLM APSR, HL7 EU Lab Report, US Cancer Pathology Data Sharing und ICCR, mit dem Prostate Cancer Spec IG als Referenzimplementierung.

Referenz-Publikationen der Schwestermodule:
- Mikrobiologie: *Scientific Data* 10:654 (2023), doi:10.1038/s41597-023-02560-x (Data Descriptor – Vorbild für Venue/Format)
- MolGen: *JAMIA* 30(6):1179 (2023), doi:10.1093/jamia/ocad061 (Research Article – Vorbild für Prozess/Governance/Evaluation)

---

## 1. Kernbotschaft (Lead)

Der deutsche MII-Pathologiebefundbericht ist ein FHIR-Datenmodell, das den Pathologiebefund **gleichzeitig als menschenlesbares FHIR-Dokument (Composition/Bundle) und als maschinenlesbare, terminologisch kodierte Struktur (Grouper-Observations + Findings nach IHE PaLM APSR)** abbildet – und dabei bewusst mit den führenden internationalen Pathologie-IGs konvergiert. Das Paper positioniert das Modell im internationalen Feld und macht es nachnutzbar.

## 2. Warum Scientific Data / Data Descriptor

- Fokus liegt auf einer **nachnutzbaren Ressource** (FHIR-Profile, ValueSets, Beispiel-Bundles), nicht primär auf einer Methoden-Neuheit → passt zum Data-Descriptor-Format.
- Schwestermodul Mikrobiologie hat exakt diesen Weg erfolgreich genommen → etabliertes Vorbild + Reviewer-Erwartung bekannt.
- **Wichtige Konsequenz:** Scientific Data verlangt einen **hinterlegten Datensatz in einem Repository** (Figshare/Zenodo). Wir müssen das FHIR-Package + Beispiel-Bundles dort deponieren und in „Data Records" beschreiben. Nur GitHub/Simplifier reicht formal nicht.

## 3. Paper-Struktur (Scientific-Data-Schema)

1. **Abstract**
2. **Background & Summary**
   - Pathologie-Interoperabilität: fragmentierte Landschaft, narrativer vs. strukturierter Befund
   - MII-KDS-Kontext
   - Internationale Landschaft (APSR, EU Lab, US Cancer, ICCR, CAP/SDC) → Motivation für ein deutsches, konvergentes Modell
   - Kurzabriss des Beitrags
3. **Methods**
   - MII-Konsensprozess (Arbeitsgruppe, BDP/DGP-Einbindung, Public-Ballot via GitHub/Simplifier)
   - Anforderungsanalyse / Informationsmodell (ART-DECOR-Logikmodell)
   - FHIR-Profiling (Basisprofile, Abstract Observations, Grouper, Finding, Composition, Bundle, Specimen auf Biobank-Basis, ServiceRequest)
   - Terminologie-Strategie (LOINC für Abschnitts-/Berichtscodes, SNOMED CT für bodySite/Methoden/Proben, mCode-Extensions)
   - **Alignment-Analyse** zu APSR / EU Lab / US Cancer / ICCR (Konvergenz-Methodik)
4. **Data Records**
   - Beschreibung des deponierten FHIR-Package (Profile, ValueSets, Extensions, Beispiele)
   - Beispiel-Bundle (Prostatastanzbiopsie gemäß ICCR) als Referenzinstanz
   - Repository-Ablage (Zenodo/Figshare-DOI) + Simplifier + GitHub
5. **Technical Validation**
   - FHIR-Validierung (IG-Publisher/QA), Terminologie-Validierung (TX-Server)
   - Konformität der Beispiel-Instanzen
   - **Mapping/Vergleich gegen internationale Referenz** (ICCR-Datensatz und/oder APSR-Sektionen) als Konvergenz-Beleg
6. **Usage Notes**
   - Nachnutzung, Doppelnatur Dokument/Struktur, SDC-basierte Extraction als Ausblick, Lifecycle-Hinweise
7. Code Availability · Data Availability · Author Contributions · Funding · Competing Interests

## 4. Abbildungen & Tabellen

- **Abb. 1** UML-Informationsmodell des Pathologiebefunds
- **Abb. 2** Ressourcen-Architektur: Bundle → Composition → DiagnosticReport → Grouper-Observations → Findings (+ Specimen/ServiceRequest)
- **Abb. 3** Referenz-Beispiel: Prostatastanzbiopsie-Befund (ICCR-orientiert), Instanz-Graph
- **Abb. 4** Entwicklungs-Zeitstrahl v1.0.0 (2023) → v2027 (sekundär, stützt Reifung/Nachhaltigkeit)
- **Tab. 1** Profilinventar (~17 Profile: Name DE/EN, Ressource, URL)
- **Tab. 2** Terminologiebindungen (Element · FV/VS · System · Codes)
- **Tab. 3 (Kern-Tabelle)** Internationaler Vergleich: MII-Patho vs. IHE PaLM APSR vs. HL7 EU Lab vs. US Cancer vs. ICCR (Composition-Aufbau, DR-Rolle, Grouper/Sections, SDC/Extraction)
- **Tab. 4** Public-Ballot-Issues (Kategorien, GitHub/Simplifier)

## 5. Entwicklungsbogen (Faktenbasis aus dem Repo)

- Projektstart 2021-03; 551 Commits (Stand 2026-06).
- v1.0.0 (2023-09): Kernmodell (DR + APSR-Grouper + Finding + Specimen/Biobank + Composition/Bundle).
- v2025.x (2024–2025): Terminologie-Ausbau, ISiK-Basis, mCode, Slicing.
- v2026.0.0 (2026-01): bilingualer IG (DE+EN), Bundle-Profil, Hierarchie/Lifecycle, Report-Code-VS.
- v2027 (laufend): SDC/ICCR-Ausrichtung, requisition-Gruppierung (RequestGroup verworfen), Composition.event-Korrektur, COW/PaLM-Workflow-Analyse.

## 6. Governance / Konsens (Stärke ggü. Reviewern)

- MII-Prozess (Arbeitsgruppe, MII-Gremien, Steering Committee).
- **Fachgesellschaften BDP/DGP** aktiv eingebunden (u.a. G. Haroske, M. Kazmierczak).
- Laufender „Public Ballot" faktisch über GitHub-Issues + Simplifier → auswertbar wie bei MolGen/Mikrobio.

## 7. Vor Submission zu erledigen (Evaluation/Material)

- [ ] N reale/anonymisierte Musterbefunde vollständig durchmodellieren (Mengengerüst wie MolGen: ~40).
- [ ] Konvergenz-/Compliance-Mapping: ICCR-Prostata-Datensatz (und/oder APSR-Sektionen) gegen das Modell mappen; Abdeckungsquote berichten.
- [ ] FHIR-/Terminologie-Validierung dokumentieren (IG-Publisher-QA-Report als Beleg).
- [ ] FHIR-Package + Beispiel-Bundles auf Zenodo/Figshare deponieren (DOI).
- [ ] Profilinventar- und Terminologie-Tabellen automatisiert aus FSH/IG generieren.
- [ ] Ballot-Issues aus GitHub kategorisiert auswerten.

## 8. Autorschaft (Vorschlag, abzustimmen)

Kern: T. Hölter (Lead), G. Haroske, M. Kazmierczak (BDP), T. Debertshäuser, T. Rüdiger, J. Saß, A. Bartschke, S. Thun; ggf. DGP-Vertretung. Reihenfolge/Contributions früh klären.

## 9. Zeitplan bis Ende 2026 (grob)

- **Jul–Aug 2026:** Musterbefund-Set + ICCR-Mapping; Repository-Deposit vorbereiten; Tabellen generieren.
- **Sep 2026:** Rohfassung Methods + Data Records + Technical Validation; Abbildungen.
- **Okt 2026:** Background & Summary + Usage Notes; internes Review (Koautoren, BDP/DGP).
- **Nov 2026:** Überarbeitung, Zenodo-DOI finalisieren, Cover Letter.
- **Dez 2026:** Einreichung bei Scientific Data.

## 10. Offene Entscheidungen

- Referenz-Beispiel: nur Prostata (ICCR) oder zweite Entität (z.B. Mamma – passt zu #259 BodyStructure)?
- Repository: Zenodo vs. Figshare (Mikrobio nutzte Figshare).
- Umfang Evaluation: reicht ICCR-Mapping, oder zusätzlich ISO-artiger Compliance-Check?
- Verhältnis zum Prostate Cancer Spec IG: als Referenzimplementierung zitieren/koautorschaft?
