# mii-exa-patho-gleason-pattern-a - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-patho-gleason-pattern-a**

## Example Observation: mii-exa-patho-gleason-pattern-a

-------

**English**

-------

Profile: [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md) version: 2027.0.0-ballot.rc

**status**: Final

**category**: Laboratory, Pathology report microscopic observation Narrative Other stain

**code**: Gleason pattern.primary in Prostate tumor

**value**: Gleason Pattern 3

**specimen**: [Specimen: identifier = Filler Identifier; accessionIdentifier = https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht#E12345_21; status = available; type = Tissue section (specimen)](Specimen-mii-exa-patho-prostate-biopsy-schnitt-HE.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-patho-gleason-pattern-a",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot.rc"]
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
      "code" : "22635-7"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "44641-9"
    }]
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "369772003"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-patho-prostate-biopsy-schnitt-HE"
  }
}

```
