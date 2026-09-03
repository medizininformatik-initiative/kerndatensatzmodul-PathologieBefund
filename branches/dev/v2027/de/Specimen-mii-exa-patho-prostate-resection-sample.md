# MII EXA Patho Prostate Resection Sample - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Patho Prostate Resection Sample**

## Beispiel Specimen: MII EXA Patho Prostate Resection Sample

-------

**German**

-------

Profile: [MII PR Patho Specimen](StructureDefinition-mii-pr-patho-specimen.md) version: 2027.0.0-ballot.rc1

**identifier**: Placer Identifier/OP25_311_A, Filler Identifier/E_25_311_A

**accessionIdentifier**: `https://pathologie.example-hospital.de/fhir/fn/befundbericht`/E_25_311

**status**: Available

**type**: Specimen from prostate obtained by radical prostatectomy (specimen)

**subject**: [Max Mustermann Male, DoB: 1959-08-24](Patient-mii-exa-patho-patient-12345.md)

### Collections

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** | **Method** | **BodySite** |
| * | [Practitioner Sabine Schnitt ](Practitioner-mii-exa-patho-practitioner-2346545.md) | 2025-02-05 10:00:00+0100 | Radical prostatectomy (procedure) | Prostate |

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Additive[x]** |
| * | Specimen vial (physical object) | [Substance Neutral buffered formalin (substance)](Substance-mii-exa-patho-neutral-buffered-formalin.md) |

**note**: 

> 

Radikalprostatektomie-Praeparat, Tumorregion rechte apikale periphere Zone (posterior) markiert. In Formalin fixiert.




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-patho-prostate-resection-sample",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2027.0.0-ballot.rc1"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PLAC"
      }]
    },
    "system" : "https://urologie.example-hospital.de/fhir/specimen/placer",
    "value" : "OP25_311_A"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "FILL"
      }]
    },
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_311_A"
  }],
  "accessionIdentifier" : {
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_311"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "122725003",
      "display" : "Specimen from prostate obtained by radical prostatectomy (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-patho-patient-12345"
  },
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/mii-exa-patho-practitioner-2346545"
    },
    "collectedDateTime" : "2025-02-05T10:00:00+01:00",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "26294005",
        "display" : "Radical prostatectomy (procedure)"
      }]
    },
    "bodySite" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.collection.bodySite",
        "valueReference" : {
          "reference" : "BodyStructure/mii-exa-patho-prostate-body-structure"
        }
      }],
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "41216001",
        "display" : "Prostate"
      }]
    }
  },
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "434746001",
        "display" : "Specimen vial (physical object)"
      }]
    },
    "additiveReference" : {
      "reference" : "Substance/mii-exa-patho-neutral-buffered-formalin"
    }
  }],
  "note" : [{
    "text" : "Radikalprostatektomie-Praeparat, Tumorregion rechte apikale periphere Zone (posterior) markiert. In Formalin fixiert."
  }]
}

```
