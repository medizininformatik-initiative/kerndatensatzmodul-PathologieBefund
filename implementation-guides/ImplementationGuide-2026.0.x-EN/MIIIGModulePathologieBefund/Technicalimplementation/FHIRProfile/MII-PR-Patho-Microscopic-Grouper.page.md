---
topic: MicroGrouper
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper
---

<a id="MicroGrouper"></a>
## {{page-title}}

### Description

The **MII PR Patho Microscopic Grouper** profile of the Resource Observation represents the respective observation report section "Microscopic Assessment" (corresponding to this CDA section) for an **MII PR Patho Report** as `DiagnosticReport.result:microscopic-grouper` and acts as an organizer for the corresponding groupings of **MII PR Patho Finding**.

This special Grouper Observation element must be placed before all other Observation elements, which are then included as `hasMember` or `derivedFrom` references to **MII PR Patho Finding**.

If this observation report section contains multiple samples, only one **MII PR Patho Microscopic Grouper** should be present. The organisation of the **MII PR Patho Findings** according to the different samples is done by the specimen references of those findings, especially regarding the "parts".

For a list and explanation of the FHIR elements, see **MII PR Patho Section Grouper**.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper}}
    </tab>
</tabs>

---

### Search Parameters

The following search parameters are relevant for the Pathology Findings module, also in combination:

1. The search parameter ```_id`` MUST be supported:

Examples:

```GET [base]/Observation?_id=103270```

Usage Notes: Further information on searching for ```_id`` can be found in the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_lastUpdated``` MUST be supported:

Examples:

```GET [base]/Observation?_lastUpdated=2021-12-08```

Usage Notes: For more information on searching for ```_lastUpdated```, see the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

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

```GET [base]/Observation?code=http://loinc.org|22635-7```

````GET [base]/Observation?code=22635-7```

Usage Notes: For more information on searching for ```Observation.code``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```data-absent-reason``` MUST be supported:

Examples:

```GET [base]/Observation?data-absent-reason=http://hl7.org/fhir/codesystem-data-absent-reason.html|unknown```

```GET [base]/Observation?data-absent-reason=unknown```

Usage Notes: For more information on searching for ```Observation.data-absent-reason``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```date`` MUST be supported:

Examples:

```GET [base]/Observation?date=2021-06-01```Usage Notes: For more information on searching for ```Observation.date``, see the [FHIR Base Specification - "date" section](http://hl7.org/fhir/R4/search.html#date).

1. The ```encounter`` search parameter MUST be supported:

Examples:

```GET [base]/Observation?encounter=Encounter/769808```

Usage Notes: For more information on searching for ```Observation.encounter``, see the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

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

```GET [base]/Observation?value-string:contains=Microscopy```

Usage Notes: Further information on searching for ```Observation.value`` can be found in the [FHIR Base Specification - "string" section](http://hl7.org/fhir/R4/search.html#string).

1. The search parameter ```body-site`` MUST be supported:

Examples:

```GET [base]/Observation?body-site=716917000```

```GET [base]/Observation?body-site=http://snomed.info/sct|716917000```

Usage Notes: Further information on searching for ```Observation.bodySite`` can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

--------------------------------
### Examples
{{json:mii-exa-patho-micro-grouper-a}}