## {{page-title}}

### Verwendung der Grouperprofile
Die Verwendung der Grouper wurde im Update 2026 so umgestellt, dass  nur noch jeweils ein Grouper pro Befundbericht(DiagnosticReport) referenziert werden darf. Um diese Umstellung der Verwendung zu visuallisieren wurden zwei Relationship-Diagramme zum Stand vor und nach dem Update angefertigt:

Vorheriger Stand (bis 2025):
{{render:implementation-guides-ImplementationGuide-Common-images-GrouperVorher}}

Aktueller Stand (ab 2026):
{{render:implementation-guides-ImplementationGuide-Common-images-GrouperNachher}}


### Specimen Hierarchie
Im folgenden wird die Hierarchie der Specimen anhand einiger Beispiele näher beschrieben:

{{render:implementation-guides-ImplementationGuide-Common-images-Specimen}}

Das Rootelement(Sample) ist jeweils ein klinisch gewonnenes Probenmaterial von einem Patienten, entspricht im Pathologie-Workflow einem Part. Tochterelemente sind Block und Schnitt bzw ein zytologisches Präparat.

Gemäß dem Domänen-Analyse.Modell müssen die verschiedenen Bearbeitungslevel von Specimen getrennt spezifiziert werden:

Part (Klinisch gewonnene Probe):
|Element|Constraint???|
|-
|Specimen.type|123038009 Specimen (specimen)|
|Specimen.parent|0..0|
|Specimen.collection.method|118292001 Removal (procedure)|
|Specimen.collection.bodySite|123037004 Body structure (body structure)|
|Specimen.processing|0..0|

Block (resultiert aus makroskopischem Zuschnitt):
|Element|Constraint|
|-
|Specimen.type| 1201985008 Tissue block specimen (specimen)|
|Specimen.parent|Part|
|Specimen.collection.method|168126000 Sample macroscopy (procedure)|
|Specimen.collection.bodySite|123037004 Body structure (body structure) +|
|Specimen.collection.bodySite.extension:locationQualifier|Insbesondere falls mehrere Blöcke aus einem Part entstehen|
|Specimen.processing|787376009 Preparation of formalin fixed paraffin embedded tissue specimen (procedure)|


Slide (Schneiden und Färben):
|Element|Constraint|
|-
|Specimen.type|430856003 Tissue section (specimen)|
|Specimen.parent|13283003 Tissue processing technique (procedure)|
|Specimen.collection.method|13283003 Tissue processing technique (procedure)|
|Specimen.collection.bodySite|123037004 Body structure (body structure)|
|Specimen.collection.bodySite.extension:locationQualifier|Siehe Block|
|Specimen.processing|127790008 Staining method (procedure)|
