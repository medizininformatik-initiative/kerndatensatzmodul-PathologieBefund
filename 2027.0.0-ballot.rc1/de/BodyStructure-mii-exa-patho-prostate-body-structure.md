# MII EXA Patho Prostate Body Structure - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Patho Prostate Body Structure**

## Beispiel BodyStructure: MII EXA Patho Prostate Body Structure

-------

**German**

-------

> **R5: Included anatomic location(s) (new)**
> **url**[structure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/structure)
**value**: Apical peripheral zone of prostate
> **url**[laterality](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/laterality)
**value**: Right (qualifier value)**landmarkDescription**: Structure of apex of prostate**surfaceOrientation**: Posterior
> **distanceFromLandmark**
* value: 15 mm (Details: UCUM codemm = 'mm')

> **url**[bodyLandmarkOrientation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/bodyLandmarkOrientation)

**active**: true

**location**: Apical peripheral zone of prostate

**locationQualifier**: Right (qualifier value)

**description**: Rechte apikale periphere Zone der Prostata, posterior, 15 mm proximal des Apex

**patient**: [Max Mustermann Male, DoB: 1959-08-24](Patient-mii-exa-patho-patient-12345.md)



## Resource Content

```json
{
  "resourceType" : "BodyStructure",
  "id" : "mii-exa-patho-prostate-body-structure",
  "extension" : [{
    "extension" : [{
      "url" : "structure",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "717007000",
          "display" : "Apical peripheral zone of prostate"
        }]
      }
    },
    {
      "url" : "laterality",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "24028007",
          "display" : "Right (qualifier value)"
        }]
      }
    },
    {
      "extension" : [{
        "url" : "landmarkDescription",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "68756004",
            "display" : "Structure of apex of prostate"
          }]
        }
      },
      {
        "url" : "surfaceOrientation",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "255551008",
            "display" : "Posterior"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "value",
          "valueQuantity" : {
            "value" : 15,
            "unit" : "mm",
            "system" : "http://unitsofmeasure.org",
            "code" : "mm"
          }
        }],
        "url" : "distanceFromLandmark"
      }],
      "url" : "bodyLandmarkOrientation"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure"
  }],
  "active" : true,
  "location" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "717007000",
      "display" : "Apical peripheral zone of prostate"
    }]
  },
  "locationQualifier" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "24028007",
      "display" : "Right (qualifier value)"
    }]
  }],
  "description" : "Rechte apikale periphere Zone der Prostata, posterior, 15 mm proximal des Apex",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "Right apical peripheral zone of the prostate, posterior, 15 mm proximal to the apex"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "patient" : {
    "reference" : "Patient/mii-exa-patho-patient-12345"
  }
}

```
