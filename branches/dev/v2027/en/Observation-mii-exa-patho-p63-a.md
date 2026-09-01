# mii-exa-patho-p63-a - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-patho-p63-a**

## Example Observation: mii-exa-patho-p63-a

-------

**English**

-------

Profile: [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md) version: 2027.0.0-ballot.rc

**status**: Final

**category**: Laboratory, Pathology report microscopic observation Narrative Other stain

**code**: P63 protein [Interpretation] in Blood or Tissue Qualitative

**value**: Die Tumorzellen sind negativ für p63

**specimen**: [Specimen: identifier = Filler Identifier; accessionIdentifier = https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht#E12345_21; status = available; type = Tissue section (specimen)](Specimen-mii-exa-patho-prostate-biopsy-schnitt-p63.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-patho-p63-a",
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
      "code" : "101548-6"
    }]
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA11883-8"
    }],
    "text" : "Die Tumorzellen sind negativ für p63"
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-patho-prostate-biopsy-schnitt-p63"
  }
}

```
