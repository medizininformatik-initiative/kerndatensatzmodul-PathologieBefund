
# Release Notes
## 2027.0.0
    - `documentation` Verweise auf den [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html) als Referenzbeispiel für Narrative auf den Seiten Anwendungsfall, Section Grouper, Finding, DiagnosticReport und Composition hinzugefügt
    - `documentation` Verweise auf originalText und narrativeLink Extensions aus der Section Grouper Beschreibung entfernt
    - `documentation` Text "ein Grouper pro Präparat" aus allen Grouper-Profilseiten entfernt (#249)
    - `documentation` Text zu Zusammenhang zwischen Untersuchungsauftrag, Probe und Fall ergänzt (#250)
    - `documentation` Fehlende Suchparameter (value-concept, value-quantity, value-date) auf der Finding-Profilseite ergänzt (#248)
    - `documentation` Suchparameter value-string aus allen Grouper-Profilseiten entfernt (#248)
    - `feature` Neues ValueSet MII_VS_Patho_Report_Code_LOINC fuer DiagnosticReport.code mit LOINC-Codes fuer verschiedene Berichtstypen (Histopathologie, Zytologie, Molekularpathologie, Obduktion) (#166)
    - `changed` DiagnosticReport.code.coding[pathology-report] von fixem Code (LOINC#60568-3) auf extensible Binding an MII_VS_Patho_Report_Code_LOINC geaendert (#166)
    - `documentation` Untersuchungsauftrag: requisition als Auftragsgruppe/Fall (#253)
    - `documentation` Specimen: Referenzierungslogik der Proben ergänzt (#255)
    - `documentation` Grouper: derivedFrom-Hinweis ergänzt (#257)
    - `changed` Composition.event korrigiert (#258)
    - `documentation` Szenarien: SDC-Passus präzisiert (#256)

## 2026.0.1
    - Empfehlungen zum Lebenszyklus des Dokumentes "Pathologiebefund" auf der Seite Hierarchie- und Workflow-Aspekte aufgenommen
## 2026.0.0-ballot
    - Grouperkardinalität auf ..1 beschnitten. Somit ist nur noch jeweils ein Grouper innerhalb eines Befundberichtes zu verwenden
        - Entsprechende Veränderung innerhalb der Grouperprofile und des DiagnosticReports
    - Profil PathoBundle hinzugefügt
    - VS MII_VS_Patho_Service_Request_Code umbenannt, um LOINC Codes erweitert und das Binding 
    von prefered auf extensible geändert
    - Composition.type und Composition.category - Eigene Slices auf Snomed CT Codes umgestellt und passend umgenannt
        - MII_VS_Patho_Composition_Type_KDL für den KDL-Slice hinzugefügt
    - Aktualisierung des IG
        - Bezeichnungen der Profilseiten im IG wurden angepasst
        - neue Seite für Patho-Bundle
        - neue Seite für Hierachien
        - Englische Übersetzung des IG 
    - Aktualisierung der Beispieldaten (u.a. Specimen)
    - Zwei falsche Codes (substances) aus dem VS MII_VS_Patho_Container_Type_SNOMED_CT entfernt
    - Update MII Dependencies
    - Update externe Dependencies (z.B. ISiK)
    - Specimen.identifier Slices (PLAC & FILL) hinzugefügt und .accessionIdentifier Kardinalität von 1.. auf 0.. geändert
    - PathoFinding.value[x] um Range erweitert