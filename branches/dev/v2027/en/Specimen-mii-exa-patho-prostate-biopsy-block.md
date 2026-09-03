# mii-exa-patho-prostate-biopsy-block - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-patho-prostate-biopsy-block**

## Example Specimen: mii-exa-patho-prostate-biopsy-block

-------

**English**

-------

Profile: [MII PR Patho Specimen](StructureDefinition-mii-pr-patho-specimen.md) version: 2027.0.0-ballot.rc1

**identifier**: Filler Identifier/E12345_21-A1

**accessionIdentifier**: `https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht`/E12345_21

**status**: Available

**type**: Tissue block specimen (specimen)

**subject**: [Max Mustermann Male, DoB: 1959-08-24](Patient-mii-exa-patho-patient-12345.md)

**parent**: [Specimen: extension = ; identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht#E12345_21; status = available; type = Prostate tru-cut biopsy sample](Specimen-mii-exa-patho-prostate-tru-cut-biopsy-sample.md)

**request**: [ServiceRequest Pathology consultation, comprehensive, records and specimen with report (procedure)](ServiceRequest-mii-exa-patho-request.md)

### Collections

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** | **Method** | **BodySite** |
| * | [Practitioner Martin Makro ](Practitioner-mii-exa-patho-practitioner-21234.md) | 2021-01-29 06:15:00+0000 | Sample macroscopy (procedure) | Structure of lateral middle regional part of peripheral zone of right half prostate (body structure) |

### Processings

| | | |
| :--- | :--- | :--- |
| - | **Extension** | **Procedure** |
| * |  | Preparation of formalin fixed paraffin embedded tissue specimen (procedure) |

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Additive[x]** |
| * | Tissue cassette (physical object) | [Substance Paraffin wax (substance)](Substance-mii-exa-patho-paraffin.md) |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-patho-prostate-biopsy-block",
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
    "value" : "E12345_21-A1"
  }],
  "accessionIdentifier" : {
    "system" : "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht",
    "value" : "E12345_21"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1201985008",
      "display" : "Tissue block specimen (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-patho-patient-12345"
  },
  "parent" : [{
    "reference" : "Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample"
  }],
  "request" : [{
    "reference" : "ServiceRequest/mii-exa-patho-request"
  }],
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/mii-exa-patho-practitioner-21234"
    },
    "collectedDateTime" : "2021-01-29T06:15:00Z",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "168126000",
        "display" : "Sample macroscopy (procedure)"
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
        "code" : "787376009",
        "display" : "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
      }]
    }
  }],
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "434464009",
        "display" : "Tissue cassette (physical object)"
      }]
    },
    "additiveReference" : {
      "reference" : "Substance/mii-exa-patho-paraffin"
    }
  }]
}

```
