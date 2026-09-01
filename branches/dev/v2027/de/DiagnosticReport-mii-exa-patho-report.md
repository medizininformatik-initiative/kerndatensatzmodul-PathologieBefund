# mii-exa-patho-report - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-patho-report**

## Beispiel DiagnosticReport: mii-exa-patho-report

-------

**German**

-------

Profile: [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.md) version: 2027.0.0-ballot.rc

## Pathology synoptic report 

| | |
| :--- | :--- |
| Subject | Max Mustermann Male, DoB: 1959-08-24 |
| Relevant Time | 2021-06-01 |
| Performer | [Practitioner Sabine Schnitt ](Practitioner-mii-exa-patho-practitioner-2346545.md) |
| Identifier | Accession ID/E21.12345 |

**Report Details**

* **Code**: [Pathology report gross observation Narrative](Observation-mii-exa-patho-macro-grouper-a.md)
  * **Value**: 
  * **Flags**: Final
* **Code**: [Pathology report microscopic observation Narrative Other stain](Observation-mii-exa-patho-micro-grouper-a.md)
  * **Value**: Specimen A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders...
  * **Flags**: Final
* **Code**: [Pathology report final diagnosis Narrative](Observation-mii-exa-patho-diagnostic-conclusion-grouper.md)
  * **Value**: 
  * **Flags**: Final

Gut differenziertes azinäres Adenokarzinom der Prostata, ISUP-Gradgruppe 1

**Coded Conclusions:**

* International Society of Urological Pathology histologic grade group 1



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-patho-report",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report|2027.0.0-ballot.rc"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ACSN",
        "display" : "Accession ID"
      }]
    },
    "system" : "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht",
    "value" : "E21.12345"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-patho-request"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "60568-3",
      "display" : "Pathology synoptic report"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-patho-patient-12345"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-patho-encounter-12345"
  },
  "effectiveDateTime" : "2021-06-01",
  "performer" : [{
    "reference" : "Practitioner/mii-exa-patho-practitioner-2346545"
  }],
  "specimen" : [{
    "reference" : "Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-patho-macro-grouper-a"
  },
  {
    "reference" : "Observation/mii-exa-patho-micro-grouper-a"
  },
  {
    "reference" : "Observation/mii-exa-patho-diagnostic-conclusion-grouper"
  }],
  "media" : [{
    "comment" : "HE-Schnitt einer Prostatastanze, infiltriert durch Karzinomverbände, fotodokumentiert",
    "_comment" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "en"
        },
        {
          "url" : "content",
          "valueString" : "H&E section of a prostate core biopsy, infiltrated by carcinoma cell clusters, photographically documented"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "link" : {
      "reference" : "Media/mii-exa-patho-attached-image"
    }
  }],
  "conclusion" : "Gut differenziertes azinäres Adenokarzinom der Prostata, ISUP-Gradgruppe 1",
  "_conclusion" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "Well-differentiated acinar adenocarcinoma of the prostate, ISUP grade group 1"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "conclusionCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1525761000004109"
    }]
  }]
}

```
