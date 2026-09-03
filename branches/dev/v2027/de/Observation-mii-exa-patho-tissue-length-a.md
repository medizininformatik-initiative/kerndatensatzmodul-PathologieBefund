# mii-exa-patho-tissue-length-a - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-patho-tissue-length-a**

## Beispiel Observation: mii-exa-patho-tissue-length-a

-------

**German**

-------

Profile: [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md) version: 2027.0.0-ballot.rc1

**status**: Final

**category**: Laboratory, Pathology report gross observation Narrative

**code**: Length of tissue core(s)

**value**: 1.2 cm (Details: UCUM codecm = 'cm')

**specimen**: [Specimen: extension = ; identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht#E12345_21; status = available; type = Prostate tru-cut biopsy sample](Specimen-mii-exa-patho-prostate-tru-cut-biopsy-sample.md)

**derivedFrom**: [Media: status = completed; type = Image](Media-mii-exa-patho-attached-image.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-patho-tissue-length-a",
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
      "code" : "44619-5",
      "display" : "Length of tissue core(s)"
    }]
  },
  "valueQuantity" : {
    "value" : 1.2,
    "unit" : "cm",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample"
  },
  "derivedFrom" : [{
    "reference" : "Media/mii-exa-patho-attached-image"
  }]
}

```
