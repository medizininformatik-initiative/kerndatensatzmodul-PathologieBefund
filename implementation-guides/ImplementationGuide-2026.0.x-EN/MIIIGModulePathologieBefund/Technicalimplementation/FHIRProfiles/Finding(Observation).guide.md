---
topic: PathoFinding
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
---

<a id="PathoFinding"></a>
## {{page-title}}

### Description

The **MII PR Patho Finding** profile of the Observation resource maps atomically coded examination results as a `hasMember` or `derivedFrom` reference for a profile of the type **MII PR Patho Section Grouper**. This profile can form nested constructs to capture "child observations" or as component that further specify a single observation. PathoFindings can be provided by the Pathology Information System via Questionnaire/QuestionnaireResponse resources (see [HL7-Implementation Guide - Structured Data Capture](http://hl7.org/fhir/uv/sdc/STU3/)), or QuestionnaireResponse resources are referenced. Each **MII PR Patho Finding** should reference the specific single specimen on which the observation was made, e.g. the stained tissue section, the part of the sample, etc. .

**Special case:**

- In the case of a finding update, an **MII PR Patho Finding** with the LOINC code [90004-3 - 
Clinical significance of updated information](https://loinc.org/90004-3/) serves as the organizer for the update information, which is mapped in the **MII PR Patho Diagnostic Conclusion Grouper**. For this purpose, the focus reference is used to indicate the affected **MII PR Patho Grouper** (observation section). The `Observation.value` is represented by a ValueSet "ClinicalSignificance" (e.g., LOINC LL4770-5).

For specific Observation constructs, particularly those from the oncological basic dataset (oBDS) — such as TNM classification, histological tumor type, etc. — the Observation profiles from the [MII Oncology Extension Module](https://simplifier.net/medizininformatikinitiative-modulonkologie) can be used.
For observations related to immunohistochemical staining, in-situ hybridization, PCR tests, methylation tests, and NGS analyses, the Observation profiles from the [MII Molecular Tumor Board Extension Module](https://simplifier.net/mii-erweiterungsmodul-molekulares-tumorboard) or the [MII Molecular Genetic Report Extension Module](https://simplifier.net/medizininformatikinitiative-modulomics) should be used.


@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding}}
    </tab>
</tabs>

---------------------------------
### List of all must-support data elements
| FHIR element | Explanation |
|--|--|
|Observation.id | Must-support, but optional |
|Observation.text | Not recommended, optional narrative of the observation, not identical to Observation.code.display or an Observation.valueString (see Composition.text and Composition.section.text) |
|Observation.meta.lastUpdated | Must-support, but optional |
|Observation.meta.profile | Must-support, but optional |
|Observation.identifier | Observation must be clearly identifiable, no coding requirements, preference: derivation from the (concatenated) accession number (part-block-slide) |
|Observation.basedOn | Order that initiated the observation |
|Observation.status | Final & preliminary results are permitted |
|Observation.category | HL7 code "laboratory"; an additional coding is provided for generic individual observations: LOINC codes of the sections to which the individual observation belongs |
|Observation.code | LOINC codes, if codes are missing, SNOMED CT according to https://confluence.ihtsdotools.org/display/DOCLOINC/5.2+Practical+Guidance+on+Uses+of+SNOMED+CT+and+LOINC |
|Observation.subject | Patient (inherited from the Person module of the MII https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient) |
|Observation.effective | Clinically relevant time/period for the observation, usually the time of sample collection |
|Observation.value[x] | Coded or non-codable/numeric observation results |
|Observation.bodySite | Body structure where the observation was made |
|Observation.method | Coded method used for the observation |
|Observation.specimen | Specimen on which the observation was made |
|Observation.hasMember | Observation/QuestionnaireResponse belonging to the examination/observation panel |
|Observation.derivedFrom | Reference to a measurement/image/questionnaireResponse/document from which the observation was derived |

---------------------------------
### Reference to the Logical Model
| FHIR Element | Logical Data Model |
|--|--|
|Observation.id | Generic Pathological-Anatomical Single Observation.id |
|Observation.text | Generic Single Pathological-Anatomical Observation.Text |
|Observation.meta | Generic Single Pathological-Anatomical Observation.meta |
|Observation.identifier | Generic Single Pathological-Anatomical Observation.Identification |
|Observation.basedOn | Examination Request (Order) |
|Observation.status | Generic Single Pathological-Anatomical Observation.Status |
|Observation.category | Generic Single Pathological-Anatomical Observation.Category |
|Observation.code | Generic Single Pathological-Anatomical Observation.Code |
|Observation.subject | Patient |
|Observation.effective | Generic Single Pathological-Anatomical Observation.Time of Finding |
|Observation.issued | Generic Single Pathological-Anatomical Observation.Date |
|Observation.performer | Generic Single Pathological-Anatomical Observation.Performer (.Author, .Informant) |
|Observation.value | Generic Pathological-Anatomical Observation.Value |
|Observation.dataAbsentReason | |
|Observation.interpretation | Generic Pathological-Anatomical Observation.Interpretation |
|Observation.note | Generic Pathological-Anatomical Observation.Comment |
|Observation.method | Generic Pathological-Anatomical Observation.Method |
|Observation.specimen | Generic Pathological-Anatomical Observation.Specimen |
|Observation.hasMember | Generic Pathological-Anatomical Observation.Subobservation |
|Observation.derivedFrom | Generic Pathological-Anatomical Observation.EmbeddedImage |
|Observation.component | Generic Pathological-Anatomical Observation.Subobservation |


---

### Search Parameters

The following search parameters are relevant for the Pathology Findings module, even in combination:

1. The search parameter ```_id`` MUST be supported:

Examples:

``GET [base]/Observation?_id=103270```

Usage Notes: Further information on searching for ```_id`` can be found in the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_lastUpdated``` MUST be supported:

Examples:

```GET [base]/Observation?_lastUpdated=2021-12-08```

Usage Notes: For more information on searching for ```_lastUpdated``, see the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_profile`` MUST be supported:

Examples:

```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report```

Usage Notes: Further information on searching for ```_profile`` can be found in the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```based-on``` MUST be supported:

Examples:

```GET [base]/Observation?based-on=ServiceRequest/124455```

Usage Notes: For more information on searching for ```Observation.basedOn``, see the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```category``` MUST be supported:

Examples:

```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

```GET [base]/Observation?category=laboratory```

Usage Notes: For more information on searching for ```Observation.category``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```code`` MUST be supported:

Examples:

```GET [base]/Observation?code=http://loinc.org|94738-2```

```GET [base]/Observation?code=94738-2```

Usage Notes: For more information on searching for ```Observation.code``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```data-absent-reason``` MUST be supported:

Examples:

```GET [base]/Observation?data-absent-reason=http://hl7.org/fhir/codesystem-data-absent-reason.html|unknown```

````GET [base]/Observation?data-absent-reason=unknown```

Usage Notes: For more information on searching for ```Observation.data-absent-reason``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```date`` MUST be supported:

Examples:

``GET [base]/Observation?date=2021-06-01```

Usage Notes: Further information on searching for ```Observation.date`` can be found in the [FHIR Base Specification - Section "date"](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter ```derived-from``` MUST be supported:

Examples:

```GET [base]/Observation?derived-from=Media/ex-mii-patho-attached-image```

Usage Notes:Further information on searching for ```Observation.derivedFrom`` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```encounter`` MUST be supported:

Examples:

```GET [base]/Observation?encounter=Encounter/769808```

Usage Notes: Further information on searching for ```Observation.encounter`` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```has-member`` MUST be supported:

Examples:

``GET [base]/Observation?has-member=Observation/ex-mii-patho-biopsy-site-a```

Usage Notes: For more information on searching for ```Observation.hasMember``, see the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "identifier" MUST be supported:

Examples:

GET [base]/Observation?identifier=https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht|12345

GET [base]/Observation?identifier=12345

Usage Notes: Further information on searching for "Observation.identifier" can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```patient`` MUST be supported:

Examples:

``GET [base]/Observation?patient=Patient/12345```

Usage Notes: Further information on searching for ```Observation.subject.​where(resolve() is Patient)``` can be found in the [FHIR Base Specification - Reference Section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```performer`` MUST be supported:

Examples:

```GET [base]/Observation?performer=Practitioner/2346545```

Usage Notes: Further information on searching for ```Observation.performer`` can be found in the [FHIR Base Specification - Reference Section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```specimen`` MUST be supported:

Examples:

``GET [base]/DiagnosticReport?specimen=Specimen/987976```

Usage Notes: Further information on searching for ```Observation.specimen`` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```status`` MUST be supported:

Examples:

```GET [base]/Observation?status=final```

Usage Notes: Further information on searching for ```Observation.status`` can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```subject`` MUST be supported:

Examples:

``GET [base]/Observation?subject=Patient/12345```

Usage Notes: Further information on searching for ```Observation.subject`` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```value-string`` MUST be supported:

Examples:

```GET [base]/Observation?value-string:contains=Macroscopy```

Usage Notes: Further information on searching for ```Observation.value`` can be found in the [FHIR Base Specification - "string" section](http://hl7.org/fhir/R4/search.html#string).

1. The search parameter ```body-site`` MUST be supported:

Examples:

```GET [base]/Observation?body-site=716917000```

```GET [base]/Observation?body-site=http://snomed.info/sct|716917000```

Usage Notes: Further information on searching for ```Observation.bodySite`` can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```value-ratio`` MUST be supported:

Examples:

```GET [base]/Observation?value-ratio=le5.4|http://unitsofmeasure.org|mg```

Usage Notes: Further information on searching for ```(Observation.value as Quantity) | (Observation.value as Ratio) can be found in the [FHIR Base Specification - "quantity" section](http://hl7.org/fhir/R4/search.html#quantity).

1. The combo-value-concept search parameter MUST be supported:

Examples:

GET [base]/Observation?body-site=716917000
GET [base]/Observation?combo-value-concept=http://snomed.info/sct|716917000

Usage Notes: Further information on searching for (Observation.value as CodeableConcept) | (Observation.component.value as CodeableConcept) can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```combo-value-quantity``` MUST be supported:

Examples:

```GET [base]/Observation?combo-value-quantity=le5.4|http://unitsofmeasure.org|mg```

Usage Notes: More information on searching for ```(Observation.value as Quantity) | (Whether(Observation.​value as SampledData) | (Observation.​component.​value as Quantity) | (Observation.​component.​value as SampledData) can be found in the [FHIR Base Specification - "quantity" section](http://hl7.org/fhir/R4/search.html#quantity).
--------------------------------
### Examples
{{json:mii-exa-patho-biopsy-site-a}}