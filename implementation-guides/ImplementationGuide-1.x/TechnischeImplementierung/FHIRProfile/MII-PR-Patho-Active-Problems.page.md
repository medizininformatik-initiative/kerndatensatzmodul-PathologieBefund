## {{page-title}}

### Beschreibung

Das Profil [MII PR Patho Active Problems](https://simplifier.net/medizininformatikinitiative-modulpathologie/mii_pr_patho_active_problems_list) der Ressource [List](http://hl7.org/fhir/R4/list.html) stellt eine Liste der zu dem Untersuchungszeitpunkt vorhandenen Erkrankungen u/o Probleme des/der Patient:in dar, welche die Klinische Fragestellung des Einsenders innerhalb der Supporting Information des Profils [MII PR Patho Service Request](https://simplifier.net/medizininformatikinitiative-modulpathologie/pathologyservicerequest) abbilden.

Die einzelnen Erkrankungen/Fragestellungen können mithilfe des Profils [MII PR Patho Problem List Item](https://simplifier.net/medizininformatikinitiative-modulpathologie/mii_pr_patho_problem_list_item) dargestellt werden. 


@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list' select Name: name, Canonical: url
```

---------------------
### Differential
{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list, diff}}

-----------------------------------------------
### Liste aller Must-Support Datenelemente
| FHIR-Element | Erklärung |
|--|--|
|List.status| Finale & vorläufige Ergebnisse sind zulässig |
|List.mode| Fixed auf [#snapshot](http://hl7.org/fhir/R4/valueset-list-mode.html) (This list was prepared as a snapshot. It should not be assumed to be current.) |
|List.code| Fixed auf LOINC [11450-4](https://loinc.org/11450-4/) "Problem list - Reported" |
|List.subject| Referenz auf Patient:in  |
|List.entry| Referenz auf [MII PR Patho Problem List Item](https://simplifier.net/medizininformatikinitiative-modulpathologie/mii_pr_patho_problem_list_item) |


--------------------------------------------
### Referenz zum Logical Model

| FHIR-Element | Logisches Datenmodell |
|--|--|

---

### Snapshot
{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list}}

--------------------------------
### Beispiele
