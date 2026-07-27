### 2027.0.0

- `documentation` Verweise auf den [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html) als Referenzbeispiel für Narrative auf den Seiten Anwendungsfall, Section Grouper, Finding, DiagnosticReport und Composition hinzugefügt
- `documentation` Verweise auf originalText und narrativeLink Extensions aus der Section Grouper Beschreibung entfernt
- `documentation` Text "ein Grouper pro Präparat" aus allen Grouper-Profilseiten entfernt (#249)
- `documentation` Text zu Zusammenhang zwischen Untersuchungsauftrag, Probe und Fall ergänzt (#250)
- `documentation` Fehlende Suchparameter (value-concept, value-quantity, value-date) auf der Finding-Profilseite ergänzt (#248)
- `documentation` Suchparameter value-string aus allen Grouper-Profilseiten entfernt (#248)
- `feature` Neues ValueSet MII_VS_Patho_Report_Code_LOINC für DiagnosticReport.code mit LOINC-Codes für verschiedene Berichtstypen (Histopathologie, Zytologie, Molekularpathologie, Obduktion) (#166)
- `changed` DiagnosticReport.code.coding[pathology-report] von fixem Code (LOINC#60568-3) auf extensible Binding an MII_VS_Patho_Report_Code_LOINC geändert (#166)
- `documentation` Untersuchungsauftrag: requisition als Auftragsgruppe/Fall (#253)
- `documentation` Specimen: Referenzierungslogik der Proben ergänzt (#255)
- `documentation` Grouper: derivedFrom-Hinweis ergänzt (#257)
- `changed` Composition.event korrigiert (#258)
- `documentation` Szenarien: SDC-Passus präzisiert (#256)
- `feature` Specimen.collection.bodySite: R5-Cross-Version-Extension für Reference(BodyStructure) ergänzt (#259)
- `feature` Neues Beispiel Radikalprostatektomie-Präparat mit BodyStructure; die detaillierte Lokalisation nutzt die R5-includedStructure-Struktur (structure/laterality/bodyLandmarkOrientation mit Landmark Apex, posterior, Abstand) gemäß ICCR/PI-RADS-Lokalisationskonvention (#259)
- `feature` Neues Beispiel BET-Exzisionspräparat der Mamma (Vorlage G. Haroske) mit BodyStructure (morphology + Landmark Mamille/Uhrzeit) und Specimen.feature für Präparat-Markierungen (Draht + zwei Fäden), umgesetzt über R5-Cross-Version-Extensions (#259)
- `feature` DiagnosticReport und Composition um optionale Extensions zur gegenseitigen Verknüpfung ergänzt (Angleichung an HL7 EU Lab Report): DiagnosticReport.composition (R5-Cross-Version) und Composition→DiagnosticReport (HL7-EU-Extension). Neue Abhängigkeit hl7.fhir.eu.extensions.r4
- `feature` Composition um optionale Section-Slices für die Beobachtungsberichtabschnitte (Makroskopie, Mikroskopie, Intraoperativ, Diagnostische Schlussfolgerung, Zusätzliche Beobachtung) erweitert; jede Section referenziert denselben Grouper wie DiagnosticReport.result (dokumentenzentrische Gliederung analog HL7 EU Lab / US Pathology Composition, kein Breaking Change)
- `changed` mCode-Extensions locationQualifier und lateralityQualifier aus Specimen.collection.bodySite entfernt; die Lokalisation wird über BodyStructure abgebildet. Damit entfällt die Abhängigkeit zu hl7.fhir.us.mcode
- `changed` CapabilityStatement: Canonical URL an die Resource-ID angeglichen (bisher .../CapabilityStatement/metadata)
- `fix` Specimen-Beispiele: fehlende Substances (Paraffin, Kanadabalsam) ergänzt, p63-Referenz korrigiert
- `changed` Der Implementation Guide wird ab dieser Version mit dem HL7 IG Publisher erstellt (zuvor Simplifier)

### 2026.0.1

- Empfehlungen zum Lebenszyklus des Dokumentes "Pathologiebefund" auf der Seite Hierarchie- und Workflow-Aspekte aufgenommen

### 2026.0.0-ballot

- Grouperkardinalität auf ..1 beschnitten. Somit ist nur noch jeweils ein Grouper innerhalb eines Befundberichtes zu verwenden
  - Entsprechende Veränderung innerhalb der Grouperprofile und des DiagnosticReports
- Profil PathoBundle hinzugefügt
- VS MII_VS_Patho_Service_Request_Code umbenannt, um LOINC Codes erweitert und das Binding von preferred auf extensible geändert
- Composition.type und Composition.category - Eigene Slices auf SNOMED CT Codes umgestellt und passend umbenannt
  - MII_VS_Patho_Composition_Type_KDL für den KDL-Slice hinzugefügt
- Aktualisierung des IG
  - Bezeichnungen der Profilseiten im IG wurden angepasst
  - neue Seite für Patho-Bundle
  - neue Seite für Hierarchien
  - Englische Übersetzung des IG
- Aktualisierung der Beispieldaten (u.a. Specimen)
- Zwei falsche Codes (substances) aus dem VS MII_VS_Patho_Container_Type_SNOMED_CT entfernt
- Update MII Dependencies
- Update externe Dependencies (z.B. ISiK)
- Specimen.identifier Slices (PLAC & FILL) hinzugefügt und .accessionIdentifier Kardinalität von 1.. auf 0.. geändert
- PathoFinding.value[x] um Range erweitert
