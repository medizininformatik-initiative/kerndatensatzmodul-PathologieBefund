# MII PR Patho Specimen - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Patho Specimen**

## Ressourcenprofil: MII PR Patho Specimen 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_PR_Patho_Specimen |

 
Dieses Profil erbt von [Profile - Specimen - Bioprobe - Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core) Ihm liegt das Domänen-Analyse-Modell von HL7 (HL7_DAM_SPECIMEN_R2_INFORM_2019APR) zugrunde. Dieses berücksichtigt insbesondere für die Pathologie das Rollenmodell von Specimen, welche sowohl Gegenstand als auch Produkt von Laborprozessen sind. Das Rootelement(Sample) ist ein klinisch gewonnenes Probenmaterial von einem Patienten, entspricht im Pathologie-Workflow einem Part. Tochterelemente sind Blöcke und Schnitte bzw. ein zytologisches Präparat. Die Kinderproben (Blöcke und Schnitte) sollten stets und mindestens ihre direkte Elternprobe über das Element Specimen.parent referenzieren. 
Proben werden in verschiedenen Profilen referenziert. Im "PathologieBefund" und in den "Einzelbeobachtungen" der Grouper für Makroskopie und Diagnostische Schlussfolgerungen sollten die Proben des Eingangs (Parts), in den "Einzelbeobachtungen" des Mikroskopie-Groupers die Proben der gefärbten Gewebsschnitt-Ebene referenziert werden. 

### Beispiele

Part (Klinisch gewonnene Probe): [mii-exa-patho-prostate-tru-cut-biopsy-sample](Specimen-mii-exa-patho-prostate-tru-cut-biopsy-sample.md)

Block (resultiert aus makroskopischem Zuschnitt): [mii-exa-patho-prostate-biopsy-block](Specimen-mii-exa-patho-prostate-biopsy-block.md)

Slide (Schneiden und Färben): [mii-exa-patho-prostate-biopsy-schnitt-HE](Specimen-mii-exa-patho-prostate-biopsy-schnitt-HE.md)

**Usages:**

* Use this Profile: [MII PR Patho Bundle](StructureDefinition-mii-pr-patho-bundle.md)
* Refer to this Profile: [MII PR Patho Attached Image](StructureDefinition-mii-pr-patho-attached-image.md)
* Examples for this Profile: [Specimen/mii-exa-patho-breast-resection-sample](Specimen-mii-exa-patho-breast-resection-sample.md), [Specimen/mii-exa-patho-prostate-biopsy-block](Specimen-mii-exa-patho-prostate-biopsy-block.md), [Specimen/mii-exa-patho-prostate-biopsy-schnitt-HE](Specimen-mii-exa-patho-prostate-biopsy-schnitt-HE.md), [Specimen/mii-exa-patho-prostate-biopsy-schnitt-p63](Specimen-mii-exa-patho-prostate-biopsy-schnitt-p63.md)... Show 2 more, [Specimen/mii-exa-patho-prostate-resection-sample](Specimen-mii-exa-patho-prostate-resection-sample.md) and [Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample](Specimen-mii-exa-patho-prostate-tru-cut-biopsy-sample.md)
* CapabilityStatements using this Profile: [MII CPS Patho Capability Statement](CapabilityStatement-mii-cps-patho-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.patho|current/StructureDefinition/StructureDefinition-mii-pr-patho-specimen.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore) 

** Summary **

Mandatory: 2 elements(10 nested mandatory elements)
 Must-Support: 19 elements
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR Patho Service Request (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request)](StructureDefinition-mii-pr-patho-service-request.md)
* [MII PR Biobank Substance Additiv (https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.collection.bodySite](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Specimen.col.bodySite.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Specimen.identifier

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore) 

** Summary **

Mandatory: 2 elements(10 nested mandatory elements)
 Must-Support: 19 elements
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR Patho Service Request (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request)](StructureDefinition-mii-pr-patho-service-request.md)
* [MII PR Biobank Substance Additiv (https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.collection.bodySite](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Specimen.col.bodySite.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Specimen.identifier

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-patho-specimen.csv), [Excel](../StructureDefinition-mii-pr-patho-specimen.xlsx), [Schematron](../StructureDefinition-mii-pr-patho-specimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-patho-specimen",
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Patho_Specimen",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Patho_Specimen"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Patho Specimen",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Patho Probe"
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
        "valueString" : "MII PR Patho Specimen"
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
        "valueString" : "MII PR Patho Specimen"
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
  "description" : "Dieses Profil erbt von [Profile - Specimen - Bioprobe - Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core)\nIhm liegt das Domänen-Analyse-Modell von HL7 (HL7_DAM_SPECIMEN_R2_INFORM_2019APR) zugrunde. Dieses berücksichtigt insbesondere für die Pathologie das Rollenmodell von Specimen, welche sowohl Gegenstand als auch Produkt von Laborprozessen sind. Das Rootelement(Sample) ist ein klinisch gewonnenes Probenmaterial von einem Patienten, entspricht im Pathologie-Workflow einem Part. Tochterelemente sind Blöcke und Schnitte bzw. ein zytologisches Präparat. Die Kinderproben (Blöcke und Schnitte) sollten stets und mindestens ihre direkte Elternprobe über das Element Specimen.parent referenzieren.\n\nProben werden in verschiedenen Profilen referenziert. Im \"PathologieBefund\" und in den \"Einzelbeobachtungen\" der Grouper für Makroskopie und Diagnostische Schlussfolgerungen sollten die Proben des Eingangs (Parts), in den \"Einzelbeobachtungen\" des Mikroskopie-Groupers die Proben der gefärbten Gewebsschnitt-Ebene referenziert werden.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "This profile inherits from [Profile - Specimen - Bioprobe - Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core)\nIt is based on the HL7 Domain Analysis Model (HL7_DAM_SPECIMEN_R2_INFORM_2019APR). This model, in particular for pathology, accounts for the role model of specimens, which are both the subject and the product of laboratory processes. The root element (Sample) is clinically obtained specimen material from a patient and corresponds to a Part in the pathology workflow. Child elements are blocks and slides, or a cytological preparation. The child specimens (blocks and slides) should always reference at least their direct parent specimen via the Specimen.parent element.\n\nSpecimens are referenced in various profiles. In the \"PathologyReport\" and in the \"individual observations\" of the groupers for Macroscopy and Diagnostic Conclusions, the specimens of the accession (Parts) should be referenced; in the \"individual observations\" of the Microscopy grouper, the specimens of the stained tissue slide level should be referenced."
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
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen.meta.lastUpdated",
      "path" : "Specimen.meta.lastUpdated",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.text",
      "path" : "Specimen.text",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier",
      "path" : "Specimen.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this.type"
        }],
        "description" : "Contains slices for the request's placer- and filler IDs based on type.coding pattern",
        "rules" : "open"
      },
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
      "definition" : "Eindeutiger Identifikator der Probe",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Eindeutiger Identifikator der Probe"
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
            "valueString" : "Unique identifier of the specimen"
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
            "valueString" : "Unique identifier of the specimen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1
    },
    {
      "id" : "Specimen.identifier:Placer-ID",
      "path" : "Specimen.identifier",
      "sliceName" : "Placer-ID",
      "short" : "Placer identifier",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Auftraggeber-ID"
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
            "valueString" : "Placer ID"
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
            "valueString" : "Placer identifier"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Identifier for the placer of the pathology request",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Identifikator des Auftraggebers"
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
            "valueString" : "Identifier of the placer"
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
            "valueString" : "Identifier for the placer of the pathology request"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:Placer-ID.type",
      "path" : "Specimen.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "PLAC"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:Placer-ID.type.coding",
      "path" : "Specimen.identifier.type.coding",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:Placer-ID.type.coding.system",
      "path" : "Specimen.identifier.type.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:Placer-ID.type.coding.code",
      "path" : "Specimen.identifier.type.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:Placer-ID.system",
      "path" : "Specimen.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:Placer-ID.value",
      "path" : "Specimen.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:Filler-ID",
      "path" : "Specimen.identifier",
      "sliceName" : "Filler-ID",
      "short" : "Filler Identifier",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Auftragnehmer-ID"
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
            "valueString" : "Filler ID"
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
            "valueString" : "Filler Identifier"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Identifier for the filler of the pathology request",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Identifikator des Auftragnehmers"
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
            "valueString" : "Identifier of the filler"
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
            "valueString" : "Identifier for the filler of the pathology request"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:Filler-ID.type",
      "path" : "Specimen.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "FILL"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:Filler-ID.type.coding",
      "path" : "Specimen.identifier.type.coding",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:Filler-ID.type.coding.system",
      "path" : "Specimen.identifier.type.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:Filler-ID.type.coding.code",
      "path" : "Specimen.identifier.type.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:Filler-ID.system",
      "path" : "Specimen.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:Filler-ID.value",
      "path" : "Specimen.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.accessionIdentifier",
      "path" : "Specimen.accessionIdentifier",
      "short" : "Labor-ID",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Labor-ID"
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
            "valueString" : "Accession identifier"
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
            "valueString" : "Laboratory ID"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Laborinterner Identifikator, wird vergeben bei Eingang",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Laborinterner Identifikator"
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
            "valueString" : "Laboratory internal identifier"
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
            "valueString" : "Laboratory-internal identifier, assigned on receipt"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Specimen.request",
      "path" : "Specimen.request",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request"]
      }]
    },
    {
      "id" : "Specimen.collection.method",
      "path" : "Specimen.collection.method",
      "short" : "Entnahmemethode",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Entnahmemethode"
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
            "valueString" : "Collection method"
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
            "valueString" : "Collection method"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Methode der Probenentnahme",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Methode der Probenentnahme"
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
            "valueString" : "Method of specimen collection"
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
            "valueString" : "Method of specimen collection"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-collection-method-snomed-ct"
      }
    },
    {
      "id" : "Specimen.collection.bodySite.extension:bodyStructure",
      "path" : "Specimen.collection.bodySite.extension",
      "sliceName" : "bodyStructure",
      "short" : "Koerperstruktur",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Koerperstruktur"
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
            "valueString" : "Body structure"
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
            "valueString" : "Body structure"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf eine BodyStructure-Ressource mit der detaillierten Lokalisation",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf eine BodyStructure-Ressource mit der detaillierten Lokalisation"
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
            "valueString" : "Reference to a BodyStructure resource carrying the detailed location"
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
            "valueString" : "Reference to a BodyStructure resource with the detailed location"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.collection.bodySite"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.bodySite.extension:bodyStructure.extension",
      "path" : "Specimen.collection.bodySite.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Specimen.collection.bodySite.extension:bodyStructure.value[x]",
      "path" : "Specimen.collection.bodySite.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/BodyStructure"]
      }]
    },
    {
      "id" : "Specimen.processing",
      "path" : "Specimen.processing"
    },
    {
      "id" : "Specimen.processing.procedure",
      "path" : "Specimen.processing.procedure",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-processing-procedure-snomed-ct"
      }
    },
    {
      "id" : "Specimen.processing:lagerprozess",
      "path" : "Specimen.processing",
      "sliceName" : "lagerprozess"
    },
    {
      "id" : "Specimen.processing:lagerprozess.additive",
      "path" : "Specimen.processing.additive",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance"]
      }]
    },
    {
      "id" : "Specimen.container",
      "path" : "Specimen.container",
      "short" : "Behälter",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Behälter"
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
            "valueString" : "Container"
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
            "valueString" : "Container"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Probenbehälter",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Probenbehälter"
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
            "valueString" : "Specimen container"
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
            "valueString" : "Specimen container"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Specimen.container.type",
      "path" : "Specimen.container.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-container-type-snomed-ct"
      }
    }]
  }
}

```
