# mii-exa-patho-macro-grouper-a - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-patho-macro-grouper-a**

## Example Observation: mii-exa-patho-macro-grouper-a

-------

**English**

-------

Profile: [MII PR Patho Macroscopic Grouper](StructureDefinition-mii-pr-patho-macroscopic-grouper.md) version: 2027.0.0-ballot.rc1

**status**: Final

**category**: Laboratory

**code**: Pathology report gross observation Narrative

**hasMember**: 

* [Observation Biopsy site Patient](Observation-mii-exa-patho-biopsy-site-a.md)
* [Observation Length of tissue core(s)](Observation-mii-exa-patho-tissue-length-a.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-patho-macro-grouper-a",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2027.0.0-ballot.rc1"]
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
      "code" : "22634-0"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-patho-biopsy-site-a"
  },
  {
    "reference" : "Observation/mii-exa-patho-tissue-length-a"
  }]
}

```
