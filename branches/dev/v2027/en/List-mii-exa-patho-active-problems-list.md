# MII EXA Patho Active Problems List - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Patho Active Problems List**

## Example List: MII EXA Patho Active Problems List

-------

**English**

-------

Profile: [MII PR Patho Active Problems List](StructureDefinition-mii-pr-patho-active-problems-list.md) version: 2027.0.0-ballot.rc

| | | |
| :--- | :--- | :--- |
| Mode: Snapshot List | Status: Current | Code: Problemliste - Berichtet |
| Subject:[Max Mustermann Male, DoB: 1959-08-24](Patient-mii-exa-patho-patient-12345.md) | | |

* **Items**: [Condition Malignant neoplastic disease (disorder)](Condition-mii-exa-patho-problem-list-item-1.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-patho-active-problems-list",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list|2027.0.0-ballot.rc"]
  },
  "status" : "current",
  "mode" : "snapshot",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11450-4",
      "display" : "Problemliste - Berichtet"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-patho-patient-12345"
  },
  "entry" : [{
    "item" : {
      "reference" : "Condition/mii-exa-patho-problem-list-item-1"
    }
  }]
}

```
