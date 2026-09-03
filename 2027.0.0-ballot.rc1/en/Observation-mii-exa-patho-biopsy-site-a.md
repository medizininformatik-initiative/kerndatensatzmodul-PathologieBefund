# mii-exa-patho-biopsy-site-a - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-patho-biopsy-site-a**

## Example Observation: mii-exa-patho-biopsy-site-a

-------

**English**

-------

Profile: [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md) version: 2027.0.0-ballot.rc1

**status**: Final

**category**: Laboratory, Pathology report gross observation Narrative

**code**: Biopsy site Patient

**value**: Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)

**specimen**: [Specimen: extension = ; identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht#E12345_21; status = available; type = Prostate tru-cut biopsy sample](Specimen-mii-exa-patho-prostate-tru-cut-biopsy-sample.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-patho-biopsy-site-a",
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
      "code" : "22634-0"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "94738-2",
      "display" : "Biopsy site Patient"
    }]
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "716917000",
      "display" : "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample"
  }
}

```
