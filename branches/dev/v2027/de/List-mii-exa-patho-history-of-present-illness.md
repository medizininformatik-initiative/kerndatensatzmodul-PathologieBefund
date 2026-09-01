# MII EXA Patho History Of Present Illness - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Patho History Of Present Illness**

## Beispiel List: MII EXA Patho History Of Present Illness

-------

**German**

-------

Profile: [MII PR Patho History Of Present Illness](StructureDefinition-mii-pr-patho-history-of-present-illness.md) version: 2027.0.0-ballot.rc

| | | |
| :--- | :--- | :--- |
| Mode: Snapshot List | Status: Current | Code: History of Present illness |
| Subject:[Max Mustermann Male, DoB: 1959-08-24](Patient-mii-exa-patho-patient-12345.md) | | |

* **Items**: [Condition History of malignant neoplasm (situation)](Condition-mii-exa-patho-problem-list-item-2.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-patho-history-of-present-illness",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness|2027.0.0-ballot.rc"]
  },
  "status" : "current",
  "mode" : "snapshot",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "8684-3",
      "display" : "History of Present illness"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-patho-patient-12345"
  },
  "entry" : [{
    "item" : {
      "reference" : "Condition/mii-exa-patho-problem-list-item-2"
    }
  }]
}

```
