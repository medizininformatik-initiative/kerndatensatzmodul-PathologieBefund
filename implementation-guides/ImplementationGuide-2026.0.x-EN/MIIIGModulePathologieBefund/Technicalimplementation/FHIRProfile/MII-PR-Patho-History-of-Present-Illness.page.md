---
topic: PathoHistoryOfPresentIllness
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness
---

## {{page-title}}

### Description

The **MII PR Patho History of Present Illness** profile of the resource [List](http://hl7.org/fhir/R4/list.html) depicts the sender's description of the medical history and is part of the "supportingInfo" in the **MII PR Patho Service Request** profile.

The individual diseases/problems can be displayed using the **MII PR Patho Problem List Item** profile.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness}}
    </tab>
</tabs>

-----------------------------------------------
### List of all must-support data elements
| FHIR element | Explanation |
|--|--|
|List.status| Final & preliminary results are allowed |
|List.mode| Fixed on [#snapshot](http://hl7.org/fhir/R4/valueset-list-mode.html) (This list was prepared as a snapshot. It should not be assumed to be current.) |
|List.code| Pattern Coding on LOINC [8684-3](https://loinc.org/8684-3/) "History of Present illness" |
|List.subject| Reference to patient |
|List.entry| Reference to [MII PR Patho Problem List Item](https://simplifier.net/medizininformatikinitiative-modulpathologie/mii_pr_patho_problem_list_item) |

--------------------------------------------
### References to the logical model

| FHIR-element | logical model |
|--|--|

--------------------------------
### Examples

{{json:mii-exa-patho-history-of-present-illness}}
