### Verwendung der Grouperprofile
Die Verwendung der Grouper wurde im Update 2026 so umgestellt, dass  nur noch jeweils ein Grouper pro Befundbericht(DiagnosticReport) referenziert werden darf. Um diese Umstellung zu visualisieren wurden zwei Relationship-Diagramme zum Stand vor und nach dem Update angefertigt:

Vorheriger Stand (bis 2025):

<img src="GrouperVorher.png" alt="GrouperVorher" style="max-width:100%; height:auto;"/>


Aktueller Stand (ab 2026):

<img src="GrouperNachher.png" alt="GrouperNachher" style="max-width:100%; height:auto;"/>

Mit der Umstellung gibt es keine Referenz(en) auf Specimen innerhalb der Grouper, somit ist die Hierchachie bzw. die Referenzierung der Specimen untereinander essentiell:

### Specimen Hierarchie
Im folgenden wird die Hierarchie der Specimen anhand eines Relationship-Diagramms und eines tabellarischen Beispiels näher beschrieben:

<img src="Specimen.png" alt="Specimen" style="max-width:100%; height:auto;"/>

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
| Specimen.collection.bodySite.extension:bodyStructure | Verweis auf eine BodyStructure-Ressource, insbesondere wenn mehrere Blöcke aus einem Teil stammen | SOLLTE                  |
| Specimen.processing                               | 787376009 Aufbereitung von formalinfixiertem paraffineingebettetem Gewebepräparat (procedure) | SOLLTE                  |

---

#### Slide (Schnitt und Färbung)

| Element                                           | Anforderung                                                     | Stärke der Anforderung |
|---------------------------------------------------|-----------------------------------------------------------------|-------------------------|
| Specimen.type                                     | descendants-of 430856003 Gewebeschnitt (specimen)               | SOLLTE                  |
| Specimen.parent                                   | Block                                                           | SOLLTE                  |
| Specimen.collection.method                        | descendants-of 13283003 Technik der Gewebeaufbereitung (procedure) | SOLLTE               |
| Specimen.collection.bodySite                      | descendants-of 123037004 Körperstruktur (body structure)         | SOLLTE                  |
| Specimen.collection.bodySite.extension:bodyStructure | Siehe Block                                                     | SOLLTE                  |
| Specimen.processing                               | descendants-of 127790008 Färbemethode (procedure)               | SOLLTE                  |


### Lebenszyklus des Dokumentes
Die Beschreibung des Lebenszyklus des Dokumentes "Pathologiebefundbericht", z.B. ob es noch aktuell ist oder durch ein anderes Dokument ersetzt oder ergänzt wurde, entscheidet über die Vollständigkeit und Aktualität des Inhalts des lesbaren Dokumentes beim Document Consumer, d.h. dem Einsender/Auftraggeber der Untersuchung in der Pathologie.
Die .status-Elemente in den FHIR-Profilen _Observation_, _DiagnosticReport_ und _Composition_ des Befundberichts sollen diese Lebenszyklusbeschreibung für Dokumenten-Registries und Dokumenten-Repositories ermöglichen.

Szenario 1: 
Ein Befundbericht zu einem Mamma-Stanzbioptat wird als vorläufig abgegeben, da eine immunhistochemische Untersuchung sich verzögert hat. Nachdem deren Ergebnis feststeht, wird der Hauptbericht abgeschlossen. Eine weitere immunhistochemische Untersuchung zu Her2neu-Expression erfolgt aus logistischen Gründen erst in der nächsten Woche. Über deren Ergebnis wird ein Nachbericht verfasst. Durch ein internes Review muss der im Nachbericht mitgeteilte Expressionsstatus „Her2-negativ“ korrigiert werden, da er tatsächlich „Her2-low“ lautet. Dazu erfolgt ein Korrekturbericht.
Alle dem Hauptbericht folgende Berichte schließen die Vorgänger ein. 
Die Pathologie-Einrichtung muss davon ausgehen, dass neue Versionen eines Dokuments in der Registry mit dem XDSDocumentEntry.parentDocumentRelationship "RPLC" (Replace) behandelt werden.
Das Empfängersystem stellt stets die synoptische Übersicht aller Berichtsteile dar.

Berichtsform | Vorläufiger Hauptbericht | Hauptbericht | Plus Zusatz-/Nachbericht | Plus Korrekturbericht
-- | -- | -- | -- | --
Bundle.identifier | E12345/25-1 | E12345/25-2 | E12345/25-3 | E12345/25-4
Bundle.signature | Dr.A  (Chefarzt) | Dr.A | Dr.C (Facharzt) | Dr.D (Oberarzt)
Composition.id | Abcd | Abcde | Abcdf | Abcdg
Composition.identifier | E12345/25 | E12345/25 | E12345/25 | E12345/25
Composition.ext.:version | 1 | 2 | 3 | 4
Composition.status | Final | Final | Final | Final
Composition.author | Dr.B (Facharzt) | Dr.B | Dr.C | Dr.D
Composition.attester | Dr.A | Dr.A | Dr.A | Dr.A
Composition.relatesTo.target.[x] | E9345/25 (Vorbefund, falls existent) | Ref. Abcd | Ref. Abcde | Ref. Abcdf
Composition.relatesTo.code |  |  | replaces | replaces
DiagnosticReport.ext.:related-report | E9345/25 (Vorbefund, falls existent) | E9345/25 (Vorbefund, falls existent) | E9345/25 (Vorbefund, falls existent) | E9345/25 (Vorbefund, falls existent)
DiagnosticReport.ext.:set-ID | E12345/25 | E12345/25 | E12345/25 | E12345/25
DiagnosticReport.status | Preliminary | Final | Amended | Corrected
DiagnosticReport.performer | Dr.B | Dr.B | Dr.C | Dr.D
DiagnosticReport.resultsInterpreter | Dr.A | Dr.A | Dr.A | 
DiagnosticReport.custodian | IfP | IfP | IfP | IfP
1.Observation.identifier | E10345/25_A_1_HE |  |  | 
1.Observation.status | Final |  |  | 
1.Observation.performer | Dr.B |  |  | 
2.Observation.identifier |  | E10345/25_A_1_ER |  | 
2.Observation.status |  | Final |  | 
2.Observation.performer |  | Dr.B |  | 
3.Observation.identifier |  |  | E10345/25_A_1_Her2 | 
3.Observation.status |  |  | Final | 
3.Observation.performer |  |  | Dr.C | 
4.Observation.identifier |  |  |  | E10345/25_A_1_Her2
4.Observation.status |  |  |  | Corrected
4.Observation.performer |  |  |  | Dr.D

Szenario 2: 
Wie oben.
Alle Berichtsteile stehen für sich selbst. Das Empfängersystem sorgt für die korrekte Zuordnung in der jeweiligen kompletten, aktuellen menschenlesbaren Darstellung. 
Die Pathologie-Einrichtung muss davon ausgehen, dass neue Versionen eines Dokuments in der Registry mit dem XDSDocumentEntry.parentDocumentRelationship "APND" (Append) behandelt werden.
Die Zusammenführung muss dann über DR.ext.:set-ID erfolgen. Dieses Szenario erfordert eine veränderte Versionierung und andere Identifier. Es wird für Pathologiebefundberichte **nicht empfohlen**.


Berichtsform | Vorläufiger Hauptbericht | Hauptbericht | Zusatz-/Nachbericht | Korrekturbericht
-- | -- | -- | -- | --
Bundle.identifier | E12345/25-1V | E12345/25-1 | E12345/25-1Z | E12345/25-1K
Bundle.signature | Dr.A | Dr.A | Dr.B | Dr.D
Composition.id | Abcd | Abcde | Abcdf | Abcdg
Composition.identifier | E12345/25 | E12345/25 | E12345/25 | E12345/25
Composition.ext.:version | 1 | 1 | 1 | 2
Composition.status | Final | Final | Final | Final
Composition.author | Dr.B | Dr.B | Dr.C | Dr.D
Composition.attester | Dr.A | Dr.A |  | 
Composition.relatesTo.target.[x] | E9345/25 (Vorbefund, falls existent) | Ref. Abcd | Ref. Abcde | Ref. Abcdf
Composition.relatesTo.code |  |  | appends | replaces
DiagnosticReport.ext.:related-report | E9345/25 (Vorbefund, falls existent) | E9345/25 (Vorbefund, falls existent) | E9345/25 (Vorbefund, falls existent) | E9345/25 (Vorbefund, falls existent)
DiagnosticReport.ext.:set-ID | E12345/25 | E12345/25 | E12345/25 | E12345/25
DiagnosticReport.status | Preliminary | Final | Final | Corrected
DiagnosticReport.performer | Dr.B | Dr.B | Dr.C | Dr.D
DiagnosticReport.resultsInterpreter | Dr.A | Dr.A |  | 
DiagnosticReport.custodian | IfP | IfP | IfP | IfP
Observation.identifier | E10345/25_A_1_HE | E10345/25_A_1_ER | E10345/25_A_1_Her2 | E10345/25_A_1_Her2K
Observation.status | Final | Final | Final | Corrected
Observation.performer | Dr.B | Dr.B | Dr.C | Dr.D

Für das IHE Profil APSR2.1 (CDA) gilt folgende Festlegung:
For the APSR content module XDSDocumentEntry.parentDocumentRelationship is constrained to the "RPLC" value. When there is a parent document the current document is a new version of the parent document, replacing it.

Note 1: A non-final anatomic pathology report published in an XDS infrastructure will likely be replaced afterwards by the final report. When this event occurs, the Content Creator Actor SHALL apply the following rules:

ClinicalDocument/setId SHALL have the same value in the new report as in the replaced report.
ClinicalDocument/versionNumber SHALL be incremented in the replacing report (i.e. the final one).
ClinicalDocument/relatedDocument@typeCode attribute SHALL be valued ”RPLC”
ClinicalDocument/relatedDocument/parentDocument/id in the new report SHALL be equal to ClinicalDocument/ id of the replaced document.
The Document Source Actor SHALL apply the following rules on XDSDocumentEntry metadata:

The final report SHALL be associated with the previously published one, using RPLC relationship and the previous report SHALL be “Deprecated” as described in ITI TF-2:4.1.6.1.

Note 2: A non-final report can also be replaced by a more recent, albeit still non-final report. The rules above also apply in this case.

Note 3: A final report can also be replaced by a corrective final report. The rules above also apply in this case.

Note 4: A new version of a report SHOULD have an Update Organizer in its Diagnostic Conclusion

carrying information about what has been changed in comparison with the immediate previous report, and what is the clinical significance of that change.

### Profilübersicht und Abhängigkeiten

#### FHIR Profile

| Hinweis | Verpflichtende / must-support Elemente |
|---------|---------------------|
|  | Für verpflichtende oder als must-support markierten Elemente sei an dieser Stelle auf die entsprechenden [Regeln der IPS](http://hl7.org/fhir/uv/ips/STU1/design.html#must-support) verwiesen, die auch für diesen ImplementationGuide gelten. |

Die Arbeiten der Kerndatensatzspezifikationen basieren, wo möglich, auf internationalen Standards und Terminologien. Insbesondere seien hier der [Anatomic Pathology Structured Report (APSR)](https://art-decor.org/art-decor/decor-templates--psr-?section=templates&id=1.3.6.1.4.1.19376.1.8.1.1.1&effectiveDate=2014-05-13T11:57:57&language=de-DE) und die [International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/history.html) hervorgehoben. Eine Anpassung an die allgemeinen Gegebenheiten des deutschen Gesundheitswesens erfolgt durch die Verwendung der [Deutschen Basisprofile von HL7 Deutschland](https://simplifier.net/basisprofil-de-r4). 

Alle Elemente des Kerndatensatzes, angepasst an die Details und Anforderungen für die Use Cases der Medizininformatik-Initative, werden nachfolgend in Form von FHIR StructureDefinitions beschrieben. Die Notwendigkeit der Anpassung der FHIR-Profile wird in textueller Form unterhalb der jeweiligen Profile erläutert. 

#### Anforderungsdokumentation

Anforderungen in dieser Spezifikation werden durch folgende in Großbuchstaben geschriebenen Schlüsselworte basierend auf [RFC-2119](https://datatracker.ietf.org/doc/html/rfc2119) gekennzeichnet:

| Deutsch                      	| Englisch    	       |
|------------------------------	|--------------------- |
| MUSS / MÜSSEN                	| MUST / SHALL         |
| DARF NICHT / DÜRFEN NICHT    	| MUST NOT / SHALL NOT |
| VERPFLICHTEND                	| REQUIRED    	       |
| SOLLTE / SOLLTEN             	| SHOULD      	       |
| SOLLTE NICHT / SOLLTEN NICHT 	| SHOULD NOT  	       |
| EMPFOHLEN                    	| RECOMMENDED 	       |
| KANN / OPTIONAL               | MAY                  |

#### Profilübersicht

* [MII PR Patho Pathologie-Befund (DiagnosticReport)](StructureDefinition-mii-pr-patho-report.html)
* [MII PR Patho Untersuchungsauftrag (ServiceRequest)](StructureDefinition-mii-pr-patho-service-request.html)
* [MII PR Patho Probe (Specimen)](StructureDefinition-mii-pr-patho-specimen.html)
* [MII PR Patho Befundzusammenfassung (Composition)](StructureDefinition-mii-pr-patho-composition.html)
* [MII PR Patho Befunddokument (Bundle)](StructureDefinition-mii-pr-patho-bundle.html)
* [MII PR Patho Beobachtung (abstrakte Observation)](StructureDefinition-mii-pr-patho-base-observation.html)
* [MII PR Patho Beobachtungsberichtabschnitt (abstrakte Observation)](StructureDefinition-mii-pr-patho-section-grouper.html)
* [MII PR Patho Makroskopische Beurteilung (Observation)](StructureDefinition-mii-pr-patho-macroscopic-grouper.html)
* [MII PR Patho Mikroskopische Beurteilung (Observation)](StructureDefinition-mii-pr-patho-microscopic-grouper.html)
* [MII PR Patho Intraoperative Beurteilung (Observation)](StructureDefinition-mii-pr-patho-intraoperative-grouper.html)
* [MII PR Patho Diagnostische Schlussfolgerung (Observation)](StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.html)
* [MII PR Patho Zusätzliche Beobachtung (Observation)](StructureDefinition-mii-pr-patho-additional-specified-grouper.html)
* [MII PR Patho Einzelbeobachtung (Observation)](StructureDefinition-mii-pr-patho-finding.html)
* [MII PR Patho Eingebettetes Bild (Media)](StructureDefinition-mii-pr-patho-attached-image.html)
* [MII PR Patho Fragestellung (List)](StructureDefinition-mii-pr-patho-active-problems-list.html)
* [MII PR Patho Anamnese (List)](StructureDefinition-mii-pr-patho-history-of-present-illness.html)
* [MII PR Patho Problem (Condition)](StructureDefinition-mii-pr-patho-problem-list-item.html)

#### Pathologie Observations

Alle Observations im Modul Patholgie-Befund haben das abstrakte Observation Profil **MII PR Base Observation** als gemeinsame Basis. 

<img src="patho_observation_dependencies_v1.0.0.png" alt="patho-observation-dependencies" style="max-width:100%; height:auto;"/>

#### Gesamtübersicht aller Profile und Referenzen

<img src="patho_profile_relationships_v1.0.0.png" alt="patho-profile-relationships" style="max-width:100%; height:auto;"/>
