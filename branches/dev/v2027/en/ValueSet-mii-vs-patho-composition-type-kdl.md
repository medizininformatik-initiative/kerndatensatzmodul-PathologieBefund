# MII VS Patho Composition Type KDL - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Patho Composition Type KDL**

## ValueSet: MII VS Patho Composition Type KDL 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-composition-type-kdl | *Version*:2027.0.0-ballot.rc |
| Active as of 2026-09-01 | *Computable Name*:MII_VS_Patho_Composition_Type_KDL |

 
ValueSet for the categorization of Pathology Report documents 

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
  "id" : "mii-vs-patho-composition-type-kdl",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-composition-type-kdl",
  "version" : "2027.0.0-ballot.rc",
  "name" : "MII_VS_Patho_Composition_Type_KDL",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_VS_Patho_Composition_Type_KDL"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII VS Patho Composition Type KDL",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII VS Patho Composition Type KDL"
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
  "description" : "ValueSet for the categorization of Pathology Report documents",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "ValueSet for the categorization of Pathology Report documents"
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
      "system" : "http://dvmd.de/fhir/CodeSystem/kdl",
      "concept" : [{
        "code" : "PT080102",
        "display" : "Histologiebefund",
        "designation" : [{
          "language" : "en",
          "value" : "Histology report"
        }]
      },
      {
        "code" : "PT130102",
        "display" : "Molekularpathologiebefund",
        "designation" : [{
          "language" : "en",
          "value" : "Molecular pathology report"
        }]
      },
      {
        "code" : "PT260102",
        "display" : "Zytologiebefund",
        "designation" : [{
          "language" : "en",
          "value" : "Cytology report"
        }]
      }]
    }]
  }
}

```
