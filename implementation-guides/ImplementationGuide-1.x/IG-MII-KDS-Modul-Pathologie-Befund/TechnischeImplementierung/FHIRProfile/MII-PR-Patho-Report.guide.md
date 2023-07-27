---
topic: PathoReport
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report
---

<a id="PathoReport"></a>
## {{page-title}}


### Beschreibung

Das Profil **MII PR Patho Report** der Ressource [DiagnosticReport](http://hl7.org/fhir/diagnosticreport.html) bildet den kompletten Befundbericht ab, ohne Dokumenteigenschaften zu besitzen (siehe **MII-PR-Patho-Composition**). 

Es stellt hochstrukturierte Untersuchungsergebnisse einschließlich menschenlesbarer Texte (Narrative) dar, die zu „Panels“ von Einzeluntersuchungen gehören. Es sammelt und organisiert PathologyFindings für auch komplexe Einzelergebnisse und kann weitere Informationen zum Untersuchungspanel, z.B. auch klinische Informationen und Probeninformationen referenzieren. Ein vollständiger formatierter Befundtext sollte Teil des **MII PR Patho Report** sein.
 
Die wichtigsten Besonderheiten des **MII PR Patho Report** sind: 
- die Möglichkeit, zusätzlichen klinischen Kontext, z.B. eine Mischung von Ergebnissen aus Einzelbeobachtungen, Bildern, Texten und formatisierten Darstellungen einzubinden, 
- die Möglichkeit, Informationen zu mehreren Präparaten / Proben zu organisieren, was im Profil **MII PR Patho Finding** bisher nicht möglich ist,  
- und die Möglichkeit, eine zusammenfassende Bewertung, die Conclusion, sowie einen oder mehrere Conclusion.codes abzubilden, die nicht identisch mit  PathologyFindings sind.  
 
Das **MII PR Patho Report** bildet als Entry in der Section “diagnostic-report” des Profils **MII PR Patho Composition** den Kern eines persistenten Dokuments "Pathologiebefundbericht".

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report}}
    </tab>
</tabs>
 
----------------------

In untenstehender Tabelle sind Elemente mit * markiert, die im Profil MII PR Patho Composition dupliziert werden.

### Liste aller Must-Support Datenelemente
| FHIR-Element | Erklärung |
|--|--|
|DiagnosticReport.id | Must-support, jedoch optional |
|DiagnosticReport.meta | Must-support, jedoch optional |
|DiagnosticReport.text| Nicht empfohlenes optionales Narrativ, kompiliert aus den Texten der Grouper-Observations u./ o. der Observations (siehe Composition.text und Composition.section.text) |
|DiagnosticReport.extension:related-report | Verweis auf Vorbefund(e), die mit dem aktuellen Befund in sachlichem Zusammenhang stehen |
|DiagnosticReport.identifier | Befundnummer (Eingangsnummer, Fallnummer, Filler order number, Accession number) |
|*DiagnosticReport.basedOn | Bezug zum initialen ServiceRequest, muss stets gegeben sein |
|DiagnosticReport.status | Keine Vorgaben, vorläufige Befunde sind erlaubt |
|DiagnosticReport.category | Extensible Binding auf ValueSet [MII VS Patho Report Category HL7](https://simplifier.net/medizininformatikinitiative-modulpathologie/mii-vs-patho-report-category-hl7) |
|DiagnosticReport.code | LOINC 60568-3 “Pathology Synoptic Report” |
|*DiagnosticReport.subject | Patient (erbt von Modul Person der MII https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient) | 
|DiagnosticReport.encounter | Must-support, jedoch optional |
|*DiagnosticReport.effective[x] | Zeitpunkt der Probenentnahme (Zeitpunkt zu dem die gemessene Eigenschaft im Probenmaterial (e.g. Analytkonzentration)mutmaßlich der Eigenschaft im Patienten entsprach). Falls nicht dokumentiert, Laboreingangszeitpunkt als am nächsten liegender Zeitpunkt. Muss identisch sein zu Observation.effective[x].extension: KlinischerBezugszeitpunkt. Die Information wird sowohl im DiagnosticReport als auch in der Observation gespeichert um anschließend Datenauswertungen zu erleichtern. |
|*DiagnosticReport.issued | Zeitpunkt der Freigabe des Befundes |
|*DiagnosticReport.performer | Referenz zur Einrichtung (custodian), die den Report verantwortet. |
|DiagnosticReport.specimen | Referenzen zu allen Proben (Präparat vom Patienten, Proben im Pathologielabor) Zukünftige Spezifikationen weiterer Kerndatensatzmodule können diesbezüglich Vorgaben ausgestalten.|
|DiagnosticReport.result | Der DiagnosticReport sollte mind. ein Ergebnis in Form einer Grouper-Observation DiagnosticConclusion (22637-3 (Pathology report diagnosis)) enthalten. |
|DiagnosticReport.imagingStudy | Eingebundene Bilder |
|DiagnosticReport.media | Eingebundene Bilder |
|DiagnosticReport.conclusion | Textuelle Beschreibung der abschließenden ärztlichen Bewertung des Befundes| 
|DiagnosticReport.conclusionCode | Kodierte abschließende Bewertung(en) |
|DiagnosticReport.presentedForm | PDF des Pathologiebefundberichts |

----------------------------------
### Mapping zum Logical Model
| FHIR-Element | Logisches Datenmodell |
|--|--|
|DiagnosticReport.id | Befundbericht.id  |
|DiagnosticReport.identifier| Befundbericht.Identifikator |
|DiagnosticReport.basedOn | Untersuchungsauftrag |
|DiagnosticReport.status | Befundbericht.Status |
|DiagnosticReport.category | Befundbericht.Kategorie  |
|DiagnosticReport.code | Befundbericht.Typ |
|DiagnosticReport.subject | Patient | 
|DiagnosticReport.encounter | Referenz zum Modul Fall |
|DiagnosticReport.effective | Befundbericht.Datum  |
|DiagnosticReport.issued | Befundbericht.Datum  |
|DiagnosticReport.performer | Practitioner/Organization |
|DiagnosticReport.specimen | Probe |
|DiagnosticReport.result | Beobachtungsberichtabschnitt und Generische Pathologisch-anatomische Einzelbeobachtung |
|DiagnosticReport.media |Generische Pathologisch-anatomische Einzelbeobachtung.EingebettetesBild, Generische Pathologisch-anatomische Einzelbeobachtung.ROI  |
|DiagnosticReport.conclusion | Befundbericht.Bewertung | 
|DiagnosticReport.conclusionCode | Befundbericht.Kodierung |
|DiagnosticReport.presentedForm | Befundbericht.PDF |

-----

### Suchparameter

Folgende Suchparameter sind für das Modul Pathologie-Befund relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/DiagnosticReport?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_id``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```_lastUpdated``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/DiagnosticReport?_lastUpdated=2021-12-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_lastUpdated``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```_profile``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_profile``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```based-on``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?based-on=ServiceRequest/mii-exa-patho-request```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.basedOn``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```category``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?category=CP```
    
    ```GET [base]/DiagnosticReport?category=http://terminology.hl7.org/CodeSystem/v2-0074|CP```

    Anwendungshinweise:  Weitere Informationen zur Suche nach ```DiagnosticReport.category``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```code``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?code=http://loinc.org|60568-3```

    ```GET [base]/DiagnosticReport?code=60568-3```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.code``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```conclusion``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?conclusion=http://snomed.info/sct|399490008```

    ```GET [base]/DiagnosticReport?conclusion=399490008```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.conclusionCode``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```date``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?date=2021-06-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.effective``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter ```encounter``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?encounter=Encounter/234980```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.encounter``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```identifier``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?identifier=https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht|E21.12345```

    ```GET [base]/DiagnosticReport?identifier=E21.12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.identifier``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```issued``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?issued=2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.issued``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter ```media``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?media=Media/ex-mii-patho-attached-image```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.media.link``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```patient``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?patient=Patient/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.subject.​where(resolve() is Patient)``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```performer``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?performer=Practitioner/2346545```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.performer``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```result``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?result=Observation/ex-mii-patho-macro-grouper-b```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.result``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```specimen``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?specimen=Specimen/987976```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.specimen``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```status``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?status=final```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.status``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```subject``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?subject=Patient/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.subject``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```imaging-study``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?imaging-study=ImagingStudy/978698```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```DiagnosticReport.imagingStudy``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).




-----------------------------------
### Beispiele

{{json:mii-exa-patho-report}}

