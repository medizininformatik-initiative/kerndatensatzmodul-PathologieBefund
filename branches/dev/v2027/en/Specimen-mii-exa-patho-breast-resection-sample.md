# MII EXA Patho Breast Resection Sample - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Patho Breast Resection Sample**

## Example Specimen: MII EXA Patho Breast Resection Sample

-------

**English**

-------

Profile: [MII PR Patho Specimen](StructureDefinition-mii-pr-patho-specimen.md) version: 2027.0.0-ballot.rc

> **MII EX Biobank Feature R5**
* type: Part of left breast
* description: Praeoperative radiologische Drahtmarkierung der Biopsiestelle

> **MII EX Biobank Feature R5**
* type: Anterior surgical margin
* description: Fadenmarkierung lang anterior

> **MII EX Biobank Feature R5**
* type: Distal surgical margin
* description: Fadenmarkierung 2x kurz distal

**identifier**: Placer Identifier/OP25_210_A, Filler Identifier/E_25_210_A

**accessionIdentifier**: `https://pathologie.example-hospital.de/fhir/fn/befundbericht`/E_25_210

**status**: Available

**type**: Specimen from breast obtained by excision

**subject**: [Erika Musterfrau Female, DoB: 1962-03-11](Patient-mii-exa-patho-patient-34545.md)

**request**: [ServiceRequest Pathology consultation, comprehensive, records and specimen with report (procedure)](ServiceRequest-mii-exa-patho-request.md)

### Collections

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** | **Method** | **BodySite** |
| * | [Practitioner Sabine Schnitt ](Practitioner-mii-exa-patho-practitioner-2346545.md) | 2025-02-05 10:00:00+0100 | Wide local excision of breast lesion | Structure of lower outer quadrant of breast |

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Additive[x]** |
| * | Specimen vial (physical object) | [Substance Neutral buffered formalin (substance)](Substance-mii-exa-patho-neutral-buffered-formalin.md) |

**note**: 

> 

BET-Exzisionspraeparat Mamma links, unterer aeusserer Quadrant, 5 Uhr, 50 mm von der Mamille. Drahthaekchen und zwei Fadenmarkierungen.




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-patho-breast-resection-sample",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2027.0.0-ballot.rc"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "735083009",
          "display" : "Part of left breast"
        }]
      }
    },
    {
      "url" : "description",
      "valueString" : "Praeoperative radiologische Drahtmarkierung der Biopsiestelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
  },
  {
    "extension" : [{
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "3680001000004109",
          "display" : "Anterior surgical margin"
        }]
      }
    },
    {
      "url" : "description",
      "valueString" : "Fadenmarkierung lang anterior"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
  },
  {
    "extension" : [{
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "880001000004108",
          "display" : "Distal surgical margin"
        }]
      }
    },
    {
      "url" : "description",
      "valueString" : "Fadenmarkierung 2x kurz distal"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PLAC"
      }]
    },
    "system" : "https://senologie.example-hospital.de/fhir/specimen/placer",
    "value" : "OP25_210_A"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "FILL"
      }]
    },
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_210_A"
  }],
  "accessionIdentifier" : {
    "system" : "https://pathologie.example-hospital.de/fhir/fn/befundbericht",
    "value" : "E_25_210"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "397199005",
      "display" : "Specimen from breast obtained by excision"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-patho-patient-34545"
  },
  "request" : [{
    "reference" : "ServiceRequest/mii-exa-patho-request"
  }],
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/mii-exa-patho-practitioner-2346545"
    },
    "collectedDateTime" : "2025-02-05T10:00:00+01:00",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "237371007",
        "display" : "Wide local excision of breast lesion"
      }]
    },
    "bodySite" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.collection.bodySite",
        "valueReference" : {
          "reference" : "BodyStructure/mii-exa-patho-left-breast-body-structure"
        }
      }],
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "33564002",
        "display" : "Structure of lower outer quadrant of breast"
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
    "text" : "BET-Exzisionspraeparat Mamma links, unterer aeusserer Quadrant, 5 Uhr, 50 mm von der Mamille. Drahthaekchen und zwei Fadenmarkierungen."
  }]
}

```
