# mii-exa-patho-micro-grouper-a - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-patho-micro-grouper-a**

## Example Observation: mii-exa-patho-micro-grouper-a

-------

**English**

-------

Profile: [MII PR Patho Microscopic Grouper](StructureDefinition-mii-pr-patho-microscopic-grouper.md) version: 2027.0.0-ballot.rc

**status**: Final

**category**: Laboratory

**code**: Pathology report microscopic observation Narrative Other stain

**value**: Specimen A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders...

**hasMember**: 

* [Observation Histologic type of proliferative mass](Observation-mii-exa-patho-histologic-type-a.md)
* [Observation Gleason pattern.primary in Prostate tumor](Observation-mii-exa-patho-gleason-pattern-a.md)
* [Observation P63 protein [Interpretation] in Blood or Tissue Qualitative](Observation-mii-exa-patho-p63-a.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-patho-micro-grouper-a",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper|2027.0.0-ballot.rc"]
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
      "code" : "22635-7"
    }]
  },
  "valueString" : "Specimen A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders...",
  "hasMember" : [{
    "reference" : "Observation/mii-exa-patho-histologic-type-a"
  },
  {
    "reference" : "Observation/mii-exa-patho-gleason-pattern-a"
  },
  {
    "reference" : "Observation/mii-exa-patho-p63-a"
  }]
}

```
