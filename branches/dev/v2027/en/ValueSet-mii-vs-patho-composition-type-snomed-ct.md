# MII VS Patho Composition Type [Snomed CT] - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Patho Composition Type [Snomed CT]**

## ValueSet: MII VS Patho Composition Type [Snomed CT] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-composition-type-snomed-ct | *Version*:2027.0.0-ballot.rc |
| Active as of 2026-09-01 | *Computable Name*:MII_VS_Patho_Composition_Type_SNOMED_CT |

 
ValueSet for the types a pathology Composition can have 

 **References** 

* [MII PR Patho Composition](StructureDefinition-mii-pr-patho-composition.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-patho-composition-type-snomed-ct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-composition-type-snomed-ct",
  "version" : "2027.0.0-ballot.rc",
  "name" : "MII_VS_Patho_Composition_Type_SNOMED_CT",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_VS_Patho_Composition_Type_SNOMED_CT"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII VS Patho Composition Type [Snomed CT]",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII VS Patho Composition Type [Snomed CT]"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-09-01T13:59:06+00:00",
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
  "description" : "ValueSet for the types a pathology Composition can have",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "ValueSet for the types a pathology Composition can have"
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
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "371528001",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "371528001"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    }]
  }
}

```
