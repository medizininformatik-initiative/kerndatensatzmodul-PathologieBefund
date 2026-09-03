Alle Elemente des Kerndatensatzes, angepasst an die Details und Anforderungen für die Use Cases der Medizininformatik-Initiative, werden als FHIR StructureDefinitions beschrieben. Die Notwendigkeit der Anpassung wird in textueller Form unterhalb der jeweiligen Profile erläutert.

Die Arbeiten der Kerndatensatzspezifikationen basieren, wo möglich, auf internationalen Standards und Terminologien — insbesondere dem [Anatomic Pathology Structured Report (APSR)](https://art-decor.org/art-decor/decor-templates--psr-?section=templates&id=1.3.6.1.4.1.19376.1.8.1.1.1&effectiveDate=2014-05-13T11:57:57&language=de-DE) und der [International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/history.html). Die Anpassung an die Gegebenheiten des deutschen Gesundheitswesens erfolgt über die [Deutschen Basisprofile von HL7 Deutschland](https://simplifier.net/basisprofil-de-r4).

### Übersicht

| Profil | Ressource | Zweck |
|---|---|---|
| [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html) | DiagnosticReport | Der komplette Befundbericht, ohne Dokumenteigenschaften |
| [MII PR Patho Composition](StructureDefinition-mii-pr-patho-composition.html) | Composition | Dokumentkopf und Gliederung des Berichts |
| [MII PR Patho Bundle](StructureDefinition-mii-pr-patho-bundle.html) | Bundle | Signierbares Dokument-Bundle |
| [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.html) | ServiceRequest | Untersuchungsauftrag des Einsenders |
| [MII PR Patho Specimen](StructureDefinition-mii-pr-patho-specimen.html) | Specimen | Probe auf allen Bearbeitungsebenen (Part, Block, Schnitt) |
| [MII PR Patho Base Observation](StructureDefinition-mii-pr-patho-base-observation.html) | Observation (abstrakt) | Gemeinsame Basis aller Observations dieses Moduls |
| [MII PR Patho Section Grouper](StructureDefinition-mii-pr-patho-section-grouper.html) | Observation (abstrakt) | Basis der Beobachtungsberichtabschnitte |
| [MII PR Patho Intraoperative Grouper](StructureDefinition-mii-pr-patho-intraoperative-grouper.html) | Observation | Abschnitt Intraoperative Beurteilung |
| [MII PR Patho Macroscopic Grouper](StructureDefinition-mii-pr-patho-macroscopic-grouper.html) | Observation | Abschnitt Makroskopische Beurteilung |
| [MII PR Patho Microscopic Grouper](StructureDefinition-mii-pr-patho-microscopic-grouper.html) | Observation | Abschnitt Mikroskopische Beurteilung |
| [MII PR Patho Additional Specified Grouper](StructureDefinition-mii-pr-patho-additional-specified-grouper.html) | Observation | Abschnitt Zusätzliche spezifizierte Beobachtungen |
| [MII PR Patho Diagnostic Conclusion Grouper](StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.html) | Observation | Abschnitt Diagnostische Schlussfolgerung |
| [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) | Observation | Semantisch annotierte Einzelbeobachtung |
| [MII PR Patho Attached Image](StructureDefinition-mii-pr-patho-attached-image.html) | Media | In den Bericht eingebettetes Bild |
| [MII PR Patho Active Problems List](StructureDefinition-mii-pr-patho-active-problems-list.html) | List | Fragestellung des Einsenders |
| [MII PR Patho History Of Present Illness](StructureDefinition-mii-pr-patho-history-of-present-illness.html) | List | Anamnese des Einsenders |
| [MII PR Patho Problem List Item](StructureDefinition-mii-pr-patho-problem-list-item.html) | Condition | Einzelner Eintrag der beiden Listen |
| [MII LM Patho Logical Model](StructureDefinition-mii-lm-patho-logical-model.html) | Logical Model | Informationsmodell des Moduls |

Die vollständige, automatisch erzeugte Liste aller Artefakte einschließlich Terminologien und Beispiele findet sich unter [Übersicht](artifacts.html).

### Verpflichtende und must-support-Elemente

Für verpflichtende oder als must-support markierte Elemente gelten die entsprechenden [Regeln der IPS](http://hl7.org/fhir/uv/ips/STU1/design.html#must-support), die auch für diesen Implementation Guide gelten.

### Anforderungsdokumentation

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

### Pathologie-Observations

Alle Observations im Modul Pathologie-Befund haben das abstrakte Profil **MII PR Patho Base Observation** als gemeinsame Basis.

<img src="patho_observation_dependencies_v1.0.0.png" alt="patho-observation-dependencies" style="max-width:100%; height:auto;"/>

### Gesamtübersicht aller Profile und Referenzen

<img src="patho_profile_relationships_v1.0.0.png" alt="patho-profile-relationships" style="max-width:100%; height:auto;"/>
