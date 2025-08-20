## {{page-title}}

### Verwendung der Grouperprofile
Die Verwendung der Grouper wurde im Update 2026 so umgestellt, dass  nur noch jeweils ein Grouper pro Befundbericht(DiagnosticReport) referenziert werden darf. Um diese Umstellung zu visualisieren wurden zwei Relationship-Diagramme zum Stand vor und nach dem Update angefertigt:

Vorheriger Stand (bis 2025):
{{render:implementation-guides-ImplementationGuide-Common-images-GrouperVorher}}


Aktueller Stand (ab 2026):
{{render:implementation-guides-ImplementationGuide-Common-images-GrouperNachher}}

Mit der Umstellung gibt es keine Referenz(en) auf Specimen innerhalb der Grouper, somit ist die Hierchachie bzw. die Referenzierung der Specimen untereinander essentiell:

### Specimen Hierarchie
Im folgenden wird die Hierarchie der Specimen anhand eines Relationship-Diagramms und eines tabellarischen Beispiels näher beschrieben:

{{render:implementation-guides-ImplementationGuide-Common-images-Specimen}}

Das Rootelement(Sample) ist ein klinisch gewonnenes Probenmaterial von einem Patienten, entspricht im Pathologie-Workflow einem Part. Tochterelemente sind Blöcke und Schnitte bzw. ein zytologisches Präparat. Die Kinderproben (Blöcke und Schnitte) sollten stets und mindestens ihre direkte Elternprobe über das Element Specimen.parent referenzieren.

Gemäß dem Domänen-Analyse Modell müssen die verschiedenen Bearbeitungslevel von Specimen getrennt spezifiziert werden:

Part (Klinisch gewonnene Probe):
|Element|Anforderung|Anzahl von Konzepten|Stärke der Anforderung*|
|-
|Specimen.type|descendants-of 123038009 Specimen (specimen)| SOLLTE |
|Specimen.parent|0..0| SOLLTE NICHT |
|Specimen.collection.method| descendants-of 118292001 Removal (procedure)| SOLLTE |
|Specimen.collection.bodySite| descendants-of 123037004 Body structure (body structure)| SOLLTE |
|Specimen.processing|0..0| SOLLTE NICHT |

Block (resultiert aus makroskopischem Zuschnitt):
|Element|Anforderung|Anzahl von Konzepten|Stärke der Anforderung*|
|-
|Specimen.type| descendants-of 1201985008 Tissue block specimen (specimen)| SOLLTE |
|Specimen.parent|Part| SOLLTE |
|Specimen.collection.method|descendants-of 168126000 Sample macroscopy (procedure)| SOLLTE |
|Specimen.collection.bodySite| descendants-of 123037004 Body structure (body structure) | SOLLTE |
|Specimen.collection.bodySite.extension:locationQualifier|Insbesondere falls mehrere Blöcke aus einem Part entstehen| SOLLTE |
|Specimen.processing| 787376009 Preparation of formalin fixed paraffin embedded tissue specimen (procedure)| SOLLTE |


Slide (Schneiden und Färben):
|Element|Anforderung|Anzahl von Konzepten|Stärke der Anforderung*
|-
|Specimen.type|descendants-of 430856003 Tissue section (specimen)| SOLLTE |
|Specimen.parent|Block| SOLLTE |
|Specimen.collection.method|descendants-of 13283003 Tissue processing technique (procedure)| SOLLTE |
|Specimen.collection.bodySite| descendants-of 123037004 Body structure (body structure)| SOLLTE |
|Specimen.collection.bodySite.extension:locationQualifier|Siehe Block| SOLLTE |
|Specimen.processing| descendants-of 127790008 Staining method (procedure)| SOLLTE |
