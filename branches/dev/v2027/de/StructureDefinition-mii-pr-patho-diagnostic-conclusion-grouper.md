# MII PR Patho Diagnostic Conclusion Grouper - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Patho Diagnostic Conclusion Grouper**

## Ressourcenprofil: MII PR Patho Diagnostic Conclusion Grouper 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper | *Version*:2027.0.0-ballot.rc |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_PR_Patho_Diagnostic_Conclusion_Grouper |

 
Das Profil **MII PR Patho Diagnostic Conclusion Grouper** der Ressource Observation stellt als `DiagnosticReport.result:diagnostic-conclusion-grouper` für einen [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.md) den jeweiligen Beobachtungsberichtsabschnitt "Diagnostische Schlussfolgerung" (entspr. dieser CDA-Section) dar und fungiert als Organizer für die entsprechenden Gruppierungen von [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md). 
Dieses spezielle Grouper-Observation-Element ist allen anderen Observation-Elementen voranzustellen, welche dann als `hasMember`-Referenzen zu [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md) eingebunden werden. [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md) Observations wiederum referenzieren ihre "Eltern-Beobachtungen" via `derivedFrom`-Referenzen zu SDC QuestionnaireResponses und/oder zu den jeweiligen Grouper Observations. 
Falls der Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, erfolgt die Zuordnung der MII PR Patho Befunde zu diesen verschiedenen Proben über die Probenreferenzen dieser MII PR Patho Befunde, und zwar hinsichtlich der Referenzen die „Parts“ betreffend. 
Auflistung und Erklärung der FHIR-Elemente siehe **(abstract) MII PR Patho Section Grouper**. 

### Weiterführende Beispiele

Weitere umfangreiche Beispiele mit vollständigen Narrativen finden sich im [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html).

**Usages:**

* Refer to this Profile: [MII PR Patho Composition](StructureDefinition-mii-pr-patho-composition.md) and [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.md)
* Examples for this Profile: [Observation/mii-exa-patho-diagnostic-conclusion-grouper](Observation-mii-exa-patho-diagnostic-conclusion-grouper.md)
* CapabilityStatements using this Profile: [MII CPS Patho Capability Statement](CapabilityStatement-mii-cps-patho-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.patho|current/StructureDefinition/StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Patho_Section_Grouper](StructureDefinition-mii-pr-patho-section-grouper.md) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Patho_Section_Grouper](StructureDefinition-mii-pr-patho-section-grouper.md) 

** Summary **

Must-Support: 3 elements

**Structures**

This structure refers to these other structures:

* [MII PR Patho Section Grouper (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-section-grouper)](StructureDefinition-mii-pr-patho-section-grouper.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Patho_Section_Grouper](StructureDefinition-mii-pr-patho-section-grouper.md) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Patho_Section_Grouper](StructureDefinition-mii-pr-patho-section-grouper.md) 

** Summary **

Must-Support: 3 elements

**Structures**

This structure refers to these other structures:

* [MII PR Patho Section Grouper (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-section-grouper)](StructureDefinition-mii-pr-patho-section-grouper.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.csv), [Excel](../StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.xlsx), [Schematron](../StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-patho-diagnostic-conclusion-grouper",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper",
  "version" : "2027.0.0-ballot.rc",
  "name" : "MII_PR_Patho_Diagnostic_Conclusion_Grouper",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Patho_Diagnostic_Conclusion_Grouper"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Patho Diagnostic Conclusion Grouper",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Patho Diagnostic Conclusion Grouper"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    },
    {
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Patho Diagnostic Conclusion Grouper"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    },
    {
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Patho Diagnostic Conclusion Grouper"
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
  "description" : "Das Profil **MII PR Patho Diagnostic Conclusion Grouper** der Ressource Observation stellt als `DiagnosticReport.result:diagnostic-conclusion-grouper` für einen [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html) den jeweiligen Beobachtungsberichtsabschnitt \"Diagnostische Schlussfolgerung\" (entspr. dieser CDA-Section) dar und fungiert als Organizer für die entsprechenden Gruppierungen von [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).\n\nDieses spezielle Grouper-Observation-Element ist allen anderen Observation-Elementen voranzustellen, welche dann als `hasMember`-Referenzen zu [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) eingebunden werden. [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) Observations wiederum referenzieren ihre \"Eltern-Beobachtungen\" via `derivedFrom`-Referenzen zu SDC QuestionnaireResponses und/oder zu den jeweiligen Grouper Observations.\n\nFalls der Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, erfolgt die Zuordnung der MII PR Patho Befunde zu diesen verschiedenen Proben über die Probenreferenzen dieser MII PR Patho Befunde, und zwar hinsichtlich der Referenzen die „Parts“ betreffend.\n\nAuflistung und Erklärung der FHIR-Elemente siehe **(abstract) MII PR Patho Section Grouper**.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The **MII PR Patho Diagnostic Conclusion Grouper** profile of the Observation resource represents, as `DiagnosticReport.result:diagnostic-conclusion-grouper` for a [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html), the respective observation report section \"Diagnostic Conclusion\" (corresponding to this CDA section) and acts as an organizer for the corresponding groupings of [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).\n\nThis special grouper observation element is to be placed before all other observation elements, which are then included as `hasMember` references to [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html). [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) observations in turn reference their \"parent observations\" via `derivedFrom` references to SDC QuestionnaireResponses and/or to the respective grouper observations.\n\nIf the observation report section contains multiple submitted specimens, the MII PR Patho Findings are assigned to these different specimens via the specimen references of these MII PR Patho Findings, specifically the references concerning the \"parts\".\n\nFor a listing and explanation of the FHIR elements, see **(abstract) MII PR Patho Section Grouper**."
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
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-section-grouper",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.text",
      "path" : "Observation.text",
      "short" : "Text",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Text"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Text"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Text"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Narrative Darstellung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Narrative Darstellung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Narrative representation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Narrative representation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "22637-3"
        }]
      }
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "Notiz",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Notiz"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Note"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Note"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zusätzliche Notizen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zusätzliche Notizen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Additional notes"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Additional notes"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember:pathology-finding",
      "path" : "Observation.hasMember",
      "sliceName" : "pathology-finding",
      "short" : "Einzelbeobachtungen",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einzelbeobachtungen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Pathology findings"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Individual observations"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Referenz zu Einzelbeobachtungen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Referenz zu Einzelbeobachtungen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Reference to pathology findings"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to individual observations"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.derivedFrom:grouper-observation",
      "path" : "Observation.derivedFrom",
      "sliceName" : "grouper-observation",
      "short" : "Gruppierte Beobachtung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gruppierte Beobachtung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Grouper observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Grouped observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Referenz zu gruppierten Beobachtungen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Referenz zu gruppierten Beobachtungen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Reference to grouper observations"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to grouped observations"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-section-grouper"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.derivedFrom:questionnaire-response",
      "path" : "Observation.derivedFrom",
      "sliceName" : "questionnaire-response",
      "short" : "Fragebogen-Antwort",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Fragebogen-Antwort"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Questionnaire response"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Questionnaire response"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Referenz zu Fragebogen-Antworten",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Referenz zu Fragebogen-Antworten"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Reference to questionnaire responses"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to questionnaire responses"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"]
      }],
      "mustSupport" : true
    }]
  }
}

```
