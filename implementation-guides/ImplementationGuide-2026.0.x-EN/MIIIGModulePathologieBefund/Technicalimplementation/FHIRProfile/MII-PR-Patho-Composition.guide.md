---
topic: PathoComposition
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition
---

## {{page-title}}

### Description

This profile inherits from [Profile - ISiK - BerichtSubsysteme](https://simplifier.net/isik-basis-v4/isikberichtsubsysteme) from the specification [ISiK - Basis (Stufe 4)](https://simplifier.net/isik-basis-v4).

The **MII PR Patho Composition** profile, as a profile of a composition resource with special constraints for clinical documents, summarizes the resources for a complete, text-centric pathology report with the properties of a clinical document.
This profile is the first entry in a bundle of the `Bundle.type` "document"; the persistent unique `Bundle.identifier` should correspond to that of the composition (Composition.identifier, see below), e.g., accession number including version number. Additional entries should optionally be included. The bundle contains a signature.
Only two sections, the diagnostic report (`patho-diagnostic-report`) and one or more additional complete reports, e.g., from a molecular genetic study (`additional-diagnostic-report`), can be present in the composition. The report sections described in the dataset are represented in the **MII PR Patho Report**, a profile of the resource DiagnosticReport, with special grouper observations with text and atomic individual observations (**MII PR Patho Finding**).

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition}}
    </tab>
</tabs>

---------------------------------------------
### List of all must-support data elements
| FHIR element | Explanation |
|--|--|
|Composition.id |Must-support, but optional|
|Composition.meta.lastUpdated |Must-support, but optional|
|Composition.meta.profile |Must-support, but optional|
|Composition.extension:document-version |Version number of the clinical report. (see extension [versionNumber](http://hl7.org/fhir/r4/extension-composition-clinicaldocument-versionnumber.html))|
|Composition.identifier | Identification of the pathology report, usually the accession number (case number), supplemented by the version number. Other UIDs possible.|
|Composition.identifier.extension.original-text | Original text of the identifier, Must-support, but optional.|
|Composition.identifier.type | Coded type of the identifier, e.g., Set-ID, usually corresponds to the accession number (case number), see DiagnosticReport.identifier. |
|Composition.identifier.system | Namespace of the identifier. |
|Composition.identifier.value | Text representation of the unique identifier. |
|Composition.status | Status of the document. status.code="preliminary", "final", "amended", or "entered-in-error" (see [vs-composition-status](http://hl7.org/fhir/r4/valueset-composition-status.html)) |
|Composition.text | Narrative for the header data of the report (accession number, institutional identifier, authorship data, patient data, etc.) |
|Composition.type | Document type (LOINC 11526-1 "Pathology study") |
|Composition.category | Document category (selection from LOINC 27898-6 set)) |
|Composition.subject | Patient (inherited from the Person module of the MII https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient) |
|Composition.date | Date the document was released |
|Composition.author | Author of the report |
|Composition.title | Title of the report, e.g., Pathological-Anatomical Assessment |
|Composition.attester | Legally signatory for the document (legalAuthenticator [1 .. 1], mode="legal") or responsible for validating observations (contentValidator [0 .. *], mode="professional") |
|Composition.custodian | Reference to the legally responsible party for the document (institute/practice/hospital) |
|Composition.relatesTo | References to other documents (e.g., previous version of the report) |
|Composition.event | Event triggering the document (reference to the examination order), HL7 code="PATREPE" |
|Composition.section | Diagnostic report concerning the pathology finding. Section.code="60567-5(Comprehensive pathology report panel)", title "Pathology report", entry reference(PathologyReport) |
|Composition.section.text | Texts from the pathology report (specimens, macroscopy, microscopy, diagnostic conclusion, etc.), i.e., the complete text section of the pathology report |


----------------------------------------
### Reference to the Logical Model
| FHIR Element | Logical Data Model |
|--|--|
|Composition.text |Pathology report |
|composition-clinicaldocument-versionNumber |Pathology report.Version number |
|Composition.identifier | Pathology report.Identifier |
|Composition.status | Pathology report.Status |
|Composition.type | Pathology report.Type |
|Composition.category | Pathology report.Category |
|Composition.subject | Patient |
|Composition.encounter | Case (department contact) |
|Composition.date | Pathology report.Date |
|Composition.author | Pathology report.Author |
|Composition.attester | Pathology report.Releaser |
|Composition.title | Pathology report.Title |
|Composition.event | Processing of the examination request |
|Composition.custodian | Person responsible for the Pathology report |
|Composition.relatesTo | Pathology report.RelatedDocument |
|Composition.section | Report sections, at least in the SD MII Patho Report |

---

### Search Parameters

The following search parameters are relevant for the Pathology report module, even in combination:

1. The search parameter ```_id`` MUST be supported:

Examples:

``GET [base]/Composition?_id=ex-mii-patho-composition```

Usage Notes: Further information on searching for ```_id`` can be found in the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_lastUpdated``` MUST be supported:

Examples:

```GET [base]/Composition?_lastUpdated=2021-12-08```

Usage Notes: For more information on searching for ```_lastUpdated``, see the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_profile`` MUST be supported:

Examples:

```GET [base]/Composition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition```

Usage Notes: Further information on searching for ```_profile`` can be found in the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```attester`` MUST be supported:

Examples:

``GET [base]/Composition?attester=Practitioner/765879```

Usage Notes: Further information on searching for ```Composition.​attester.​party`` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```author`` MUST be supported:

Examples:

```GET [base]/Composition?author=Practitioner/45756```

Usage Notes: Further information on searching for ```Composition.​author`` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```category`` MUST be supported:

Examples:

```GET [base]/Composition?category=27898-6```

````GET [base]/Composition?category=http://loinc.org|27898-6```

Usage Notes: For more information on searching for ```Composition.category``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```date`` MUST be supported:

Examples:

``GET [base]/Composition?date=2021-06-08```

Usage Notes: Further information on searching for ```Composition.date`` can be found in the [FHIR Base Specification - "date" section](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter ```encounter`` MUST be supported:

Examples:

```GET [base]/Composition?encounter=Encounter/769808```

Usage Notes: Further information on searching for ```Composition.encounter`` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```entry`` MUST be supported:

Examples:

```GET [base]/Composition?entry=DiagnosticReport/ex-mii-patho-report```

Usage Notes: For more information on searching for ```Composition.section.entry``, see the [FHIR Base Specification - Reference Section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```identifier`` MUST be supported:

Examples:

```GET [base]/Composition?identifier=https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht|E21.12345```

```GET [base]/Composition?identifier=E21.12345```

Usage Notes: Further information on searching for ```Composition.identifier`` can be found in the [FHIR Base Specification- "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```patient`` MUST be supported:

Examples:

```GET [base]/Composition?patient=Patient/12345```

Usage Notes: For more information on searching for ```Composition.subject.​where(resolve() is Patient)```, see the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```period`` MUST be supported:

Examples:

``GET [base]/Composition?period=le2021-06-08```

Usage Notes: For more information on searching for ```Composition.event.period``, see the [FHIR Base Specification - "date" section](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter ```related-ref`` MUST be supported:

Examples:

```GET [base]/Composition?related-ref=Composition/12345```

Usage Notes: For more information on searching for ```(Composition.​relatesTo.​target as Reference)```, see the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```section`` MUST be supported:

Examples:

```GET [base]/Composition?section=60567-5```

```GET [base]/Composition?category=http://loinc.org|60567-5```

Usage Notes: For more information on searching for ```Composition.​section.​code``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```status`` MUST be supported:

Examples:

```GET [base]/Composition?status=final```

Usage Notes: For more information on searching for ```Composition.status``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```subject`` MUST be supported:

Examples:

``GET [base]/Composition?subject=Patient/12345```

Usage Notes: Further information on searching for ```Composition.subject`` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```title`` MUST be supported:

Examples:

```GET [base]/Composition?title:contains=Pathology```

Usage Notes: Further information on searching for ```Composition.title`` can be found in the [FHIR Base Specification - "string" section](http://hl7.org/fhir/R4/search.html#string).

1. The search parameter ```type`` MUST be supported:

Examples:

```GET [base]/Composition?type=11526-1```

```GET [base]/Composition?type=http://loinc.org|11526-1```

Usage Notes: For more information on searching for ```Composition.​type``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```attester-mode`` MUST be supported:

Examples:

``GET [base]/Composition?attester-mode=legal```

Usage Notes: For more information on searching for ```Composition.attester.mode``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```custodian`` MUST be supported:

Examples:

```GET [base]/Composition?subject=Patient/12345```

Usage Notes: For more information on searching for ```Composition.subject``, see the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The ```relates-to-code`` search parameter MUST be supported:

Examples:

```GET [base]/Composition?relates-to-code=appends```

Usage Notes: For more information on searching for ```Composition.relatesTo.code``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

--------------------------------
### Examples
{{json:mii-exa-patho-composition}}