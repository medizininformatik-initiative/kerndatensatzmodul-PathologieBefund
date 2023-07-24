## {{page-title}}

### Beschreibung

Das Profil [MII PR Patho History of Present Illness](https://simplifier.net/medizininformatikinitiative-modulpathologie/mii_pr_patho_history_of_present_illness) der Resource [List](http://hl7.org/fhir/R4/list.html) bildet die Beschreibung der Anamnese durch den Einsender ab und ist Teil der "supportingInfo" im Profil [MII PR Patho Service Request](https://simplifier.net/medizininformatikinitiative-modulpathologie/pathologyservicerequest) ab. 

Die einzelnen Erkrankungen/Probleme können mithilfe des Profils [MII PR Patho Problem List Item](https://simplifier.net/medizininformatikinitiative-modulpathologie/mii_pr_patho_problem_list_item) dargestellt werden.  

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness' select Name: name, Canonical: url
```

---------------------
### Differential
{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness, diff}}

-----------------------------------------------
### Liste aller Must-Support Datenelemente
| FHIR-Element | Erklärung |
|--|--|
|List.status| Finale & vorläufige Ergebnisse sind zulässig |
|List.mode| Fixed auf [#snapshot](http://hl7.org/fhir/R4/valueset-list-mode.html) (This list was prepared as a snapshot. It should not be assumed to be current.) |
|List.code| Pattern Coding auf LOINC [8684-3](https://loinc.org/8684-3/) "History of Present illness" |
|List.subject| Referenz auf Patient:in  |
|List.entry| Referenz auf [MII PR Patho Problem List Item](https://simplifier.net/medizininformatikinitiative-modulpathologie/mii_pr_patho_problem_list_item) |

--------------------------------------------
### Referenz zum Logical Model

| FHIR-Element | Logisches Datenmodell |
|--|--|

---

### Snapshot
{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness}}

--------------------------------
### Beispiele