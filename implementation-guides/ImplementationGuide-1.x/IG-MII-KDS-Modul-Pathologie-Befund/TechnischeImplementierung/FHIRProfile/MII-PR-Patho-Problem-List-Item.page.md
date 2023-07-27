---
topic: PathoProblemListItem
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item
---

## {{page-title}}

### Beschreibung

Das Profil **MII PR Patho Problem List Item** der Resource Condition stellt die einzelnen Listeneinträge der Profile **MII PR Patho Active Problems** und **MII PR Patho History of Present Illness** dar. 

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
### Liste aller Must-Support Datenelemente
| FHIR-Element | Erklärung |
|--|--|
|Condition.category| Pattern-Coding auf ["problem-list-item"](http://terminology.hl7.org/CodeSystem/condition-category) |
|Condition.code| Extensible Binding auf [MII VS Patho Problem List SNOMED CT](https://simplifier.net/medizininformatikinitiative-modulpathologie/vs-mii-patho-problem-list-snomed)|
|Condition.subject| Referenz auf Patient:in |

---------------------------------------------
### Referenz zum Logical Model

| FHIR-Element | Logisches Datenmodell |
|--|--|

--------------------------------
### Beispiele