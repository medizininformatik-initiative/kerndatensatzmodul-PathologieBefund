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

#### Part (Klinisch entnommene Probe)

| Element                      | Anforderung                                             | Stärke der Anforderung |
|------------------------------|---------------------------------------------------------|-------------------------|
| Specimen.type                | descendants-of 123038009 Specimen (specimen)            | SOLLTE                  |
| Specimen.parent              | 0..0                                                    | SOLLTE NICHT            |
| Specimen.collection.method   | descendants-of 118292001 Entfernung (procedure)         | SOLLTE                  |
| Specimen.collection.bodySite | descendants-of 123037004 Körperstruktur (body structure)| SOLLTE                  |
| Specimen.processing          | 0..0                                                    | SOLLTE NICHT            |

---

#### Block (Ergebnisse aus der makroskopischen Schnittführung)

| Element                                           | Anforderung                                                                    | Stärke der Anforderung |
|---------------------------------------------------|--------------------------------------------------------------------------------|-------------------------|
| Specimen.type                                     | descendants-of 1201985008 Gewebeblockpräparat (specimen)                       | SOLLTE                  |
| Specimen.parent                                   | Part                                                                           | SOLLTE                  |
| Specimen.collection.method                        | descendants-of 168126000 Makroskopie der Probe (procedure)                     | SOLLTE                  |
| Specimen.collection.bodySite                      | descendants-of 123037004 Körperstruktur (body structure)                        | SOLLTE                  |
| Specimen.collection.bodySite.extension:locationQualifier | Insbesondere, wenn mehrere Blöcke aus einem Teil stammen                       | SOLLTE                  |
| Specimen.processing                               | 787376009 Aufbereitung von formalinfixiertem paraffineingebettetem Gewebepräparat (procedure) | SOLLTE                  |

---

#### Slide (Schnitt und Färbung)

| Element                                           | Anforderung                                                     | Stärke der Anforderung |
|---------------------------------------------------|-----------------------------------------------------------------|-------------------------|
| Specimen.type                                     | descendants-of 430856003 Gewebeschnitt (specimen)               | SOLLTE                  |
| Specimen.parent                                   | Block                                                           | SOLLTE                  |
| Specimen.collection.method                        | descendants-of 13283003 Technik der Gewebeaufbereitung (procedure) | SOLLTE               |
| Specimen.collection.bodySite                      | descendants-of 123037004 Körperstruktur (body structure)         | SOLLTE                  |
| Specimen.collection.bodySite.extension:locationQualifier | Siehe Block                                                     | SOLLTE                  |
| Specimen.processing                               | descendants-of 127790008 Färbemethode (procedure)               | SOLLTE                  |
