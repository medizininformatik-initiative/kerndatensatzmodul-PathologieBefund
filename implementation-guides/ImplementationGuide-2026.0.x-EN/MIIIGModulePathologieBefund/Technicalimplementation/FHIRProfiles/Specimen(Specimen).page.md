---
topic: PathoSpecimen
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen
---

## {{page-title}}

### Description

This profile inherits from [Profile - Specimen - Bioprobe - Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core) from the Biobank module.

It is based on the HL7 domain analysis model (HL7_DAM_SPECIMEN_R2_INFORM_2019APR). This model, particularly for pathology, considers the role model of specimens, which may be both subject and product of laboratory processes. The root element is the sample collected in the clinic. All samples removed in a single collection procedure, be they biologic (e.g. tissue) or non-biologic (e.g. orthopedic hardware) are considered a single “Case” and given a single identifier, often referred to as an accession. Child elements in the laboratory are "part", "block", and "section (slide)", called specimens. Each specimen is always found in or on a container.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen' select Name: name, Canonical: url
```

---

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen}}
    </tab>
</tabs>

-------------------------------
### List of all must-support data elements:
|FHIR Element |Explanation |
|--|--|
|Specimen.id |Must-support, but optional |
|Specimen.meta.lastUpdated |Must-support, but optional |
|Specimen.meta.profile |Must-support, but optional |
|Specimen.text|Textual description of the sample, must-support, but optional|
|Specimen.identifier|Identifier assigned by the sender (type="PLAC") and/or the laboratory (type="FILL"), must-support, but optional|
|Specimen.accessionIdentifier|Identifier assigned by the laboratory, identical to the accession or case number, see DiagnosticReport.identifier |
|Specimen.status|Status of the sample/specimen|
|Specimen.type|Sample/specimen type|
|Specimen.subject|Patient (inherited from the Person module of the MII https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient)|
|Specimen.parent|Parent sample/specimen from which the current sample/specimen was derived, e.g., block as parent sample of section, must-support, but optional|
|Specimen.request|Request for testing, must-support, but optional|
|Specimen.collection|Sample collection (from the patient)|
|Specimen.collection.collected|Time or period of sample collection|
|Specimen.collection.method|Sample collection procedure|
|Specimen.collection.bodySite|Origin of the sample from the patient, must-support, but optional|
|Specimen.collection.fastingStatus|Must-support, but optional|
|Specimen.processing|Sample processing, must-support, but optional|
|Specimen.processing.procedure|Laboratory procedure for sample/specimen processing|
|Specimen.processing.additive|Additive in the laboratory procedure for sample/specimen processing, to be used for both staining processes and for fixation, embedding, and coverslipping (see terminologies), must-support, but optional|
|Specimen.processing.time|Time or period of sample/specimen processing, must-support, but optional|
|Specimen.container|Sample/specimen container, must-support, but optional|
|Specimen.container.type|Type of sample/specimen container|
|Specimen.container.capacity|Capacity of the sample container, must-support, but optional|
|Specimen.container.specimenQuantity|Quantity of sample, must-support, but optional|
|Specimen.container.additive|Additive in the container, children of SNOMED CT Code 430864009|
|Specimen.note|Notes on the sample/specimen, must-support, but optional|

------------------------------------
### Reference to the Logical Model:
| FHIR Element | Logical Data Model |
|--|--|
|Specimen.id| Sample/specimen.Identification |
|Specimen.text| Sample/specimen.Text |
|Specimen.identifier|Sample/specimen.ProbeIdentifier |
|Specimen.accessionIdentifier|Sample.ProbeIdentifier |
|Specimen.status| Sample/specimen.Status |
|Specimen.type| Sample/specimen.ProbeType |
|Specimen.subject| Patient Reference |
|Specimen.request| Examination Request Reference |
|Specimen.collection| Sample.Collection |
|Specimen.collection.collected| Sample.Collection.CollectionTime |
|Specimen.collection.method| Sample.Collection.CollectionMethod |
|Specimen.collection.bodySite| Sample.Collection.Origin |
|Specimen.processing| Sample/specimen.Processing |
|Specimen.processing.procedure| Sample/specimen.Processing.Procedure| |Specimen.processing.additive|Sample/specimen.Processing.Additive and Sample/specimen.Container.Additive|
|Specimen.processing.time| |
|Specimen.container|Sample/specimen.Container|
|Specimen.container.type|Sample/specimen.Container.ContainerType|
|Specimen.container.capacity|Sample/specimen.Container.Capacity|
|Specimen.container.specimenQuantity||
|Specimen.container.additive|Sample/specimen.Container.Additive|
|Specimen.note|Sample/specimen.Note|

---

### Search Parameters

The following search parameters are relevant for the Pathology Report module, even in combination:

1. The search parameter ```_id`` MUST be supported:

Examples:

``GET [base]/Specimen?_id=103270```

Usage Notes: Further information on searching for ```_id`` can be found in the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_lastUpdated``` MUST be supported:

Examples:

```GET [base]/Specimen?_lastUpdated=2021-12-08```

Usage Notes: For more information on searching for ```_lastUpdated``, see the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_profile`` MUST be supported:

Examples:

```GET [base]/Specimen?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report```

Usage Notes: Further information on searching for ```_profile`` can be found in the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "identifier" MUST be supported:

Examples:

GET [base]/Specimen?identifier=https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht|E12345_21-A1-1HE

GET [base]/Specimen?identifier=E12345_21-A1-1HE

Usage Notes: Further information on searching for "Specimen.identifier" can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "accession" MUST be supported:

Examples:

GET [base]/Specimen?accession=https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht|E12345_21

GET [base]/Specimen?identifier=E12345_21

Usage Notes: Further information on searching for "Specimen.accessionIdentifier" can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```status`` MUST be supported:

Examples:

``GET [base]/Specimen?status=available```

Usage Notes: For more information on searching for ```Specimen.status``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```type`` MUST be supported:

Examples:

```GET [base]/Specimen?type=787150001```

```GET [base]/Specimen?type=http://snomed.info/sct|787150001```

Usage Notes: Further information on searching for ```Specimen.type`` can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```subject`` MUST be supported:

Examples:

``GET [base]/Specimen?subject=Patient/12345```

Usage Notes: Further information on searching for ```Specimen.subject`` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```parent`` MUST be supported:

Examples:

```GET [base]/Specimen?parent=Specimen/ex-mii-patho-prostate-tru-cut-biopsy-sample```

Usage Notes: Further information on searching for ```Specimen.parent`` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```collected`` MUST be supported:

Examples:

```GET [base]/Specimen?collected=2021-01-29```

Usage Notes: Further information on searching for ```Specimen.​collection.​collected``` can be found in the [FHIR Base Specification - "date" section](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter ```collector`` MUST be supported:

Examples:

```GET [base]/Specimen?collector=Practitioner/2346545```

Usage Notes: Further information on searching for ```Specimen.collection.collector`` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```body-site`` MUST be supported:

Examples:

```GET [base]/Specimen?body-site=716917000```

```GET [base]/Specimen?body-site=http://snomed.info/sct|716917000```

Usage Notes: For more information on searching for ```Specimen.collection-bodySite``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```container`` MUST be supported:

Examples:

```GET [base]/Specimen?container=434746001```

```GET [base]/Specimen?container=http://snomed.info/sct|434746001```

Usage Notes: Further information on searching for ```Specimen.​container.​type```can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```patient`` MUST be supported:

Examples:

```GET [base]/Specimen?patient=Patient/12345```

Usage Notes: Further information on searching for ```Specimen.subject.​where(resolve() is Patient)``` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```request`` MUST be supported:

Examples:

```GET [base]/Specimen?request=ServiceRequest/ex-mii-patho-request```

Usage Notes: For more information on searching for ```Specimen.request``, see the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```collection-method``` MUST be supported:

Examples:

```GET [base]/Specimen?collection-method=301759007```

```GET [base]/Specimen?collection-method=http://snomed.info/sct|301759007```

Usage Notes: Further information on searching for ```Specimen.​collection.method``` can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```collection-body-site``` MUST be supported:

Examples:

```GET [base]/Specimen?collection-body-site=716917000```

```GET [base]/Specimen?collection-body-site=http://snomed.info/sct|716917000```

Usage Notes: For more information on searching for ```Specimen.​collection.bodySite``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```processing-procedure``` MUST be supported:

Examples:

```GET [base]/Specimen?processing-procedure=104210008```

```GET [base]/Specimen?processing-procedure=http://snomed.info/sct|104210008```

Usage Notes: Further information on searching for ```Specimen.​processing.procedure``` can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```processing-additive``` MUST be supported:

Examples:

```GET [base]/Specimen?processing-additive=Substance/ex-mii-patho-hematoxylin-stain```

Usage Notes: For more information on searching for ```Specimen.processing.additive```, see the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The processing-date search parameter MUST be supported:

Examples:

GET [base]/Specimen?processing-date=2021-01-29

Usage Notes: For more information on searching for Specimen.processing.time, see the [FHIR Base Specification - "date" section](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter ```container-additive`` MUST be supported:

Examples:

``GET [base]/Specimen?container-additive=Substance/mii-exa-patho-neutral-buffered-formalin```

Usage Notes: For more information on searching for ```Specimen.container.additive``, see the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

---------------------------------------
### Examples:
{{json:mii-exa-patho-specimen-a}}
