# MII VS Patho Media Modality [SNOMED CT] - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Patho Media Modality [SNOMED CT]**

## ValueSet: MII VS Patho Media Modality [SNOMED CT] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-media-modality-snomed-ct | *Version*:2027.0.0-ballot.rc |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_VS_Patho_Media_Modality_SNOMED_CT |

 
ValueSet with some of the main Media.modalities needed in the pathological scope 

 **References** 

* [MII PR Patho Attached Image](StructureDefinition-mii-pr-patho-attached-image.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-patho-media-modality-snomed-ct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-media-modality-snomed-ct",
  "version" : "2027.0.0-ballot.rc",
  "name" : "MII_VS_Patho_Media_Modality_SNOMED_CT",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_VS_Patho_Media_Modality_SNOMED_CT"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII VS Patho Media Modality [SNOMED CT]",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII VS Patho Media Modality [SNOMED CT]"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-09-01T13:18:58+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "Medizininformatik-Initiative"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    },
    {
      "system" : "email",
      "value" : "info@medizininformatik-initiative.de"
    }]
  }],
  "description" : "ValueSet with some of the main Media.modalities needed in the pathological scope",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "ValueSet with some of the main Media.modalities needed in the pathological scope"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "706821004",
        "display" : "Scanner (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "Scanner (physical object)"
        }]
      },
      {
        "code" : "706582001",
        "display" : "Microscope camera (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "Microscope camera (physical object)"
        }]
      },
      {
        "code" : "14364002",
        "display" : "Camera, device (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "Camera, device (physical object)"
        }]
      },
      {
        "code" : "701627004",
        "display" : "Multi-purpose digital medical camera (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "Multi-purpose digital medical camera (physical object)"
        }]
      },
      {
        "code" : "409903006",
        "display" : "External camera (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "External camera (physical object)"
        }]
      }]
    }]
  }
}

```
