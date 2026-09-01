# Pathologie Befundbericht - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Pathologie Befundbericht**

## Beispiel Composition: Pathologie Befundbericht

-------

**German**

-------

Profile: [MII PR Patho Composition](StructureDefinition-mii-pr-patho-composition.md) version: 2027.0.0-ballot.rc

**Composition Version Number**: 1

**identifier**: Accession ID/E21.12345

**status**: Final

**type**: Pathology report (record artifact)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB)](Encounter-mii-exa-patho-encounter-34555.md)

**date**: 2021-06-08

**author**: [Dr. Name](Practitioner-mii-exa-patho-practitioner-2346545.md)

**title**: Pathologie Befundbericht

### Attesters

| | | |
| :--- | :--- | :--- |
| - | **Mode** | **Party** |
| * | Legal | [Practitioner Frank Färber ](Practitioner-mii-exa-patho-practitioner-765879.md) |

**custodian**: [Organization Klinikum Musterstadt](Organization-mii-exa-patho-organization-123456.md)

### Events

| | |
| :--- | :--- |
| - | **Period** |
| * | 2021-06-05 --> 2021-06-08 |



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "mii-exa-patho-composition",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition|2027.0.0-ballot.rc"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber",
    "valueString" : "1"
  }],
  "identifier" : {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ACSN",
        "display" : "Accession ID"
      }]
    },
    "system" : "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht",
    "value" : "E21.12345"
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://ihe-d.de/CodeSystems/IHEXDStypeCode",
      "code" : "PATH"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "371528001",
      "display" : "Pathology report (record artifact)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-patho-patient-34545"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-patho-encounter-34555"
  },
  "date" : "2021-06-08",
  "author" : [{
    "reference" : "Practitioner/mii-exa-patho-practitioner-2346545",
    "display" : "Dr. Name"
  }],
  "title" : "Pathologie Befundbericht",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "Pathology Report"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "attester" : [{
    "mode" : "legal",
    "party" : {
      "reference" : "Practitioner/mii-exa-patho-practitioner-765879"
    }
  }],
  "custodian" : {
    "reference" : "Organization/mii-exa-patho-organization-123456"
  },
  "event" : [{
    "period" : {
      "start" : "2021-06-05",
      "end" : "2021-06-08"
    }
  }],
  "section" : [{
    "title" : "Pathology Diagnostic Report",
    "_title" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "Pathology Diagnostic Report"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "60567-5",
        "display" : "Comprehensive pathology report panel"
      }]
    },
    "text" : {
      "status" : "additional",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Gesamter Textkörper des Befundberichts, z.B. beginnend mit Makroskopie:</b></p><div id=\"macro-a-title\"><b>Makroskopie A</b></div><table><tr id=\"macro-a-biosy-site\"><td id=\"macro-a-biosy-site-key\">Entnahmeort lt. klin. Angabe</td><td id=\"macro-a-biosy-site-value\">Prostataseitenlappen rechts, lateral</td></tr><tr id=\"macro-a-tissue-length\"><td id=\"macro-a-tissue-length-key\">Stanzzylinderlänge</td><td id=\"macro-a-tissue-length-value\">1,2 cm</td></tr></table></div>"
    },
    "entry" : [{
      "reference" : "DiagnosticReport/mii-exa-patho-report"
    }]
  }]
}

```
