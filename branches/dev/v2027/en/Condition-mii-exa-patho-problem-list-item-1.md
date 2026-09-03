# MII EXA Patho Problem List Item 1 - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Patho Problem List Item 1**

## Example Condition: MII EXA Patho Problem List Item 1

-------

**English**

-------

Profile: [MII PR Patho Problem List Item](StructureDefinition-mii-pr-patho-problem-list-item.md) version: 2027.0.0-ballot.rc1

**category**: Problem List Item

**code**: Malignant neoplastic disease (disorder)

**subject**: [Max Mustermann Male, DoB: 1959-08-24](Patient-mii-exa-patho-patient-12345.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-patho-problem-list-item-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item|2027.0.0-ballot.rc1"]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "problem-list-item"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363346000",
      "display" : "Malignant neoplastic disease (disorder)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-patho-patient-12345"
  }
}

```
