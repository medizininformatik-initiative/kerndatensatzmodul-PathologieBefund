# MII VS Patho Report Category HL7 - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Patho Report Category HL7**

## ValueSet: MII VS Patho Report Category HL7 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-report-category-hl7 | *Version*:2027.0.0-ballot.rc |
| Active as of 2026-09-01 | *Computable Name*:MII_VS_Patho_Report_Category_HL7 |

 
ValueSet for the categorization of Pathology Report documents 

 **References** 

* [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-patho-report-category-hl7",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-report-category-hl7",
  "version" : "2027.0.0-ballot.rc",
  "name" : "MII_VS_Patho_Report_Category_HL7",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_VS_Patho_Report_Category_HL7"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII VS Patho Report Category HL7",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII VS Patho Report Category HL7"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
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
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "version" : "3.0.0",
      "concept" : [{
        "code" : "CP",
        "display" : "Cytopathology",
        "designation" : [{
          "language" : "en",
          "value" : "Cytopathology"
        }]
      },
      {
        "code" : "SP",
        "display" : "Surgical Pathology",
        "designation" : [{
          "language" : "en",
          "value" : "Surgical Pathology"
        }]
      }]
    }]
  }
}

```
