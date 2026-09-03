# MII EXA Patho Attached Image - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Patho Attached Image**

## Example Media: MII EXA Patho Attached Image

-------

**English**

-------

Profile: [MII PR Patho Attached Image](StructureDefinition-mii-pr-patho-attached-image.md) version: 2027.0.0-ballot.rc1

**status**: Completed

**type**: Image

**subject**: [Specimen: extension = ; identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht#E12345_21; status = available; type = Prostate tru-cut biopsy sample](Specimen-mii-exa-patho-prostate-tru-cut-biopsy-sample.md)

### Contents

| | |
| :--- | :--- |
| - | **Url** |
| * | [https://pathologie.klinikum-karlsruhe.de/fhir/fn/image](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://pathologie.klinikum-karlsruhe.de/fhir/fn/image) |



## Resource Content

```json
{
  "resourceType" : "Media",
  "id" : "mii-exa-patho-attached-image",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image|2027.0.0-ballot.rc1"]
  },
  "status" : "completed",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/media-type",
      "code" : "image"
    }]
  },
  "subject" : {
    "reference" : "Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample"
  },
  "content" : {
    "url" : "https://pathologie.klinikum-karlsruhe.de/fhir/fn/image"
  }
}

```
