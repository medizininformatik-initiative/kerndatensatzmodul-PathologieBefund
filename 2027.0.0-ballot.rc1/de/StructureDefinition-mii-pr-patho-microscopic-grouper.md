# MII PR Patho Microscopic Grouper - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Patho Microscopic Grouper**

## Ressourcenprofil: MII PR Patho Microscopic Grouper 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_PR_Patho_Microscopic_Grouper |

 
Das Profil **MII PR Patho Microscopic Grouper** der Resource Observation stellt als `DiagnosticReport.result:microscopic-grouper` für einen [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.md) den jeweiligen Beobachtungsberichtsabschnitt "Mikroskopische Beurteilung" (entspr. dieser CDA-Section) dar und fungiert als Organizer für die entsprechenden Gruppierungen von [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md). 
Dieses spezielle Grouper-Observation-Element ist allen anderen Observation-Elementen voranzustellen, welche dann als `hasMember`-Referenzen zu [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md) eingebunden werden. [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md) Observations wiederum referenzieren ihre "Eltern-Beobachtungen" via `derivedFrom`-Referenzen zu SDC QuestionnaireResponses und/oder zu den jeweiligen Grouper Observations. 
Falls der Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, erfolgt die Zuordnung der MII PR Patho Befunde zu diesen verschiedenen Proben über die Probenreferenzen dieser MII PR Patho Befunde, und zwar hinsichtlich der Referenzen die „Parts“ betreffend. 
Auflistung und Erklärung der FHIR-Elemente siehe [MII PR Patho Section Grouper](StructureDefinition-mii-pr-patho-section-grouper.md). 

### Weiterführende Beispiele

Weitere umfangreiche Beispiele mit vollständigen Narrativen finden sich im [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html).

**Usages:**

* Refer to this Profile: [MII PR Patho Composition](StructureDefinition-mii-pr-patho-composition.md) and [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.md)
* Examples for this Profile: [Observation/mii-exa-patho-micro-grouper-a](Observation-mii-exa-patho-micro-grouper-a.md)
* CapabilityStatements using this Profile: [MII CPS Patho Capability Statement](CapabilityStatement-mii-cps-patho-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.patho|current/StructureDefinition/StructureDefinition-mii-pr-patho-microscopic-grouper.json)

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

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-patho-microscopic-grouper.csv), [Excel](../StructureDefinition-mii-pr-patho-microscopic-grouper.xlsx), [Schematron](../StructureDefinition-mii-pr-patho-microscopic-grouper.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-patho-microscopic-grouper",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Patho_Microscopic_Grouper",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Patho_Microscopic_Grouper"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Patho Microscopic Grouper",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Patho Microscopic Grouper"
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
        "valueString" : "MII PR Patho Microscopic Grouper"
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
        "valueString" : "MII PR Patho Microscopic Grouper"
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
  "description" : "Das Profil **MII PR Patho Microscopic Grouper** der Resource Observation stellt als `DiagnosticReport.result:microscopic-grouper` für einen [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html) den jeweiligen Beobachtungsberichtsabschnitt \"Mikroskopische Beurteilung\" (entspr. dieser CDA-Section) dar und fungiert als Organizer für die entsprechenden Gruppierungen von [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).\n\nDieses spezielle Grouper-Observation-Element ist allen anderen Observation-Elementen voranzustellen, welche dann als `hasMember`-Referenzen zu [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) eingebunden werden. [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) Observations wiederum referenzieren ihre \"Eltern-Beobachtungen\" via `derivedFrom`-Referenzen zu SDC QuestionnaireResponses und/oder zu den jeweiligen Grouper Observations.\n\nFalls der Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, erfolgt die Zuordnung der MII PR Patho Befunde zu diesen verschiedenen Proben über die Probenreferenzen dieser MII PR Patho Befunde, und zwar hinsichtlich der Referenzen die „Parts“ betreffend.\n\nAuflistung und Erklärung der FHIR-Elemente siehe [MII PR Patho Section Grouper](StructureDefinition-mii-pr-patho-section-grouper.html).",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The **MII PR Patho Microscopic Grouper** profile of the Observation resource represents, as `DiagnosticReport.result:microscopic-grouper` for a [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html), the respective observation report section \"Microscopic Evaluation\" (corresponding to this CDA section) and acts as an organizer for the corresponding groupings of [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).\n\nThis special grouper observation element is to be placed before all other observation elements, which are then included as `hasMember` references to [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html). [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) observations in turn reference their \"parent observations\" via `derivedFrom` references to SDC QuestionnaireResponses and/or to the respective grouper observations.\n\nIf the observation report section contains multiple submitted specimens, the MII PR Patho Findings are assigned to these different specimens via the specimen references of these MII PR Patho Findings, specifically the references concerning the \"parts\".\n\nFor a listing and explanation of the FHIR elements, see [MII PR Patho Section Grouper](StructureDefinition-mii-pr-patho-section-grouper.html)."
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
          "code" : "22635-7"
        }]
      }
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
    }]
  }
}

```
