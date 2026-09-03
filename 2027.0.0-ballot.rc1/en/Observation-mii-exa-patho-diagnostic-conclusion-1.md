# mii-exa-patho-diagnostic-conclusion-1 - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-patho-diagnostic-conclusion-1**

## Example Observation: mii-exa-patho-diagnostic-conclusion-1

-------

**English**

-------

Profile: [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md) version: 2027.0.0-ballot.rc1

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Histology and Behavior ICD-O-3 Cancer

**value**: Adenokarzinom o.n.A.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-patho-diagnostic-conclusion-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  },
  {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "22637-3"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "59847-4"
    }]
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "8140/3",
      "display" : "Adenocarcinoma, NOS"
    }],
    "text" : "Adenokarzinom o.n.A."
  }
}

```
