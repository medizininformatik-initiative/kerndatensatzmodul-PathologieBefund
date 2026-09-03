# mii-exa-patho-diagnostic-conclusion-grouper - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-patho-diagnostic-conclusion-grouper**

## Example Observation: mii-exa-patho-diagnostic-conclusion-grouper

-------

**English**

-------

Profile: [MII PR Patho Diagnostic Conclusion Grouper](StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.md) version: 2027.0.0-ballot.rc1

**status**: Final

**category**: Laboratory

**code**: Pathology report final diagnosis Narrative

**hasMember**: 

* [Observation Histology and Behavior ICD-O-3 Cancer](Observation-mii-exa-patho-diagnostic-conclusion-1.md)
* [Observation Gleason score in Specimen Qualitative](Observation-mii-exa-patho-diagnostic-conclusion-2.md)
* [Observation Prostate cancer grade group [Score] in Prostate tumor Qualitative](Observation-mii-exa-patho-diagnostic-conclusion-3.md)

**derivedFrom**: 

* [Observation Pathology report gross observation Narrative](Observation-mii-exa-patho-macro-grouper-a.md)
* [Observation Pathology report microscopic observation Narrative Other stain](Observation-mii-exa-patho-micro-grouper-a.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-patho-diagnostic-conclusion-grouper",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "22637-3"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-patho-diagnostic-conclusion-1"
  },
  {
    "reference" : "Observation/mii-exa-patho-diagnostic-conclusion-2"
  },
  {
    "reference" : "Observation/mii-exa-patho-diagnostic-conclusion-3"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-patho-macro-grouper-a"
  },
  {
    "reference" : "Observation/mii-exa-patho-micro-grouper-a"
  }]
}

```
