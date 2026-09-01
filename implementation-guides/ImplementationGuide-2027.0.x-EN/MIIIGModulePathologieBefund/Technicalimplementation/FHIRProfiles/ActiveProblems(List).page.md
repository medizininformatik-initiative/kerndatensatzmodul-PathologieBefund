---
topic: PathoActiveProblems
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list
---

## {{page-title}}

### Description

The **MII PR Patho Active Problems** profile of the resource [List](http://hl7.org/fhir/R4/list.html) represents a list of the patient's existing diseases and/or problems at the time of examination, which reflect the sender's clinical question within the supporting information of the **MII PR Patho Service Request** profile.

The individual diseases/questions can be represented using the **MII PR Patho Problem List Item** profile.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list}}
    </tab>
</tabs>

-----------------------------------------------

### List of all must-support data elements

| FHIR-element | Explanation |
|--|--|
|List.status| Final & preliminary results are allowed |
|List.mode| Fixed on [#snapshot](http://hl7.org/fhir/R4/valueset-list-mode.html) (This list was prepared as a snapshot. It should not be assumed to be current.) |
|List.code| Fixed on LOINC [11450-4](https://loinc.org/11450-4/) "Problem list - Reported" |
|List.subject| Reference to patient  |
|List.entry| Reference to [MII PR Patho Problem List Item](https://simplifier.net/medizininformatikinitiative-modulpathologie/mii_pr_patho_problem_list_item) |


--------------------------------------------
### Reference to the Logical model

| FHIR-element | Logical model |
|--|--|

--------------------------------
### Examples

{{json:mii-exa-patho-active-problems-list}}
