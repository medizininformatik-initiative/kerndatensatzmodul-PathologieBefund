# MII PR Patho Composition - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Patho Composition**

## Ressourcenprofil: MII PR Patho Composition 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition | *Version*:2027.0.0-ballot.rc |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_PR_Patho_Composition |

 
Dieses Profil erbt von [Profile - ISiK - BerichtSubsysteme](https://simplifier.net/isik-stufe-5/isikberichtsubsysteme) aus der Spezifikation [ISiK - Stufe 5](https://simplifier.net/isik-stufe-5). 
Das Profil **MII PR Patho Composition** fasst als Profil einer Composition Ressource mit speziellen Constraints für ClinicalDocuments die Ressourcen für einen kompletten, textzentrierten Pathologiebefundbericht mit den Eigenschaften eines klinischen Dokuments zusammen. Ein vollständiges Beispiel einer Composition mit Narrativen findet sich im [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html). Dieses Profil ist das erste Entry in einem Bundle des `Bundle.type` “document”; Aufbau und Signatur des Bundles sind im Profil [MII PR Patho Bundle](StructureDefinition-mii-pr-patho-bundle.md) beschrieben. Neben dem Diagnostischen Report (`patho-diagnostic-report`) und einem oder mehreren zusätzlichen kompletten Reports (`additional-diagnostic-report`) können die Beobachtungsberichtabschnitte optional auch direkt als eigene Sections der Composition geführt werden (Makroskopie, Mikroskopie, Intraoperativ, Diagnostische Schlussfolgerung, Zusätzliche Beobachtung); jede dieser Sections referenziert denselben Grouper wie `DiagnosticReport.result`. Composition und DiagnosticReport können zusätzlich über die Extension `composition-diagnosticReportReference` bzw. die R5-Cross-Version-Extension `DiagnosticReport.composition` wechselseitig aufeinander verweisen. Alle diese Ergänzungen sind optional. 

**Usages:**

* Examples for this Profile: [Composition/mii-exa-patho-composition](Composition-mii-exa-patho-composition.md)
* CapabilityStatements using this Profile: [MII CPS Patho Capability Statement](CapabilityStatement-mii-cps-patho-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.patho|current/StructureDefinition/StructureDefinition-mii-pr-patho-composition.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ISiKBerichtSubSysteme](https://simplifier.net/resolve?scope=de.gematik.isik@5.1.2&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKBerichtSubSysteme) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ISiKBerichtSubSysteme](https://simplifier.net/resolve?scope=de.gematik.isik@5.1.2&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKBerichtSubSysteme) 

** Summary **

Mandatory: 10 elements(2 nested mandatory elements)
 Must-Support: 28 elements
 Fixed: 6 elements

**Structures**

This structure refers to these other structures:

* [ISiKPersonImGesundheitsberuf (https://gematik.de/fhir/isik/StructureDefinition/ISiKPersonImGesundheitsberuf)](https://simplifier.net/resolve?scope=de.gematik.isik@5.1.2&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKPersonImGesundheitsberuf)
* [MII PR Patho Report (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report)](StructureDefinition-mii-pr-patho-report.md)
* [MII PR Patho Macroscopic Grouper (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper)](StructureDefinition-mii-pr-patho-macroscopic-grouper.md)
* [MII PR Patho Microscopic Grouper (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper)](StructureDefinition-mii-pr-patho-microscopic-grouper.md)
* [MII PR Patho Intraoperative Grouper (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-intraoperative-grouper)](StructureDefinition-mii-pr-patho-intraoperative-grouper.md)
* [MII PR Patho Diagnostic Conclusion Grouper (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper)](StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.md)
* [MII PR Patho Additional Specified Grouper (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-additional-specified-grouper)](StructureDefinition-mii-pr-patho-additional-specified-grouper.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-composition-clinicaldocument-versionNumber.html)
* [http://hl7.eu/fhir/extensions/StructureDefinition/composition-diagnosticReportReference](http://hl7.eu/fhir/extensions/1.3.0/StructureDefinition-composition-diagnosticReportReference.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Composition.attester
* The element 1 is sliced based on the value of Composition.relatesTo.target[x]
* The element 1 is sliced based on the value of Composition.section

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ISiKBerichtSubSysteme](https://simplifier.net/resolve?scope=de.gematik.isik@5.1.2&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKBerichtSubSysteme) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ISiKBerichtSubSysteme](https://simplifier.net/resolve?scope=de.gematik.isik@5.1.2&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKBerichtSubSysteme) 

** Summary **

Mandatory: 10 elements(2 nested mandatory elements)
 Must-Support: 28 elements
 Fixed: 6 elements

**Structures**

This structure refers to these other structures:

* [ISiKPersonImGesundheitsberuf (https://gematik.de/fhir/isik/StructureDefinition/ISiKPersonImGesundheitsberuf)](https://simplifier.net/resolve?scope=de.gematik.isik@5.1.2&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKPersonImGesundheitsberuf)
* [MII PR Patho Report (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report)](StructureDefinition-mii-pr-patho-report.md)
* [MII PR Patho Macroscopic Grouper (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper)](StructureDefinition-mii-pr-patho-macroscopic-grouper.md)
* [MII PR Patho Microscopic Grouper (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper)](StructureDefinition-mii-pr-patho-microscopic-grouper.md)
* [MII PR Patho Intraoperative Grouper (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-intraoperative-grouper)](StructureDefinition-mii-pr-patho-intraoperative-grouper.md)
* [MII PR Patho Diagnostic Conclusion Grouper (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper)](StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.md)
* [MII PR Patho Additional Specified Grouper (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-additional-specified-grouper)](StructureDefinition-mii-pr-patho-additional-specified-grouper.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-composition-clinicaldocument-versionNumber.html)
* [http://hl7.eu/fhir/extensions/StructureDefinition/composition-diagnosticReportReference](http://hl7.eu/fhir/extensions/1.3.0/StructureDefinition-composition-diagnosticReportReference.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Composition.attester
* The element 1 is sliced based on the value of Composition.relatesTo.target[x]
* The element 1 is sliced based on the value of Composition.section

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-patho-composition.csv), [Excel](../StructureDefinition-mii-pr-patho-composition.xlsx), [Schematron](../StructureDefinition-mii-pr-patho-composition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-patho-composition",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition",
  "version" : "2027.0.0-ballot.rc",
  "name" : "MII_PR_Patho_Composition",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Patho_Composition"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Patho Composition",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Patho Zusammenstellung"
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
        "valueString" : "MII PR Patho Composition"
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
        "valueString" : "MII PR Patho Composition"
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
  "description" : "Dieses Profil erbt von [Profile - ISiK - BerichtSubsysteme](https://simplifier.net/isik-stufe-5/isikberichtsubsysteme) aus der Spezifikation [ISiK - Stufe 5](https://simplifier.net/isik-stufe-5). \n\nDas Profil **MII PR Patho Composition** fasst als Profil einer Composition Ressource mit speziellen Constraints für ClinicalDocuments die Ressourcen für einen kompletten, textzentrierten Pathologiebefundbericht mit den Eigenschaften eines klinischen Dokuments zusammen. Ein vollständiges Beispiel einer Composition mit Narrativen findet sich im [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html). \nDieses Profil ist das erste Entry in einem Bundle des `Bundle.type` “document”; Aufbau und Signatur des Bundles sind im Profil [MII PR Patho Bundle](StructureDefinition-mii-pr-patho-bundle.html) beschrieben.\nNeben dem Diagnostischen Report (`patho-diagnostic-report`) und einem oder mehreren zusätzlichen kompletten Reports (`additional-diagnostic-report`) können die Beobachtungsberichtabschnitte optional auch direkt als eigene Sections der Composition geführt werden (Makroskopie, Mikroskopie, Intraoperativ, Diagnostische Schlussfolgerung, Zusätzliche Beobachtung); jede dieser Sections referenziert denselben Grouper wie `DiagnosticReport.result`. Composition und DiagnosticReport können zusätzlich über die Extension `composition-diagnosticReportReference` bzw. die R5-Cross-Version-Extension `DiagnosticReport.composition` wechselseitig aufeinander verweisen. Alle diese Ergänzungen sind optional.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "This profile inherits from [Profile - ISiK - BerichtSubsysteme](https://simplifier.net/isik-stufe-5/isikberichtsubsysteme) from the specification [ISiK - Stufe 5](https://simplifier.net/isik-stufe-5).\n\nAs a profile of a Composition resource with special constraints for ClinicalDocuments, the **MII PR Patho Composition** profile aggregates the resources for a complete, text-centered pathology report with the properties of a clinical document. A complete example of a Composition with narratives can be found in the [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html).\nThis profile is the first entry in a Bundle of `Bundle.type` \"document\"; the structure and signature of the Bundle are described in the [MII PR Patho Bundle](StructureDefinition-mii-pr-patho-bundle.html) profile.\nIn addition to the Diagnostic Report (`patho-diagnostic-report`) and one or more additional complete reports (`additional-diagnostic-report`), the observation report sections may optionally be carried directly as separate sections of the Composition (macroscopy, microscopy, intraoperative, diagnostic conclusion, additional observation); each of these sections references the same grouper as `DiagnosticReport.result`. Composition and DiagnosticReport may additionally reference each other via the extension `composition-diagnosticReportReference` and the R5 cross-version extension `DiagnosticReport.composition` respectively. All of these additions are optional."
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "https://gematik.de/fhir/isik/StructureDefinition/ISiKBerichtSubSysteme",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition"
    },
    {
      "id" : "Composition.meta.lastUpdated",
      "path" : "Composition.meta.lastUpdated",
      "mustSupport" : true
    },
    {
      "id" : "Composition.meta.profile",
      "path" : "Composition.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Composition.text",
      "path" : "Composition.text",
      "short" : "Header-Informationen",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Header information"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Composition.extension",
      "path" : "Composition.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Composition.extension:document-version",
      "path" : "Composition.extension",
      "sliceName" : "document-version",
      "short" : "Dokumentversion",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Dokumentversion"
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
            "valueString" : "Document version"
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
            "valueString" : "Document version"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Versionsnummer des Dokuments",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Versionsnummer des Dokuments"
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
            "valueString" : "Version number of the document"
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
            "valueString" : "Version number of the document"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.extension:diagnosticReport",
      "path" : "Composition.extension",
      "sliceName" : "diagnosticReport",
      "short" : "Diagnostikbericht",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Diagnostikbericht"
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
            "valueString" : "Diagnostic report"
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
            "valueString" : "Diagnostic report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf den zugehoerigen DiagnosticReport",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf den zugehoerigen DiagnosticReport"
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
            "valueString" : "Reference to the associated DiagnosticReport"
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
            "valueString" : "Reference to the corresponding DiagnosticReport"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.eu/fhir/extensions/StructureDefinition/composition-diagnosticReportReference"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.identifier",
      "path" : "Composition.identifier",
      "short" : "Identifikator",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Identifikator"
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
            "valueString" : "Identifier"
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
            "valueString" : "Identifier"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Eindeutiger Identifikator",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Eindeutiger Identifikator"
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
            "valueString" : "Unique identifier"
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
            "valueString" : "Unique identifier"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Composition.identifier.type",
      "path" : "Composition.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.identifier.type.coding",
      "path" : "Composition.identifier.type.coding",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ACSN",
        "display" : "Accession ID"
      }
    },
    {
      "id" : "Composition.status",
      "path" : "Composition.status",
      "comment" : "Bereits in Subsysteme auf 1..1 & Fixed Value auf final",
      "_comment" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Already constrained to 1..1 with a fixed value of final in Subsysteme"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Composition.type.coding:KDL",
      "path" : "Composition.type.coding",
      "sliceName" : "KDL",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-composition-type-kdl"
      }
    },
    {
      "id" : "Composition.type.coding:XDS",
      "path" : "Composition.type.coding",
      "sliceName" : "XDS"
    },
    {
      "id" : "Composition.type.coding:XDS.code",
      "path" : "Composition.type.coding.code",
      "fixedCode" : "PATH"
    },
    {
      "id" : "Composition.type.coding:sct",
      "path" : "Composition.type.coding",
      "sliceName" : "sct",
      "short" : "SNOMED CT Typ",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "SNOMED CT Typ"
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
            "valueString" : "SNOMED CT type"
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
            "valueString" : "SNOMED CT type"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "SNOMED CT Kodierung für Dokumenttyp",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "SNOMED CT Kodierung für Dokumenttyp"
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
            "valueString" : "SNOMED CT coding for document type"
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
            "valueString" : "SNOMED CT coding for the document type"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://snomed.info/sct"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-composition-type-snomed-ct"
      }
    },
    {
      "id" : "Composition.type.coding:sct.system",
      "path" : "Composition.type.coding.system",
      "fixedUri" : "http://snomed.info/sct",
      "mustSupport" : true
    },
    {
      "id" : "Composition.type.coding:sct.code",
      "path" : "Composition.type.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Composition.category.coding:IHE",
      "path" : "Composition.category.coding",
      "sliceName" : "IHE"
    },
    {
      "id" : "Composition.category.coding:IHE.code",
      "path" : "Composition.category.coding.code",
      "fixedCode" : "BEF"
    },
    {
      "id" : "Composition.category.coding:sct",
      "path" : "Composition.category.coding",
      "sliceName" : "sct",
      "short" : "SNOMED CT Kategorie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "SNOMED CT Kategorie"
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
            "valueString" : "SNOMED CT category"
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
            "valueString" : "SNOMED CT category"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "SNOMED CT Kodierung für Dokumentkategorie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "SNOMED CT Kodierung für Dokumentkategorie"
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
            "valueString" : "SNOMED CT coding for document category"
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
            "valueString" : "SNOMED CT coding for the document category"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-composition-type-snomed-ct"
      }
    },
    {
      "id" : "Composition.category.coding:sct.system",
      "path" : "Composition.category.coding.system",
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Composition.encounter",
      "path" : "Composition.encounter",
      "min" : 1
    },
    {
      "id" : "Composition.author",
      "path" : "Composition.author",
      "short" : "Author can only be of type Practitioner or Organization",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Author can only be of type Practitioner or Organization"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://gematik.de/fhir/isik/StructureDefinition/ISiKPersonImGesundheitsberuf",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "Composition.attester",
      "path" : "Composition.attester",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this.mode"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Bestätiger",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Bestätiger"
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
            "valueString" : "Attester"
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
            "valueString" : "Attester"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Person die den Bericht bestätigt",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Person die den Bericht bestätigt"
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
            "valueString" : "Person who attests the report"
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
            "valueString" : "Person who attests the report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.attester:legal",
      "path" : "Composition.attester",
      "sliceName" : "legal",
      "short" : "Rechtlicher Bestätiger",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Rechtlicher Bestätiger"
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
            "valueString" : "Legal attester"
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
            "valueString" : "Legal attester"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Rechtliche Bestätigung des Berichts",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Rechtliche Bestätigung des Berichts"
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
            "valueString" : "Legal attestation of the report"
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
            "valueString" : "Legal authentication of the report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Composition.attester:legal.mode",
      "path" : "Composition.attester.mode",
      "fixedCode" : "legal"
    },
    {
      "id" : "Composition.attester:legal.party",
      "path" : "Composition.attester.party",
      "short" : "Partei",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Partei"
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
            "valueString" : "Party"
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
            "valueString" : "Party"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Bestätigende Person oder Organisation",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Bestätigende Person oder Organisation"
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
            "valueString" : "Attesting person or organization"
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
            "valueString" : "Attesting person or organization"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.attester:content-validator",
      "path" : "Composition.attester",
      "sliceName" : "content-validator",
      "short" : "Inhaltssprüfer",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Inhaltssprüfer"
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
            "valueString" : "Content validator"
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
            "valueString" : "Content validator"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Inhaltliche Prüfung des Berichts",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Inhaltliche Prüfung des Berichts"
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
            "valueString" : "Content validation of the report"
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
            "valueString" : "Content validation of the report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Composition.attester:content-validator.mode",
      "path" : "Composition.attester.mode",
      "fixedCode" : "professional"
    },
    {
      "id" : "Composition.attester:content-validator.party",
      "path" : "Composition.attester.party",
      "short" : "Partei",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Partei"
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
            "valueString" : "Party"
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
            "valueString" : "Party"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Prüfende Person oder Organisation",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Prüfende Person oder Organisation"
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
            "valueString" : "Validating person or organization"
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
            "valueString" : "Validating person or organization"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.custodian",
      "path" : "Composition.custodian",
      "short" : "Verwalter",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verwalter"
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
            "valueString" : "Custodian"
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
            "valueString" : "Custodian"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verwaltende Organisation",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verwaltende Organisation"
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
            "valueString" : "Managing organization"
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
            "valueString" : "Custodian organization"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.relatesTo",
      "path" : "Composition.relatesTo",
      "short" : "Bezieht sich auf",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Bezieht sich auf"
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
            "valueString" : "Relates to"
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
            "valueString" : "Relates to"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Beziehung zu anderen Dokumenten z.B. Vor- Zusatz- und/oder Korrekturbefunde",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Beziehung zu anderen Dokumenten z.B. Vor- Zusatz- und/oder Korrekturbefunde"
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
            "valueString" : "Relationship to other documents"
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
            "valueString" : "Relationship to other documents, e.g. previous, supplementary and/or corrected reports"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Composition.relatesTo.code",
      "path" : "Composition.relatesTo.code",
      "mustSupport" : true
    },
    {
      "id" : "Composition.relatesTo.target[x]",
      "path" : "Composition.relatesTo.target[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Composition.relatesTo.target[x]:targetReference",
      "path" : "Composition.relatesTo.target[x]",
      "sliceName" : "targetReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Composition"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.event",
      "path" : "Composition.event",
      "short" : "Ereignis",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ereignis"
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
            "valueString" : "Event"
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
            "valueString" : "Event"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Dokumentiertes Pathologie-Ereignis - die Begutachtung bzw. Befundung auf die sich der Befundbericht bezieht",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Dokumentiertes Pathologie-Ereignis - die Begutachtung bzw. Befundung auf die sich der Befundbericht bezieht"
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
            "valueString" : "Documented pathology event - the reporting act the report refers to"
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
            "valueString" : "Documented pathology event - the assessment or reporting to which the pathology report refers"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this.code.coding"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Composition.section.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section.code.coding",
      "path" : "Composition.section.code.coding",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-all-loinc"
      }
    },
    {
      "id" : "Composition.section.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:patho-diagnostic-report",
      "path" : "Composition.section",
      "sliceName" : "patho-diagnostic-report",
      "short" : "Pathologie-Diagnostikbericht",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Pathologie-Diagnostikbericht"
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
            "valueString" : "Pathology diagnostic report"
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
            "valueString" : "Pathology diagnostic report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Pathologie-Diagnostikbericht",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Pathologie-Diagnostikbericht"
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
            "valueString" : "Pathology diagnostic report"
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
            "valueString" : "Pathology diagnostic report"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:patho-diagnostic-report.code.coding",
      "path" : "Composition.section.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "60567-5"
      }
    },
    {
      "id" : "Composition.section:patho-diagnostic-report.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report"]
      }]
    },
    {
      "id" : "Composition.section:makroskopie",
      "path" : "Composition.section",
      "sliceName" : "makroskopie",
      "short" : "Makroskopie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Makroskopie"
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
            "valueString" : "Macroscopy"
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
            "valueString" : "Macroscopy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Abschnitt der makroskopischen Beurteilung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Abschnitt der makroskopischen Beurteilung"
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
            "valueString" : "Macroscopic assessment section"
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
            "valueString" : "Section of the macroscopic assessment"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:makroskopie.code.coding",
      "path" : "Composition.section.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "22634-0"
      }
    },
    {
      "id" : "Composition.section:makroskopie.entry",
      "path" : "Composition.section.entry",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper"]
      }]
    },
    {
      "id" : "Composition.section:mikroskopie",
      "path" : "Composition.section",
      "sliceName" : "mikroskopie",
      "short" : "Mikroskopie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Mikroskopie"
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
            "valueString" : "Microscopy"
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
            "valueString" : "Microscopy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Abschnitt der mikroskopischen Beurteilung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Abschnitt der mikroskopischen Beurteilung"
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
            "valueString" : "Microscopic assessment section"
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
            "valueString" : "Section of the microscopic assessment"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:mikroskopie.code.coding",
      "path" : "Composition.section.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "22635-7"
      }
    },
    {
      "id" : "Composition.section:mikroskopie.entry",
      "path" : "Composition.section.entry",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper"]
      }]
    },
    {
      "id" : "Composition.section:intraoperativ",
      "path" : "Composition.section",
      "sliceName" : "intraoperativ",
      "short" : "Intraoperative Beurteilung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Intraoperative Beurteilung"
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
            "valueString" : "Intraoperative assessment"
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
            "valueString" : "Intraoperative assessment"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Abschnitt der intraoperativen Beurteilung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Abschnitt der intraoperativen Beurteilung"
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
            "valueString" : "Intraoperative assessment section"
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
            "valueString" : "Section of the intraoperative assessment"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:intraoperativ.code.coding",
      "path" : "Composition.section.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "83321-0"
      }
    },
    {
      "id" : "Composition.section:intraoperativ.entry",
      "path" : "Composition.section.entry",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-intraoperative-grouper"]
      }]
    },
    {
      "id" : "Composition.section:diagnostische-schlussfolgerung",
      "path" : "Composition.section",
      "sliceName" : "diagnostische-schlussfolgerung",
      "short" : "Diagnostische Schlussfolgerung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Diagnostische Schlussfolgerung"
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
            "valueString" : "Diagnostic conclusion"
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
            "valueString" : "Diagnostic conclusion"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Abschnitt der diagnostischen Schlussfolgerung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Abschnitt der diagnostischen Schlussfolgerung"
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
            "valueString" : "Diagnostic conclusion section"
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
            "valueString" : "Section of the diagnostic conclusion"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:diagnostische-schlussfolgerung.code.coding",
      "path" : "Composition.section.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "22637-3"
      }
    },
    {
      "id" : "Composition.section:diagnostische-schlussfolgerung.entry",
      "path" : "Composition.section.entry",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper"]
      }]
    },
    {
      "id" : "Composition.section:zusaetzliche-beobachtung",
      "path" : "Composition.section",
      "sliceName" : "zusaetzliche-beobachtung",
      "short" : "Zusaetzliche Beobachtung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zusaetzliche Beobachtung"
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
            "valueString" : "Additional observation"
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
            "valueString" : "Additional observation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Abschnitt fuer zusaetzliche spezifizierte Beobachtungen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Abschnitt fuer zusaetzliche spezifizierte Beobachtungen"
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
            "valueString" : "Section for additional specified observations"
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
            "valueString" : "Section for additional specified observations"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:zusaetzliche-beobachtung.code.coding",
      "path" : "Composition.section.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "100969-5"
      }
    },
    {
      "id" : "Composition.section:zusaetzliche-beobachtung.entry",
      "path" : "Composition.section.entry",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-additional-specified-grouper"]
      }]
    }]
  }
}

```
