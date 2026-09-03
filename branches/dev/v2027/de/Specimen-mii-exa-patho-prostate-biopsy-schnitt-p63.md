# mii-exa-patho-prostate-biopsy-schnitt-p63 - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-patho-prostate-biopsy-schnitt-p63**

## Beispiel Specimen: mii-exa-patho-prostate-biopsy-schnitt-p63

-------

**German**

-------

Profile: [MII PR Patho Specimen](StructureDefinition-mii-pr-patho-specimen.md) version: 2027.0.0-ballot.rc1

**identifier**: Filler Identifier/E12345_21-A1-p63

**accessionIdentifier**: `https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht`/E12345_21

**status**: Available

**type**: Tissue section (specimen)

**subject**: [Max Mustermann Male, DoB: 1959-08-24](Patient-mii-exa-patho-patient-12345.md)

**parent**: [Specimen: identifier = Filler Identifier; accessionIdentifier = https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht#E12345_21; status = available; type = Tissue block specimen (specimen)](Specimen-mii-exa-patho-prostate-biopsy-block.md)

**request**: [ServiceRequest Pathology consultation, comprehensive, records and specimen with report (procedure)](ServiceRequest-mii-exa-patho-request.md)

### Collections

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** | **Method** | **BodySite** |
| * | [Practitioner Lena Labor ](Practitioner-mii-exa-patho-practitioner-1234.md) | 2021-01-29 06:15:00+0000 | Tissue processing technique, routine, embed, cut and stain, per surgical specimen (procedure) | Structure of lateral middle regional part of peripheral zone of right half prostate (body structure) |

### Processings

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **Procedure** | **Additive** |
| * |  | Immunocytochemical stain (procedure) | [Substance p63 immunostain](Substance-mii-exa-patho-p63-immunostain.md) |

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Additive[x]** |
| * | Microscope slide (physical object) | [Substance Canada balsam (substance)](Substance-mii-exa-patho-canadabalsam.md) |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-patho-prostate-biopsy-schnitt-p63",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2027.0.0-ballot.rc1"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "FILL"
      }]
    },
    "system" : "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht",
    "value" : "E12345_21-A1-p63"
  }],
  "accessionIdentifier" : {
    "system" : "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht",
    "value" : "E12345_21"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "430856003",
      "display" : "Tissue section (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-patho-patient-12345"
  },
  "parent" : [{
    "reference" : "Specimen/mii-exa-patho-prostate-biopsy-block"
  }],
  "request" : [{
    "reference" : "ServiceRequest/mii-exa-patho-request"
  }],
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/mii-exa-patho-practitioner-1234"
    },
    "collectedDateTime" : "2021-01-29T06:15:00Z",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "40923002",
        "display" : "Tissue processing technique, routine, embed, cut and stain, per surgical specimen (procedure)"
      }]
    },
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "716917000",
        "display" : "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
      }]
    }
  },
  "processing" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
      "valueRange" : {
        "low" : {
          "value" : 0,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        },
        "high" : {
          "value" : 30,
          "unit" : "°C",
          "system" : "http://unitsofmeasure.org",
          "code" : "Cel"
        }
      }
    }],
    "procedure" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "13269000",
        "display" : "Immunocytochemical stain (procedure)"
      }]
    },
    "additive" : [{
      "reference" : "Substance/mii-exa-patho-p63-immunostain"
    }]
  }],
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "433466003",
        "display" : "Microscope slide (physical object)"
      }]
    },
    "additiveReference" : {
      "reference" : "Substance/mii-exa-patho-canadabalsam"
    }
  }]
}

```
