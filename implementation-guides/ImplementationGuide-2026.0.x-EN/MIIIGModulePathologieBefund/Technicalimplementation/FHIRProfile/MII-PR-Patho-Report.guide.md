---
topic: PathoReport
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report
---

<a id="PathoReport"></a>
## {{page-title}}


### Description

The **MII PR Patho Report** profile of the [DiagnosticReport](http://hl7.org/fhir/diagnosticreport.html) resource represents the complete findings report without document properties (see **MII-PR-Patho-Composition**).

It presents highly structured examination results, including human-readable texts (narratives), that belong to "panels" of individual examinations. It collects and organizes pathology findings for even complex individual results and can reference additional information about the examination panel, e.g., clinical information and sample information. A complete, formatted finding text should be part of the **MII PR Patho Report**.

The most important features of the **MII PR Patho Report** are:
- the ability to include additional clinical context, e.g., a mix of results from individual observations, images, text, and formatted representations.
- the ability to organize information on multiple specimens/samples, which is not currently possible in the **MII PR Patho Finding** profile.
- and the ability to display a summary assessment, the Conclusion, as well as one or more Conclusion codes that are not identical to Pathology Findings.

The **MII PR Patho Report**, as an entry in the "diagnostic-report" section of the **MII PR Patho Composition** profile, forms the core of a persistent "Pathology Finding Report" document.

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

In the table below, elements marked with * are duplicated in the MII PR Patho Composition profile.

### List of all must-support data elements
| FHIR element | Explanation |
|--|--|
|DiagnosticReport.id | Must-support, but optional |
|DiagnosticReport.meta | Must-support, but optional |
|DiagnosticReport.text| Not recommended optional narrative, compiled from the texts of the grouper observations and/or the observations (see Composition.text and Composition.section.text) |
|DiagnosticReport.extension:related-report | Reference to previous finding(s) that are factually related to the current finding |
|DiagnosticReport.identifier | Finding number (incoming number, case number, filler order number, accession number) |
|*DiagnosticReport.basedOn | Reference to the initial ServiceRequest, must always be given |
|DiagnosticReport.status | No specifications, preliminary findings are permitted |
|DiagnosticReport.category | Extensible binding to ValueSet [MII VS Patho Report Category HL7](https://simplifier.net/medizininformatikinitiative-modulpathologie/mii-vs-patho-report-category-hl7) |
|DiagnosticReport.code | LOINC 60568-3 “Pathology Synoptic Report” |
|*DiagnosticReport.subject | Patient (inherited from the Person module of the MII https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient) |
|DiagnosticReport.encounter | Must support, but optional |
|*DiagnosticReport.effective[x] | Time of sample collection (time at which the measured property in the sample material (e.g., analyte concentration) presumably corresponded to the property in the patient). If not documented, the laboratory receipt time is the closest time point. Must be identical to Observation.effective[x].extension: Clinical reference time point. This information is stored in both the DiagnosticReport and the Observation to facilitate subsequent data evaluation. |
|*DiagnosticReport.issued | Time of release of the finding |
|*DiagnosticReport.performer | Reference to the institution (custodian) responsible for the report. |
|DiagnosticReport.specimen | References to all samples (parts), sent by the clinician to the pathology laboratory. Future specifications for additional core dataset modules may define requirements in this regard.|
|DiagnosticReport.result | The DiagnosticReport should contain at least one result in the form of a Grouper Observation DiagnosticConclusion (22637-3 (Pathology report diagnosis)). |
|DiagnosticReport.imagingStudy | Embedded images |
|DiagnosticReport.media | Embedded images |
|DiagnosticReport.conclusion | Textual description of the final medical assessment of the findings |
|DiagnosticReport.conclusionCode | Coded final assessment(s) |
|DiagnosticReport.presentedForm | PDF of the pathology report |

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

