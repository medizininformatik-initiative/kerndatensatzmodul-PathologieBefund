# MII VS Patho Section Types [LOINC] - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Patho Section Types [LOINC]**

## ValueSet: MII VS Patho Section Types [LOINC] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-section-types-loinc | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_VS_Patho_Section_Types_LOINC |

 
ValueSet for IHE PaLM APSR's section types 

 **References** 

* [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-patho-section-types-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-section-types-loinc",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Patho_Section_Types_LOINC",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_VS_Patho_Section_Types_LOINC"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII VS Patho Section Types [LOINC]",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII VS Patho Section Types [LOINC]"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-09-03T08:45:38+00:00",
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
  "description" : "ValueSet for IHE PaLM APSR's section types",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "ValueSet for IHE PaLM APSR's section types"
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
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "83321-0",
        "display" : "Pathology report intraoperative observation in Specimen Document",
        "designation" : [{
          "language" : "en",
          "value" : "Pathology report intraoperative observation in Specimen Document"
        }]
      },
      {
        "code" : "22634-0",
        "display" : "Pathology report gross observation",
        "designation" : [{
          "language" : "en",
          "value" : "Pathology report gross observation"
        }]
      },
      {
        "code" : "22635-7",
        "display" : "Pathology report microscopic observation",
        "designation" : [{
          "language" : "en",
          "value" : "Pathology report microscopic observation"
        }]
      },
      {
        "code" : "22637-3",
        "display" : "Pathology report diagnosis",
        "designation" : [{
          "language" : "en",
          "value" : "Pathology report diagnosis"
        }]
      },
      {
        "code" : "100969-5",
        "display" : "Pathology report additional specified observation in Specimen Narrative",
        "designation" : [{
          "language" : "en",
          "value" : "Pathology report additional specified observation in Specimen Narrative"
        }]
      }]
    }]
  }
}

```
