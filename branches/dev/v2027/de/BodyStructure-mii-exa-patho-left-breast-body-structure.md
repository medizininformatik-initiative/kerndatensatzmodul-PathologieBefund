# MII EXA Patho Left Breast Body Structure - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Patho Left Breast Body Structure**

## Beispiel BodyStructure: MII EXA Patho Left Breast Body Structure

-------

**German**

-------

> **R5: Included anatomic location(s) (new)**
> **url**[structure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/structure)
**value**: Lower outer quadrant of left breast
> **url**[laterality](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/laterality)
**value**: Left (qualifier value)**landmarkDescription**: Nipple structure**clockFacePosition**: 5 o'clock position**surfaceOrientation**: Distal
> **distanceFromLandmark**
* value: 50 mm (Details: UCUM codemm = 'mm')

> **url**[bodyLandmarkOrientation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/bodyLandmarkOrientation)

**active**: true

**morphology**: Bioptisch gesichertes invasives Karzinom

**location**: Lower outer quadrant of left breast

**locationQualifier**: Left (qualifier value)

**description**: 5 x 3 x 3 cm, eine Draht- und eine Fadenmarkierung

**patient**: [Erika Musterfrau Female, DoB: 1962-03-11](Patient-mii-exa-patho-patient-34545.md)



## Resource Content

```json
{
  "resourceType" : "BodyStructure",
  "id" : "mii-exa-patho-left-breast-body-structure",
  "extension" : [{
    "extension" : [{
      "url" : "structure",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "110502005",
          "display" : "Lower outer quadrant of left breast"
        }]
      }
    },
    {
      "url" : "laterality",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "7771000",
          "display" : "Left (qualifier value)"
        }]
      }
    },
    {
      "extension" : [{
        "url" : "landmarkDescription",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "24142002",
            "display" : "Nipple structure"
          }]
        }
      },
      {
        "url" : "clockFacePosition",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "260335000",
            "display" : "5 o'clock position"
          }]
        }
      },
      {
        "url" : "surfaceOrientation",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "46053002",
            "display" : "Distal"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "value",
          "valueQuantity" : {
            "value" : 50,
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
  "morphology" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "82711006",
      "display" : "Infiltrating duct carcinoma"
    }],
    "text" : "Bioptisch gesichertes invasives Karzinom"
  },
  "location" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "110502005",
      "display" : "Lower outer quadrant of left breast"
    }]
  },
  "locationQualifier" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "7771000",
      "display" : "Left (qualifier value)"
    }]
  }],
  "description" : "5 x 3 x 3 cm, eine Draht- und eine Fadenmarkierung",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "5 x 3 x 3 cm, one wire marking and one suture marking"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "patient" : {
    "reference" : "Patient/mii-exa-patho-patient-34545"
  }
}

```
