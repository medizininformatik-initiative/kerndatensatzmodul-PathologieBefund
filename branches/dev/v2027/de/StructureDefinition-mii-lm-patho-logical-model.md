# MII LM Patho Logical Model - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII LM Patho Logical Model**

## Logisches Modell: MII LM Patho Logical Model 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-lm-patho-logical-model | *Version*:2027.0.0-ballot.rc |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_LM_Patho_Logical_Model |

 
Logical Model for the graphical reprensentation of the respective Art-Decor Model 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.patho|current/StructureDefinition/StructureDefinition-mii-lm-patho-logical-model.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Constraints

Diese Struktur ist abgeleitet von [Base](http://build.fhir.org/types.html#Base) 

#### Constraints

Diese Struktur ist abgeleitet von [Base](http://build.fhir.org/types.html#Base) 

** Summary **

Mandatory: 0 element(23 nested mandatory elements)

 **Schlüsselelemente-Ansicht** 

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Base](http://build.fhir.org/types.html#Base) 

 **Snapshot-AnsichtView** 

#### Constraints

Diese Struktur ist abgeleitet von [Base](http://build.fhir.org/types.html#Base) 

** Summary **

Mandatory: 0 element(23 nested mandatory elements)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-lm-patho-logical-model.csv), [Excel](../StructureDefinition-mii-lm-patho-logical-model.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-lm-patho-logical-model",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-lm-patho-logical-model",
  "version" : "2027.0.0-ballot.rc",
  "name" : "MII_LM_Patho_Logical_Model",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_LM_Patho_Logical_Model"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII LM Patho Logical Model",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII LM Patho Logical Model"
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
  "description" : "Logical Model for the graphical reprensentation of the respective Art-Decor Model",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-lm-patho-logical-model",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "mii-lm-patho-logical-model",
      "path" : "mii-lm-patho-logical-model",
      "short" : "MII LM Patho Logical Model",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "MII LM Patho Logical Model"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Logical Model for the graphical reprensentation of the respective Art-Decor Model",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Logical Model for the graphical reprensentation of the respective Art-Decor Model"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "mii-lm-patho-logical-model.Identifikation",
      "path" : "mii-lm-patho-logical-model.Identifikation",
      "short" : "Der Identifikator eines Pathologiebefundberichts (z.B. E/20/12345.1) ist eineindeutig und wird meist aus der Eingangsnummer (Fall-Nummer) abgeleitet. Er sollte zusammengesetzt werden aus der Set-ID (z.B. E/20/12345), unter der alle Versionen eines Befundberichts erfasst werden, und der Versionsnummer (z.B. 1). Es ist allerdings auch möglich, einen UID (Unique identifier) oder GUID (Global Unique Identifier) zu verwenden, der keine Ableitung aus der Fallnummer darstellt. Üblicherweise wird die Fall-Nummer als Set-ID verwendet.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "The identifier of a pathology report (e.g. E/20/12345.1) is unique and is usually derived from the accession number (case number). It should be composed of the set ID (e.g. E/20/12345), under which all versions of a report are recorded, and the version number (e.g. 1). It is, however, also possible to use a UID (unique identifier) or GUID (global unique identifier) that is not derived from the case number. Usually the case number is used as the set ID."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Der Identifikator eines Pathologiebefundberichts (z.B. E/20/12345.1) ist eineindeutig und wird meist aus der Eingangsnummer (Fall-Nummer) abgeleitet. Er sollte zusammengesetzt werden aus der Set-ID (z.B. E/20/12345), unter der alle Versionen eines Befundberichts erfasst werden, und der Versionsnummer (z.B. 1). Es ist allerdings auch möglich, einen UID (Unique identifier) oder GUID (Global Unique Identifier) zu verwenden, der keine Ableitung aus der Fallnummer darstellt. Üblicherweise wird die Fall-Nummer als Set-ID verwendet.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "The identifier of a pathology report (e.g. E/20/12345.1) is unique and is usually derived from the accession number (case number). It should be composed of the set ID (e.g. E/20/12345), under which all versions of a report are recorded, and the version number (e.g. 1). It is, however, also possible to use a UID (unique identifier) or GUID (global unique identifier) that is not derived from the case number. Usually the case number is used as the set ID."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Status",
      "path" : "mii-lm-patho-logical-model.Status",
      "short" : "Status des Pathologiebefundberichts.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status of the pathology report."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status des Pathologiebefundberichts.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status of the pathology report."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Dokumentationsdatum",
      "path" : "mii-lm-patho-logical-model.Dokumentationsdatum",
      "short" : "Zeitpunkt, an dem der Pathologiebefundbericht  dokumentiert (verifiziert und freigegeben) wurde.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Date and time at which the pathology report was documented (verified and released)."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zeitpunkt, an dem der Pathologiebefundbericht  dokumentiert (verifiziert und freigegeben) wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Date and time at which the pathology report was documented (verified and released)."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag",
      "short" : "Untersuchungsauftrag",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Examination request"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Auftrag zur Untersuchung einer Probe/eines Materials / einer Gruppe von Proben/einer Gruppe von Materialien.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Request for the examination of a specimen/material or of a group of specimens/materials."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag.klinischeInformation",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag.klinischeInformation",
      "short" : "klinischeInformation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "clinicalInformation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Klinische Informationen zu einem Fall",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Clinical information about the case"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag.klinischeInformation.Fragestellung",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag.klinischeInformation.Fragestellung",
      "short" : "Fragestellung zum Fall",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Clinical question for the case"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Fragestellung zum Fall",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Clinical question for the case"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag.klinischeInformation.Anamnese",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag.klinischeInformation.Anamnese",
      "short" : "Anamnestische Angaben zum Fall",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "History of present illness for the case"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Anamnestische Angaben zum Fall",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "History of present illness for the case"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag.klinischeInformation.Ueberweisungsgrund",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag.klinischeInformation.Ueberweisungsgrund",
      "short" : "Überweisungsgrund",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reason for referral"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Überweisungsgrund",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reason for referral"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag.klinischeInformation.DiagnoseKodiert",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag.klinischeInformation.DiagnoseKodiert",
      "short" : "Diagnose nach gültiger ICD-10-GM",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Diagnosis according to the valid ICD-10-GM"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Diagnose nach gültiger ICD-10-GM",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Diagnosis according to the valid ICD-10-GM"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition"]
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag.AuftragsID",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag.AuftragsID",
      "short" : "AuftragsID",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "OrderID"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "ID des Untersuchungsauftrags.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ID of the examination request."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag.AuftragsID.AuftragsgruppenID",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag.AuftragsID.AuftragsgruppenID",
      "short" : "ID einer Auftragsgruppe, bestehend aus mehreren Untersuchungsaufträgen",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ID of an order group consisting of several examination requests"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "ID einer Auftragsgruppe, bestehend aus mehreren Untersuchungsaufträgen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ID of an order group consisting of several examination requests"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag.AuftragsID.AuftragsIDAuftraggeber",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag.AuftragsID.AuftragsIDAuftraggeber",
      "short" : "Auftrags-ID vom Auftraggeber vergeben",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Order ID assigned by the placer"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Auftrags-ID vom Auftraggeber vergeben",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Order ID assigned by the placer"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag.AuftragsID.AuftragsIDAuftragnehmer",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag.AuftragsID.AuftragsIDAuftragnehmer",
      "short" : "Auftrags-ID vom Auftragnehmer (Pathologie) vergeben, oft identisch mit Fall-Nr.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Order ID assigned by the filler (pathology), often identical to the case number"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Auftrags-ID vom Auftragnehmer (Pathologie) vergeben, oft identisch mit Fall-Nr.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Order ID assigned by the filler (pathology), often identical to the case number"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag.Status",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag.Status",
      "short" : "Status des pathologischen Untersuchungsauftrages",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status of the pathology examination request"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status des pathologischen Untersuchungsauftrages",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status of the pathology examination request"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag.Untersuchung",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag.Untersuchung",
      "short" : "Beauftragte Untersuchung in kodierter Form",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Ordered examination in coded form"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Beauftragte Untersuchung in kodierter Form",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Ordered examination in coded form"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag.Einsender",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag.Einsender",
      "short" : "Arzt, der Proben eines Patienten zur pathologisch-anatomischen Untersuchung einsendet und der der Empfänger des Pathologiebefundberichtes ist.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Doctor who sends specimens of a patient for pathological-anatomical examination and who is the recipient of the pathology report."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Arzt, der Proben eines Patienten zur pathologisch-anatomischen Untersuchung einsendet und der der Empfänger des Pathologiebefundberichtes ist.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Doctor who sends specimens of a patient for pathological-anatomical examination and who is the recipient of the pathology report."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag.Probenentnehmer",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag.Probenentnehmer",
      "short" : "Entnehmer einer Probe, der nicht identisch mit dem Einsender ist.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Sample collector who is not identical to the sender."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Entnehmer einer Probe, der nicht identisch mit dem Einsender ist.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Sample collector who is not identical to the sender."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Untersuchungsauftrag.Probe",
      "path" : "mii-lm-patho-logical-model.Untersuchungsauftrag.Probe",
      "short" : "Organ oder Organteil oder eine Sammlung derselben, die als Einsendungspräparat zusammen mit dem Untersuchungsauftrag zur Bearbeitung und Begutachtung eingesandt werden.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Organ or part of an organ or a collection thereof that is sent in as a submitted specimen together with the examination request for processing and assessment."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Organ oder Organteil oder eine Sammlung derselben, die als Einsendungspräparat zusammen mit dem Untersuchungsauftrag zur Bearbeitung und Begutachtung eingesandt werden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Organ or part of an organ or a collection thereof that is sent in as a submitted specimen together with the examination request for processing and assessment."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Specimen"]
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben",
      "path" : "mii-lm-patho-logical-model.Proben",
      "short" : "Probe",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Specimen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Von einem Patienten gewonnenes Physisches Objekt oder Sammlung physischer Objekte, die als Einheit betrachtet werden, in der Pathologieeinrichtung eindeutig identifiziert sind und als Gegenstand einer oder mehrerer Prozeduren im Workflow gelten. Ein Einsendungspräparat (syn. Material, nur für Abrechnungszwecke verwendet, syn. Probe) resultiert aus einer Probengewinnungsprozedur und kann in mehreren Containern enthalten sein. Im Pathologielabor werden die Einsendungspräparate (Case), die aus mehreren Teilen (Parts) bestehen können, beginnend mit dem Zuschnitt, meist als  Proben bezeichnet. Proben können einen oder mehrere Bearbeitungsschritte üblicherweise zu Blöcken und gefärbten Schnitten haben.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Physical object or collection of physical objects obtained from a patient that are regarded as a unit, are uniquely identified within the pathology facility and are the subject of one or more procedures in the workflow. A submitted specimen (syn. material, used for billing purposes only, syn. sample) results from a specimen collection procedure and may be contained in several containers. In the pathology laboratory the submitted specimens (case), which may consist of several parts, are usually called specimens from grossing onwards. Specimens may undergo one or more processing steps, usually into blocks and stained sections."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.ProbenID",
      "path" : "mii-lm-patho-logical-model.Proben.ProbenID",
      "short" : "Eindeutiger Identifikator für die Probe (Einsendungspräparat). Formal oft identisch mit der Falleingangsnummer (Accession identifier).",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Unique identifier for the specimen (submitted specimen). Formally often identical to the accession number (accession identifier)."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Eindeutiger Identifikator für die Probe (Einsendungspräparat). Formal oft identisch mit der Falleingangsnummer (Accession identifier).",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Unique identifier for the specimen (submitted specimen). Formally often identical to the accession number (accession identifier)."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Status",
      "path" : "mii-lm-patho-logical-model.Proben.Status",
      "short" : "Status der Probe hinsichtlich der Verfügbarkeit",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status of the specimen with regard to availability"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status der Probe hinsichtlich der Verfügbarkeit",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Status of the specimen with regard to availability"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Probenart",
      "path" : "mii-lm-patho-logical-model.Proben.Probenart",
      "short" : "Art der Probe",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Type of the specimen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Art der Probe",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Type of the specimen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Laboreingangszeitpunkt",
      "path" : "mii-lm-patho-logical-model.Proben.Laboreingangszeitpunkt",
      "short" : "Zeitpunkt des Eingangs der Probe im Labor",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Date and time of specimen receipt in the laboratory"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zeitpunkt des Eingangs der Probe im Labor",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Date and time of specimen receipt in the laboratory"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Entnahme",
      "path" : "mii-lm-patho-logical-model.Proben.Entnahme",
      "short" : "Entnahme",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Collection"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Prozedur zur Probengewinnung an Patient:in",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Procedure for specimen collection from the patient"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Entnahme.Entnahmemethode",
      "path" : "mii-lm-patho-logical-model.Proben.Entnahme.Entnahmemethode",
      "short" : "Klinische Methode (Prozedur) der Probengewinnung (an Patient:in)",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Clinical method (procedure) of specimen collection (from the patient)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Klinische Methode (Prozedur) der Probengewinnung (an Patient:in)",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Clinical method (procedure) of specimen collection (from the patient)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Entnahme.Herkunft",
      "path" : "mii-lm-patho-logical-model.Proben.Entnahme.Herkunft",
      "short" : "Lokalisation der Körperstelle, von der die Probe stammt.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Location of the body site from which the specimen originates."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Lokalisation der Körperstelle, von der die Probe stammt.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Location of the body site from which the specimen originates."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Entnahme.EntnahmeZeitpunkt",
      "path" : "mii-lm-patho-logical-model.Proben.Entnahme.EntnahmeZeitpunkt",
      "short" : "Zeitpunkt der Ent- / Abnahme der Probe",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Date and time of specimen collection"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zeitpunkt der Ent- / Abnahme der Probe",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Date and time of specimen collection"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Entnahme.Eigenschaften",
      "path" : "mii-lm-patho-logical-model.Proben.Entnahme.Eigenschaften",
      "short" : "Beobachtungen zu Eigenschaften des Einsendungspräparats / der Probe, z.B. Abmessungen, Randbeziehungen, Markierungen etc., die vom Einsender mitgeteilt werden.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Observations on properties of the submitted specimen / of the sample, e.g. dimensions, margin relationships, markings etc., that are communicated by the sender."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Beobachtungen zu Eigenschaften des Einsendungspräparats / der Probe, z.B. Abmessungen, Randbeziehungen, Markierungen etc., die vom Einsender mitgeteilt werden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Observations on properties of the submitted specimen / of the sample, e.g. dimensions, margin relationships, markings etc., that are communicated by the sender."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Bearbeitung",
      "path" : "mii-lm-patho-logical-model.Proben.Bearbeitung",
      "short" : "Bearbeitung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Processing"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Prozedur der Probenbearbeitung im Labor",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Procedure of specimen processing in the laboratory"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Bearbeitung.Bearbeitungsprozedur",
      "path" : "mii-lm-patho-logical-model.Proben.Bearbeitung.Bearbeitungsprozedur",
      "short" : "Kodierte Prozedur der Probenbearbeitung in der Pathologie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Coded procedure of specimen processing in pathology"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Kodierte Prozedur der Probenbearbeitung in der Pathologie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Coded procedure of specimen processing in pathology"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Bearbeitung.Elternprobe",
      "path" : "mii-lm-patho-logical-model.Proben.Bearbeitung.Elternprobe",
      "short" : "Referenz auf den Gegenstand der Bearbeitungsprozedur / auf die Elternprobe",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to the object of the processing procedure / to the parent specimen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Referenz auf den Gegenstand der Bearbeitungsprozedur / auf die Elternprobe",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to the object of the processing procedure / to the parent specimen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Specimen"]
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Bearbeitung.Additive",
      "path" : "mii-lm-patho-logical-model.Proben.Bearbeitung.Additive",
      "short" : "Additive bei der Probenbearbeitung (Fixationsmittel, Einbettungs- und Eindeckungsmedien, Färbungen)",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Additives used in specimen processing (fixatives, embedding and mounting media, stains)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Additive bei der Probenbearbeitung (Fixationsmittel, Einbettungs- und Eindeckungsmedien, Färbungen)",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Additives used in specimen processing (fixatives, embedding and mounting media, stains)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Substance"]
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Bearbeitung.Beschreibung",
      "path" : "mii-lm-patho-logical-model.Proben.Bearbeitung.Beschreibung",
      "short" : "Textuelle Beschreibung der Probenbearbeitung.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Textual description of the specimen processing."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Textuelle Beschreibung der Probenbearbeitung.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Textual description of the specimen processing."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Container",
      "path" : "mii-lm-patho-logical-model.Proben.Container",
      "short" : "Container",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Container"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Physikalisches Objekt, das Proben enthält oder trägt. Probenbehälter im weitesten Sinn: Einsendungsgefäß, Gewebskassette, Paraffinblock, Objektträger etc.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Physical object that contains or carries specimens. Specimen container in the broadest sense: submission container, tissue cassette, paraffin block, slide, etc."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Container.ContainerID",
      "path" : "mii-lm-patho-logical-model.Proben.Container.ContainerID",
      "short" : "Identifikation des Containers, kann von Proben-ID verschieden sein",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Identification of the container, may differ from the specimen ID"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Identifikation des Containers, kann von Proben-ID verschieden sein",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Identification of the container, may differ from the specimen ID"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Container.ContainerTyp",
      "path" : "mii-lm-patho-logical-model.Proben.Container.ContainerTyp",
      "short" : "Typ des Containers",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Type of the container"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Typ des Containers",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Type of the container"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Proben.Container.Additive[x]",
      "path" : "mii-lm-patho-logical-model.Proben.Container.Additive[x]",
      "short" : "Additive im Container: Fixative im Einsendungsgefäß, Paraffin im Block, Einbettungsmedium auf dem Objektträger",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Additives in the container: fixatives in the submission container, paraffin in the block, mounting medium on the slide"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Additive im Container: Fixative im Einsendungsgefäß, Paraffin im Block, Einbettungsmedium auf dem Objektträger",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Additives in the container: fixatives in the submission container, paraffin in the block, mounting medium on the slide"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Substance"]
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt",
      "short" : "Beobachtungsberichtabschnitt",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Observation report section"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Bericht über eine Beobachtung (Abschnitt eines Befundberichts), die zu einem Befund führt. Dieser Berichtsabschnitt kann generische kodierte anatomisch-pathologische Beobachtungen (Befunde) enthalten. Im Berichtsabschnitt *Materialbearbeitung* kann die gesamte Probengewinnung und -bearbeitung detailliert kodiert werden. Im Berichtsabschnitt *Diagnostische Schlussfolgerung* muss mindestens eine kodierte Beobachtung enthalten sein.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Report on an observation (section of a pathology report) that leads to a finding. This report section may contain generic coded anatomical-pathological observations (findings). In the report section *Specimen processing*, the entire specimen collection and processing can be coded in detail. The report section *Diagnostic conclusion* must contain at least one coded observation."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.IntraoperativeBegutachtung",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.IntraoperativeBegutachtung",
      "short" : "IntraoperativeBegutachtung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "IntraoperativeAssessment"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Die Intraoperative Begutachtungssektion (Schnellschnitt) enthält die intraoperative Diagnose für jedes übersandte Material, die Materialidentifikation und -beschreibung und Informationen über Proben, die für weitere Untersuchungen (z.B. Flowzytometrie, Molekularpathologie, Elektronenmikroskopie) abgeleitet wurden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "The intraoperative assessment section (frozen section) contains the intraoperative diagnosis for each submitted material, the material identification and description, and information on specimens derived for further examinations (e.g. flow cytometry, molecular pathology, electron microscopy)."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.IntraoperativeBegutachtung.Text",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.IntraoperativeBegutachtung.Text",
      "short" : "Text einer intraoperativen Beobachtung.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Text of an intraoperative observation."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Text einer intraoperativen Beobachtung.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Text of an intraoperative observation."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.IntraoperativeBegutachtung.Einzelbeobachtung",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.IntraoperativeBegutachtung.Einzelbeobachtung",
      "short" : "Semantisch annotierte atomare Einheit einer generischen pathologisch-anatomischen Beobachtung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Semantically annotated atomic unit of a generic pathological-anatomical observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Semantisch annotierte atomare Einheit einer generischen pathologisch-anatomischen Beobachtung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Semantically annotated atomic unit of a generic pathological-anatomical observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.IntraoperativeBegutachtung.EingebettetesBild",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.IntraoperativeBegutachtung.EingebettetesBild",
      "short" : "Referenz zum eingebetteten Bild",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to the embedded image"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Referenz zum eingebetteten Bild",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to the embedded image"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Media"]
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MakrokopischeBeurteilung",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MakrokopischeBeurteilung",
      "short" : "MakroskopischeBeurteilung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "MacroscopicAssessment"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Die Makroskopische Beurteilungssektion enthält die Beschreibung der Proben, des Zuschnitts und der makroskopische Befunde, verlinkt zu Makrobildern und Skizzen von Zuschnittssituationen. Sie sollte auch Informationen über Gewebsgele enthalten, die für zusätzliche Studien bereitgestellt oder an Biobanken gesandt wurden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "The macroscopic assessment section contains the description of the specimens, of the grossing and of the macroscopic findings, linked to macro images and sketches of grossing situations. It should also contain information on tissue samples that were provided for additional studies or sent to biobanks."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MakrokopischeBeurteilung.Text",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MakrokopischeBeurteilung.Text",
      "short" : "Makroskopischer Begutachtungstext",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Macroscopic assessment text"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Makroskopischer Begutachtungstext",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Macroscopic assessment text"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MakrokopischeBeurteilung.Einzelbeobachtung",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MakrokopischeBeurteilung.Einzelbeobachtung",
      "short" : "Semantisch annotierte atomare Einheit einer generischen pathologisch-anatomische Beobachtung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Semantically annotated atomic unit of a generic pathological-anatomical observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Semantisch annotierte atomare Einheit einer generischen pathologisch-anatomische Beobachtung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Semantically annotated atomic unit of a generic pathological-anatomical observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MakrokopischeBeurteilung.EingebettetesBild",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MakrokopischeBeurteilung.EingebettetesBild",
      "short" : "EingebettetesBild",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "EmbeddedImage"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "In eine Beobachtung eingebettetes Bild",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Image embedded in an observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MakrokopischeBeurteilung.EingebettetesBild.ID",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MakrokopischeBeurteilung.EingebettetesBild.ID",
      "short" : "ID des eingebetteten Bildes",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ID of the embedded image"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "ID des eingebetteten Bildes",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ID of the embedded image"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "id"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MakrokopischeBeurteilung.EingebettetesBild.MakroBild",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MakrokopischeBeurteilung.EingebettetesBild.MakroBild",
      "short" : "Makro-Bild der Zuschnittsituation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Macro image of the grossing situation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Makro-Bild der Zuschnittsituation",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Macro image of the grossing situation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MakrokopischeBeurteilung.EingebettetesBild.Skizze",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MakrokopischeBeurteilung.EingebettetesBild.Skizze",
      "short" : "Skizze einer (z.B. Zuschnitts)situation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Sketch of a situation (e.g. grossing)"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Während des Zuschnitts des Materials werden auch Skizzen zur Schnittführung, zur Aufteilung von Gewebsstücken und zur Markierung angefertigt, um die resultierenden Blöcke und Schnitte topografisch dem Gewebe, aus dem sie entnommen wurden, zuordnen zu können.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "During grossing of the material, sketches of the cutting, of the division of tissue pieces and of the markings are also produced, so that the resulting blocks and sections can be topographically assigned to the tissue from which they were taken."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MikroskopischeBeurteilung",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MikroskopischeBeurteilung",
      "short" : "Die Mikroskopische Begutachtungssektion enthält optional die histopathologischen Befunde des Falles",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "The microscopic assessment section optionally contains the histopathological findings of the case"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Die Mikroskopische Begutachtungssektion enthält optional die histopathologischen Befunde des Falles. Sie sollte genutzt werden, um die Ergebnisse histochemischer und immunhistochemischer Färbungen und von bildgestützten molekularpathologischen Befunden aufzuzeichnen.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "The microscopic assessment section optionally contains the histopathological findings of the case. It should be used to record the results of histochemical and immunohistochemical stains and of image-based molecular pathology findings."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MikroskopischeBeurteilung.Text",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MikroskopischeBeurteilung.Text",
      "short" : "Mikroskopischer Beurteilungstext",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Microscopic assessment text"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Mikroskopischer Beurteilungstext",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Microscopic assessment text"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MikroskopischeBeurteilung.Einzelbeobachtung",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MikroskopischeBeurteilung.Einzelbeobachtung",
      "short" : "Semantisch annotierte atomare Einheit einer generischen pathologisch-anatomische Beobachtung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Semantically annotated atomic unit of a generic pathological-anatomical observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Jede Beobachtung, die als Bestandteil einer pathologisch-anatomischen Untersuchung im Befundbericht erwähnt ist, kann zusätzlich zur textuellen Erwähnung auch semantisch annotiert, d.h. mit einem Code und einem Value in den Bericht maschinenlesbar aufgenommen werden. Die semantische Annotation kann durch beliebige Terminologiesysteme erfolgen, LOINC (für die Kodierung der Beobachtung) und SNOMED-CT (für die Kodierung des Beobachtungsergebnisses, falls es sich nicht um einen Messwert handelt), sind bevorzugt zu verwenden. Codierungsregeln für diese beiden Referenzterminologien sind unter \"Practical Guidance on Uses of SNOMED CT and LOINC\" (https://confluence.ihtsdotools.org/display/DOCLOINC/5.2+Practical+Guidance+on+Uses+of+SNOMED+CT+and+LOINC) hinterlegt.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Every observation mentioned in the pathology report as part of a pathological-anatomical examination can, in addition to the textual mention, also be annotated semantically, i.e. included in the report in machine-readable form with a code and a value. The semantic annotation may use any terminology system; LOINC (for coding the observation) and SNOMED CT (for coding the observation result, unless it is a measured value) are to be used preferentially. Coding rules for these two reference terminologies are provided under \"Practical Guidance on Uses of SNOMED CT and LOINC\" (https://confluence.ihtsdotools.org/display/DOCLOINC/5.2+Practical+Guidance+on+Uses+of+SNOMED+CT+and+LOINC)."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MikroskopischeBeurteilung.EingebettetesBild",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MikroskopischeBeurteilung.EingebettetesBild",
      "short" : "EingebettetesBild",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "EmbeddedImage"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "In eine Beobachtung eingebettetes Bild",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Image embedded in an observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MikroskopischeBeurteilung.EingebettetesBild.ID",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MikroskopischeBeurteilung.EingebettetesBild.ID",
      "short" : "ID des eingebetteten Bildes",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ID of the embedded image"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "ID des eingebetteten Bildes",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ID of the embedded image"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "id"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MikroskopischeBeurteilung.EingebettetesBild.MikroBild",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MikroskopischeBeurteilung.EingebettetesBild.MikroBild",
      "short" : "Okularaufnahme oder WSI oder Screenshot von WSI",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Eyepiece photograph or WSI or screenshot of a WSI"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Okularaufnahme oder WSI oder Screenshot von WSI",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Eyepiece photograph or WSI or screenshot of a WSI"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MikroskopischeBeurteilung.EingebettetesBild.ROI",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.MikroskopischeBeurteilung.EingebettetesBild.ROI",
      "short" : "Region-of-interest",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Region-of-interest"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Region-of-interest",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Region-of-interest"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.ZustaetzlicheBeobachtung",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.ZustaetzlicheBeobachtung",
      "short" : "Nicht-morphologische Beobachtung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Non-morphological observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein für die jeweilige nicht-morphologische Beobachtung zutreffender LOINC-Code ist auszuwählen.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "A LOINC code applicable to the respective non-morphological observation must be selected."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.ZustaetzlicheBeobachtung.Text",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.ZustaetzlicheBeobachtung.Text",
      "short" : "Text einer zusätzlichen spezifizierten Beobachtung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Text of an additional specified observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Text einer zusätzlichen spezifizierten Beobachtung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Text of an additional specified observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.ZustaetzlicheBeobachtung.Einzelbeobachtung",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.ZustaetzlicheBeobachtung.Einzelbeobachtung",
      "short" : "Semantisch annotierte atomare Einheit einer generischen pathologisch-anatomische Beobachtung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Semantically annotated atomic unit of a generic pathological-anatomical observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Jede Beobachtung, die als Bestandteil einer pathologisch-anatomischen Untersuchung im Befundbericht erwähnt ist, kann zusätzlich zur textuellen Erwähnung auch semantisch annotiert, d.h. mit einem Code und einem Value in den Bericht maschinenlesbar aufgenommen werden. Die semantische Annotation kann durch beliebige Terminologiesysteme erfolgen, LOINC (für die Kodierung der Beobachtung) und SNOMED-CT (für die Kodierung des Beobachtungsergebnisses, falls es sich nicht um einen Messwert handelt), sind bevorzugt zu verwenden. Codierungsregeln für diese beiden Referenzterminologien sind unter \"Practical Guidance on Uses of SNOMED CT and LOINC\" (https://confluence.ihtsdotools.org/display/DOCLOINC/5.2+Practical+Guidance+on+Uses+of+SNOMED+CT+and+LOINC) hinterlegt.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Every observation mentioned in the pathology report as part of a pathological-anatomical examination can, in addition to the textual mention, also be annotated semantically, i.e. included in the report in machine-readable form with a code and a value. The semantic annotation may use any terminology system; LOINC (for coding the observation) and SNOMED CT (for coding the observation result, unless it is a measured value) are to be used preferentially. Coding rules for these two reference terminologies are provided under \"Practical Guidance on Uses of SNOMED CT and LOINC\" (https://confluence.ihtsdotools.org/display/DOCLOINC/5.2+Practical+Guidance+on+Uses+of+SNOMED+CT+and+LOINC)."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.ZustaetzlicheBeobachtung.EingebettetesBild",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.ZustaetzlicheBeobachtung.EingebettetesBild",
      "short" : "EingebettetesBild",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "EmbeddedImage"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "In eine Beobachtung eingebettetes Bild",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Image embedded in an observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.ZustaetzlicheBeobachtung.EingebettetesBild.ID",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.ZustaetzlicheBeobachtung.EingebettetesBild.ID",
      "short" : "ID des eingebetteten Bildes",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ID of the embedded image"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "ID des eingebetteten Bildes",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ID of the embedded image"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "id"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.ZustaetzlicheBeobachtung.ZugehoerigesDokument",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.ZustaetzlicheBeobachtung.ZugehoerigesDokument",
      "short" : "Ein der zusätzlichen, spezifizierten Beobachtung zugehöriges Dokument, z.B. ein molekularpathologischer Befundbericht, der mittels OMICS Ressourcen aus dem Untersuchungsmaterial der Pathologisch-anatomischen Begutachtung erstellt wurde.",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "A document belonging to the additional specified observation, e.g. a molecular pathology report created by means of OMICS resources from the material examined in the pathological-anatomical assessment."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein der zusätzlichen, spezifizierten Beobachtung zugehöriges Dokument, z.B. ein molekularpathologischer Befundbericht, der mittels OMICS Ressourcen aus dem Untersuchungsmaterial der Pathologisch-anatomischen Begutachtung erstellt wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "A document belonging to the additional specified observation, e.g. a molecular pathology report created by means of OMICS resources from the material examined in the pathological-anatomical assessment."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung",
      "short" : "Die Diagnostische Schlussfolgerungssektion enthält die Diagnose(n) an allen Materialien / Proben, die zu einem Fall eingesandt wurden",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "The diagnostic conclusion section contains the diagnosis(es) for all materials / specimens submitted for a case"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Die Diagnostische Schlussfolgerungssektion enthält die Diagnose(n) an allen Materialien / Proben, die zu einem Fall eingesandt wurden. Diagnosen werden für jedes Material oder jede Gruppe von Materialien werden separat berichtet. Die Sektion schließt zusätzliche pathologische Befunde und Ergebnisse von unterstützenden Untersuchungen ein. Sie kann Diagramme, Bilder und virtuelle Schnitte enthalten. Für komplexe Beobachtungen, z.B. Tumorformeln, Score-Systeme, Gradings, etc.  sollte auf entsprechende Profile aus anderen MII-Modulen zurückgegriffen werden. Wenn Cancer Checklists zur Befundberichtserstellung benutzt wurden, sollte dies ebenfalls in dieser Sektion eingeschlossen sein.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "The diagnostic conclusion section contains the diagnosis(es) for all materials / specimens submitted for a case. Diagnoses are reported separately for each material or each group of materials. The section includes additional pathological findings and results of supporting examinations. It may contain diagrams, images and virtual slides. For complex observations, e.g. tumor formulas, scoring systems, gradings, etc., the corresponding profiles from other MII modules should be used. If cancer checklists were used to create the report, this should also be included in this section."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.Text",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.Text",
      "short" : "Text der diagnostischen Schlussfolgerung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Text of the diagnostic conclusion"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Text der diagnostischen Schlussfolgerung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Text of the diagnostic conclusion"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.Einzelbeobachtung",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.Einzelbeobachtung",
      "short" : "Semantisch annotierte atomare Einheit einer generischen pathologisch-anatomische Beobachtung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Semantically annotated atomic unit of a generic pathological-anatomical observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Jede Beobachtung, die als Bestandteil einer pathologisch-anatomischen Untersuchung im Befundbericht erwähnt ist, kann zusätzlich zur textuellen Erwähnung auch semantisch annotiert, d.h. mit einem Code und einem Value in den Bericht maschinenlesbar aufgenommen werden. Die semantische Annotation kann durch beliebige Terminologiesysteme erfolgen, LOINC (für die Kodierung der Beobachtung) und SNOMED-CT (für die Kodierung des Beobachtungsergebnisses, falls es sich nicht um einen Messwert handelt), sind bevorzugt zu verwenden. Codierungsregeln für diese beiden Referenzterminologien sind unter \"Practical Guidance on Uses of SNOMED CT and LOINC\" (https://confluence.ihtsdotools.org/display/DOCLOINC/5.2+Practical+Guidance+on+Uses+of+SNOMED+CT+and+LOINC) hinterlegt.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Every observation mentioned in the pathology report as part of a pathological-anatomical examination can, in addition to the textual mention, also be annotated semantically, i.e. included in the report in machine-readable form with a code and a value. The semantic annotation may use any terminology system; LOINC (for coding the observation) and SNOMED CT (for coding the observation result, unless it is a measured value) are to be used preferentially. Coding rules for these two reference terminologies are provided under \"Practical Guidance on Uses of SNOMED CT and LOINC\" (https://confluence.ihtsdotools.org/display/DOCLOINC/5.2+Practical+Guidance+on+Uses+of+SNOMED+CT+and+LOINC)."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.EingebettetesBild",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.EingebettetesBild",
      "short" : "EingebettetesBild",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "EmbeddedImage"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "In eine Beobachtung eingebettetes Bild",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Image embedded in an observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.EingebettetesBild.ID",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.EingebettetesBild.ID",
      "short" : "ID des eingebetteten Bildes",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ID of the embedded image"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "ID des eingebetteten Bildes",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "ID of the embedded image"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "id"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.EingebettetesBild.Skizze",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.EingebettetesBild.Skizze",
      "short" : "Skizze",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Sketch"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Skizze",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Sketch"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.EingebettetesBild.MakroBild",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.EingebettetesBild.MakroBild",
      "short" : "Makro-Bild",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Macro image"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Makro-Bild",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Macro image"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.EingebettetesBild.MikroBild",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.EingebettetesBild.MikroBild",
      "short" : "Mikro-Bild",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Micro image"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Mikro-Bild",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Micro image"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.EingebettetesBild.ROI",
      "path" : "mii-lm-patho-logical-model.Beobachtungsberichtabschnitt.DiagnostischeSchlussfolgerung.EingebettetesBild.ROI",
      "short" : "Region-of-interest",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Region-of-interest"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Region-of-interest",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Region-of-interest"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Attachment"
      }]
    }]
  }
}

```
