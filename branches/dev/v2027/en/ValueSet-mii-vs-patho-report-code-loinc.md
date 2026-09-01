# MII VS Patho Report Code [LOINC] - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Patho Report Code [LOINC]**

## ValueSet: MII VS Patho Report Code [LOINC] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-report-code-loinc | *Version*:2027.0.0-ballot.rc |
| Active as of 2026-09-01 | *Computable Name*:MII_VS_Patho_Report_Code_LOINC |

 
ValueSet for the report type codes of pathology DiagnosticReports 

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
  "id" : "mii-vs-patho-report-code-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-report-code-loinc",
  "version" : "2027.0.0-ballot.rc",
  "name" : "MII_VS_Patho_Report_Code_LOINC",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_VS_Patho_Report_Code_LOINC"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII VS Patho Report Code [LOINC]",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII VS Patho Report Code [LOINC]"
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
  "description" : "ValueSet for the report type codes of pathology DiagnosticReports",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "ValueSet for the report type codes of pathology DiagnosticReports"
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
        "code" : "60568-3",
        "display" : "Pathology Synoptic report",
        "designation" : [{
          "language" : "en",
          "value" : "Pathology Synoptic report"
        }]
      },
      {
        "code" : "11526-1",
        "display" : "Pathology study",
        "designation" : [{
          "language" : "en",
          "value" : "Pathology study"
        }]
      },
      {
        "code" : "11529-5",
        "display" : "Surgical pathology study",
        "designation" : [{
          "language" : "en",
          "value" : "Surgical pathology study"
        }]
      },
      {
        "code" : "33716-2",
        "display" : "Non-gynecological cytology study",
        "designation" : [{
          "language" : "en",
          "value" : "Non-gynecological cytology study"
        }]
      },
      {
        "code" : "26435-8",
        "display" : "Molecular pathology studies (set)",
        "designation" : [{
          "language" : "en",
          "value" : "Molecular pathology studies (set)"
        }]
      },
      {
        "code" : "47528-5",
        "display" : "Cytology report of Cervical or vaginal smear or scraping Cyto stain",
        "designation" : [{
          "language" : "en",
          "value" : "Cytology report of Cervical or vaginal smear or scraping Cyto stain"
        }]
      },
      {
        "code" : "47527-7",
        "display" : "Cytology report of Cervical or vaginal smear or scraping Cyto stain.thin prep",
        "designation" : [{
          "language" : "en",
          "value" : "Cytology report of Cervical or vaginal smear or scraping Cyto stain.thin prep"
        }]
      },
      {
        "code" : "18743-5",
        "display" : "Autopsy report",
        "designation" : [{
          "language" : "en",
          "value" : "Autopsy report"
        }]
      }]
    }]
  }
}

```
