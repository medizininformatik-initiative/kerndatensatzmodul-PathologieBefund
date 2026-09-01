# mii-exa-patho-histologic-type-a - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-patho-histologic-type-a**

## Beispiel Observation: mii-exa-patho-histologic-type-a

-------

**German**

-------

Profile: [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md) version: 2027.0.0-ballot.rc

**status**: Final

**category**: Laboratory, Pathology report microscopic observation Narrative Other stain

**code**: Histologic type of proliferative mass

**value**: Acinar cell carcinoma

**specimen**: [Specimen: identifier = Filler Identifier; accessionIdentifier = https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht#E12345_21; status = available; type = Tissue section (specimen)](Specimen-mii-exa-patho-prostate-biopsy-schnitt-HE.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-patho-histologic-type-a",
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
      "system" : "http://snomed.info/sct",
      "code" : "371441004"
    }]
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "45410002"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-patho-prostate-biopsy-schnitt-HE"
  }
}

```
