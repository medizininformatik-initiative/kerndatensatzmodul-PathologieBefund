# mii-exa-patho-diagnostic-conclusion-3 - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-patho-diagnostic-conclusion-3**

## Example Observation: mii-exa-patho-diagnostic-conclusion-3

-------

**English**

-------

Profile: [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md) version: 2027.0.0-ballot.rc1

**status**: Final

**category**: Laboratory, Pathology report final diagnosis Narrative

**code**: Prostate cancer grade group [Score] in Prostate tumor Qualitative

**value**: ISUP Grade (Grade Group) 1 (Gleason score <=6)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-patho-diagnostic-conclusion-3",
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
      "code" : "94734-1"
    }]
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA30794-4",
      "display" : "ISUP Grade (Grade Group) 1 (Gleason score <=6)"
    }]
  }
}

```
