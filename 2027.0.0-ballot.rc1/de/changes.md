# Changelog - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Versionierung**](version-history.md)
* **Changelog**

## Changelog

### 2027.0.0-ballot.rc1

* `documentation` Verweise auf den [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html) als Referenzbeispiel ergänzt
* `documentation` Verweise auf originalText/narrativeLink aus der Section-Grouper-Beschreibung entfernt
* `documentation` Text "ein Grouper pro Präparat" aus allen Grouper-Profilseiten entfernt (#249)
* `documentation` Zusammenhang Untersuchungsauftrag/Probe/Fall ergänzt (#250)
* `documentation` Suchparameter auf Finding/Grouper angepasst (#248)
* `feature` DiagnosticReport.code: neues ValueSet MII_VS_Patho_Report_Code_LOINC, extensible Binding (#166)
* `documentation` Untersuchungsauftrag: requisition als Auftragsgruppe/Fall (#253)
* `documentation` Specimen: Referenzierungslogik der Proben ergänzt (#255)
* `documentation` Grouper: derivedFrom-Hinweis ergänzt (#257)
* `changed` Composition.event korrigiert (#258)
* `documentation` Szenarien: SDC-Passus präzisiert (#256)
* `documentation` Beschreibung Modul ergänzt: Gestaltungsentscheidungen, synoptisch strukturierte Berichte (#261)
* `documentation` Lebenszyklus-Tabellen auf aktualisierte Berichtsform-Matrix gebracht (#247)
* `feature` Specimen.collection.bodySite: R5-BodyStructure-Extension (mCode entfällt) inkl. Prostatektomie- und Mamma-Beispiel (#259)
* `feature` EU-Lab-Angleichung: DiagnosticReport↔Composition-Extensions und optionale Composition-Section-Slices (#262, #263)
* `fix` Korrekturen: CapabilityStatement-URL, fehlende Substances in Specimen-Beispielen
* `changed` IG wird ab dieser Version mit dem HL7 IG Publisher erstellt (zuvor Simplifier)
* `changed` CapabilityStatement: RequestGroup-Ressource entfernt (Profil MII_PR_Patho_Request_Group existiert nicht mehr)

### 2026.0.1

* Empfehlungen zum Lebenszyklus des Dokumentes "Pathologiebefund" auf der Seite Hierarchie- und Workflow-Aspekte aufgenommen

### 2026.0.0-ballot

* Grouperkardinalität auf ..1 beschnitten. Somit ist nur noch jeweils ein Grouper innerhalb eines Befundberichtes zu verwenden 
* Entsprechende Veränderung innerhalb der Grouperprofile und des DiagnosticReports
 
* Profil PathoBundle hinzugefügt
* VS MII_VS_Patho_Service_Request_Code umbenannt, um LOINC Codes erweitert und das Binding von preferred auf extensible geändert
* Composition.type und Composition.category - Eigene Slices auf SNOMED CT Codes umgestellt und passend umbenannt 
* MII_VS_Patho_Composition_Type_KDL für den KDL-Slice hinzugefügt
 
* Aktualisierung des IG 
* Bezeichnungen der Profilseiten im IG wurden angepasst
* neue Seite für Patho-Bundle
* neue Seite für Hierarchien
* Englische Übersetzung des IG
 
* Aktualisierung der Beispieldaten (u.a. Specimen)
* Zwei falsche Codes (substances) aus dem VS MII_VS_Patho_Container_Type_SNOMED_CT entfernt
* Update MII Dependencies
* Update externe Dependencies (z.B. ISiK)
* Specimen.identifier Slices (PLAC & FILL) hinzugefügt und .accessionIdentifier Kardinalität von 1.. auf 0.. geändert
* PathoFinding.value[x] um Range erweitert

