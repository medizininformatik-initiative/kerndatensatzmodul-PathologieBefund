---
topic: PathoAttachedImage
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image
---

## {{page-title}}

### Description

The **MII PR Patho Attached Image** profile of the Media resource is used to describe images embedded in the MII PR Patho Report. To include images in **MII PR Patho Finding**, a reference to an imaging study must be used. This profile should preferably only be used to "illustrate" a pathology report.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image}}
    </tab>
</tabs>

------------------------------------------------------
### List of all must-support data elements
| FHIR element | Explanation |
|--|--|
|Media.id | Must-support, but optional |
|Media.meta.lastUpdated | Must-support, but optional |
|Media.meta.profile | Must-support, but optional |
|Media.partOf | Reference to medium |
|Media.status | Event status |
|Media.text|Textual description of the recording|
|Media.type|Media type (Image)|
|Media.subject|Reference to sample|
|Media.content|Media attachment|

------------------------------------------------------------
### Reference to the Logical Model
| FHIR Element | Logical Data Model |
|--|--|
|Media.id | EmbeddedImage.ID |
|Media.partOf| Media |
|Media.status| EmbeddedImage.Status |
|Media.type| EmbeddedImage.Type |
|Media.subject| Sample |
|Media.content| EmbeddedImage.Content |

---

### Search Parameters

The following search parameters are relevant for the Pathology Reports module, even in combination:

1. The search parameter ```_id`` MUST be supported:

Examples:

``GET [base]/Media?_id=103270```

Usage Notes: Further information on searching for ```_id`` can be found in the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_lastUpdated``` MUST be supported:

Examples:

```GET [base]/Media?_lastUpdated=2021-12-08```

Usage Notes: For more information on searching for ```_lastUpdated``, see the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_profile`` MUST be supported:

Examples:

```GET [base]/Media?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image```

Usage Notes: Further information on searching for ```_profile`` can be found in the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```created`` MUST be supported:

Examples:

``GET [base]/Media?created=2021-06-08```

Usage Notes: Further information on searching for ```Media.created`` can be found in the [FHIR Base Specification - "date" section](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter ```status`` MUST be supported:

Examples:

```GET [base]/Media?status=completed```

Usage Notes: Further information on searching for ```Media.status`` can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "subject" MUST be supported:

Examples:

GET [base]/Media?subject=Specimen/ex-mii-patho-prostate-tru-cut-biopsy-sample

Usage Notes: For more information on searching for "Media.subject," see the [FHIR Base Specification - Reference Section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```type`` MUST be supported:

Examples:

```GET [base]/Media?type=image```

```GET [base]/Media?type=http://terminology.hl7.org/CodeSystem/media-type|image```

Usage Notes: For more information on searching for ```Media.type``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```part-of`` MUST be supported:

Examples:

```GET [base]/Media?part-of=Media/9878097```

Usage Notes: For more information on searching for ```(Media.partOf as Media)```, see the [FHIR Base Specification - Reference Section](http://hl7.org/fhir/R4/search.html#reference).


--------------------------------
### Example
{{json:mii-exa-patho-attached-image}}
