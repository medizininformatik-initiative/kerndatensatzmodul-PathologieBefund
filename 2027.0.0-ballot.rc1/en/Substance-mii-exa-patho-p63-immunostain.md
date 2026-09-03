# mii-exa-patho-p63-immunostain - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-patho-p63-immunostain**

## Example Substance: mii-exa-patho-p63-immunostain

-------

**English**

-------

Profile: [MII PR Biobank Substance Additiv](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance)

**identifier**: Labor and industries number/p63

**status**: Active

**category**: Material

**code**: p63 immunostain



## Resource Content

```json
{
  "resourceType" : "Substance",
  "id" : "mii-exa-patho-p63-immunostain",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "LI",
        "display" : "Labor and industries number"
      }]
    },
    "system" : "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht",
    "value" : "p63"
  }],
  "status" : "active",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/substance-category",
      "code" : "material",
      "display" : "Material"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht",
      "code" : "p63",
      "display" : "p63 immunostain"
    }]
  }
}

```
