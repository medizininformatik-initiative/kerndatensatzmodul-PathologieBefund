# mii-exa-patho-prostate-tru-cut-biopsy-sample - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-patho-prostate-tru-cut-biopsy-sample**

## Beispiel Specimen: mii-exa-patho-prostate-tru-cut-biopsy-sample

-------

**German**

-------

Profile: [MII PR Patho Specimen](StructureDefinition-mii-pr-patho-specimen.md) version: 2027.0.0-ballot.rc

> **MII EX Biobank Feature R5**
* type: Structure of right lateral lobe of prostate (body structure)
* description: Marked by red ink

**identifier**: Placer Identifier/KHXX_ENDO_18.123451_A, Filler Identifier/E12345_21-A

**accessionIdentifier**: `https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht`/E12345_21

**status**: Available

**type**: Prostate tru-cut biopsy sample

**subject**: [Max Mustermann Male, DoB: 1959-08-24](Patient-mii-exa-patho-patient-12345.md)

**request**: [ServiceRequest Pathology consultation, comprehensive, records and specimen with report (procedure)](ServiceRequest-mii-exa-patho-request.md)

### Collections

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** | **Method** | **BodySite** |
| * | [Practitioner Sabine Schnitt ](Practitioner-mii-exa-patho-practitioner-2346545.md) | 2021-01-29 06:15:00+0000 | Tru-cut biopsy of prostate (procedure) | Structure of lateral middle regional part of peripheral zone of right half prostate (body structure) |

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Additive[x]** |
| * | Specimen vial (physical object) | [Substance Neutral buffered formalin (substance)](Substance-mii-exa-patho-neutral-buffered-formalin.md) |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-patho-prostate-tru-cut-biopsy-sample",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2027.0.0-ballot.rc"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "251597001",
          "display" : "Structure of right lateral lobe of prostate (body structure)"
        }]
      }
    },
    {
      "url" : "description",
      "valueString" : "Marked by red ink"
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
    "system" : "https://pathologie.klinikum-karlsruhe.de/fhir/fn/untersuchungsauftrag",
    "value" : "KHXX_ENDO_18.123451_A"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "FILL"
      }]
    },
    "system" : "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht",
    "value" : "E12345_21-A"
  }],
  "accessionIdentifier" : {
    "system" : "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht",
    "value" : "E12345_21"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "309134005",
      "display" : "Prostate tru-cut biopsy sample"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-patho-patient-12345"
  },
  "request" : [{
    "reference" : "ServiceRequest/mii-exa-patho-request"
  }],
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/mii-exa-patho-practitioner-2346545"
    },
    "collectedDateTime" : "2021-01-29T06:15:00Z",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "301759007",
        "display" : "Tru-cut biopsy of prostate (procedure)"
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
  }]
}

```
