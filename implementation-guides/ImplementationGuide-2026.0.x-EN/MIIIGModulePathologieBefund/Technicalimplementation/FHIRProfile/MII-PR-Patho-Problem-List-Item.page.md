---
topic: PathoProblemListItem
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item
---

## {{page-title}}

### Description

The **MII PR Patho Problem List Item** profile of the Resource Condition represents the individual list entries of the **MII PR Patho Active Problems** and **MII PR Patho History of Present Illness** profiles.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item}}
    </tab>
</tabs>

-----------------------------------------------
### List of all must-support data elements
| FHIR element | Explanation |
|--|--|
|Condition.category| Pattern coding on ["problem-list-item"](http://terminology.hl7.org/CodeSystem/condition-category) |
|Condition.code| Extensible binding on [MII VS Patho Problem List SNOMED CT](https://simplifier.net/medizininformatikinitiative-modulpathologie/vs-mii-patho-problem-list-snomed)|
|Condition.subject| Reference to patient |

---------------------------------------------
### Logical Model Reference

| FHIR Element | Logical Data Model |
|--|--|

--------------------------------
### Examples

{{json:mii-exa-patho-problem-list-item-1}}

---

{{json:mii-exa-patho-problem-list-item-2}}
