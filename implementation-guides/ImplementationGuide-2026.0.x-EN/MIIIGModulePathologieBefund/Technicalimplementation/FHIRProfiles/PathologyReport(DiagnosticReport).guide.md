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
### Mapping to Logical Model
| FHIR Element | Logical Data Model |
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

### Search Parameters

The following search parameters are relevant for the Pathology Report module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples:
    
    ```GET [base]/DiagnosticReport?_id=103270```

    Usage notes: Further information on searching for ```_id``` can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_lastUpdated``` MUST be supported:

    Examples:
    
    ```GET [base]/DiagnosticReport?_lastUpdated=2021-12-08```

    Usage notes: Further information on searching for ```_lastUpdated``` can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_profile``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report```

    Usage notes: Further information on searching for ```_profile``` can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```based-on``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?based-on=ServiceRequest/mii-exa-patho-request```

    Usage notes: Further information on searching for ```DiagnosticReport.basedOn``` can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```category``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?category=CP```
    
    ```GET [base]/DiagnosticReport?category=http://terminology.hl7.org/CodeSystem/v2-0074|CP```

    Usage notes: Further information on searching for ```DiagnosticReport.category``` can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```code``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?code=http://loinc.org|60568-3```

    ```GET [base]/DiagnosticReport?code=60568-3```

    Usage notes: Further information on searching for ```DiagnosticReport.code``` can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```conclusion``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?conclusion=http://snomed.info/sct|399490008```

    ```GET [base]/DiagnosticReport?conclusion=399490008```

    Usage notes: Further information on searching for ```DiagnosticReport.conclusionCode``` can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```date``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?date=2021-06-01```

    Usage notes: Further information on searching for ```DiagnosticReport.effective``` can be found in the [FHIR base specification - section "date"](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter ```encounter``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?encounter=Encounter/234980```

    Usage notes: Further information on searching for ```DiagnosticReport.encounter``` can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```identifier``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?identifier=https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht|E21.12345```

    ```GET [base]/DiagnosticReport?identifier=E21.12345```

    Usage notes: Further information on searching for ```DiagnosticReport.identifier``` can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```issued``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?issued=2022-01-01```

    Usage notes: Further information on searching for ```DiagnosticReport.issued``` can be found in the [FHIR base specification - section "date"](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter ```media``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?media=Media/ex-mii-patho-attached-image```

    Usage notes: Further information on searching for ```DiagnosticReport.media.link``` can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```patient``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?patient=Patient/12345```

    Usage notes: Further information on searching for ```DiagnosticReport.subject.​where(resolve() is Patient)``` can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```performer``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?performer=Practitioner/2346545```

    Usage notes: Further information on searching for ```DiagnosticReport.performer``` can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```result``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?result=Observation/ex-mii-patho-macro-grouper-b```

    Usage notes: Further information on searching for ```DiagnosticReport.result``` can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```specimen``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?specimen=Specimen/987976```

    Usage notes: Further information on searching for ```DiagnosticReport.specimen``` can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```status``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?status=final```

    Usage notes: Further information on searching for ```DiagnosticReport.status``` can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```subject``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?subject=Patient/12345```

    Usage notes: Further information on searching for ```DiagnosticReport.subject``` can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```imaging-study``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?imaging-study=ImagingStudy/978698```

    Usage notes: Further information on searching for ```DiagnosticReport.imagingStudy``` can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).




-----------------------------------
### Examples

{{json:mii-exa-patho-report}}

