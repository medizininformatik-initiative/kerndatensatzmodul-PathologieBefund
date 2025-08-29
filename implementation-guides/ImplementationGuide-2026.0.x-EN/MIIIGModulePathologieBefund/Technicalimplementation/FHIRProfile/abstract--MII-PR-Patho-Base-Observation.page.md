---
topic: PathoBaseObservation
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-base-observation
---

## {{page-title}}

### Description
This abstract profile collects all common profiling requirements of the pathology observations and serves as the basis for all other observation profiles in this module. As an abstract profile, it cannot be instantiated.


@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-base-observation' select Name: name, Canonical: url
```

-------------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-base-observation, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-base-observation, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-base-observation, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-base-observation}}
    </tab>
</tabs>

----------------------------------
### List of all must-support data elements
| FHIR element | Explanation |
|--|--|
|Observation.id | Must-support, but optional |
|Observation.text | Text describing the observation |
|Observation.meta.lastUpdated | Must-support, but optional |
|Observation.meta.profile | Must-support, but optional |
|Observation.identifier| Observation must be clearly identifiable, no coding requirements, preference: derivation from the accession number (part-block-slide) |
|Observation.basedOn|Order/request that initiated the observation |
|Observation.status|Final & preliminary results are acceptable |
|Observation.category|Category of observation |
|Observation.code|Code of observation, LOINC preferred |
|Observation.subject| Reference to the patient (inherited from the Person module of the MII https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient) |
|Observation.effective[x]|Time or period of observation |
|Observation.bodySite| Body site where the observation is made, must-support, but optional |
|Observation.method| Observation method |
|Observation.specimen| Reference to the observed sample/specimen (1) |
|Observation.hasMember | Resource belonging to the observation report section |
|Observation.derivedFrom | Reference to related resources from which the observation was derived |

```(1) Referencing more than one sample is currently not possible due to the FHIR core specification. For a more detailed problem description and current workarounds, see [here](https://jira.hl7.org/browse/FHIR-34002).

-----------------------------------------------------------------
### Reference to the Logical Model
| FHIR Element | Logical Data Model |
|--|--|
|Observation.id | Generic Pathological-Anatomical Observation.id |
|Observation.text | Generic Pathological-Anatomical Observation.Text |
|Observation.meta | Generic Pathological-Anatomical Observation.meta |
|Observation.identifier | Generic pathological-anatomical observation.Identifier |
|Observation.basedOn | Examination order/request |
|Observation.status | Generic pathological-anatomical observation.Status |
|Observation.category | Generic pathological-anatomical observation.Category |
|Observation.code | Generic pathological-anatomical observation.Code |
|Observation.subject | Patient |
|Observation.effective | Generic pathological-anatomical observation.Time observation has been made |
|Observation.issued | Generic pathological-anatomical observation.Date |
|Observation.performer | Generic pathological-anatomical observation.Performer (.Author, .Informant) |
|Observation.value | Generic pathological-anatomical observation.Value |
|Observation.dataAbsentReason | |
|Observation.interpretation |Generic pathological-anatomical observation.Interpretation |
|Observation.note | Generic pathological-anatomical observation.Comment |
|Observation.method | Generic pathological-anatomical observation.Method |
|Observation.specimen | Generic pathological-anatomical observation.Specimen |
|Observation.hasMember | Generic pathological-anatomical observation.Subobservation |
|Observation.derivedFrom |Generic pathological-anatomical observation.EmbeddedImage |
|Observation.component |Generic pathological-anatomical observation.Subobservation |

-----------------------------------------------
