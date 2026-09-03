# MII PR Patho Section Grouper - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Patho Section Grouper**

## Ressourcenprofil: MII PR Patho Section Grouper ( Abstrakt ) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-section-grouper | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_PR_Patho_Section_Grouper |

 
Beim Profil **MII PR Patho Section Grouper** handelt es sich um ein abstraktes Profil, welches die Basis für die pathologischen Grouper Profile festlegt, jedoch nicht instanziiert werden soll. Die Grouper-Profile stellen als `DiagnosticReport.result:[grouper-name]` für einen [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.md) den jeweiligen Beobachtungsberichtsabschnitt (entspr. einer CDA-Section) dar und fungieren als Organizer für diese Gruppierungen von [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md). 
Hierbei handelt es sich um Untersuchungsergebnisse, die nach inhaltlichen und/oder formalen Erfordernissen zu logischen Gruppen ("Panels") zusammengefast werden müssen, z.B. die jeweiligen Beobachtungen an jeweils definierten Proben, z.B. den verschiedenen eingesandten Präparaten. Dieses spezielle Grouper-Observation-Element ist allen anderen Observation-Elementen voranzustellen, welche dann als `hasMember`-Referenzen zu [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md) eingebunden werden. [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md) Observations wiederum referenzieren ihre "Eltern-Beobachtungen" via `derivedFrom`-Referenzen zu SDC QuestionnaireResponses und/oder zu den jeweiligen Grouper Observations. 
Als “Panels” von Einzeluntersuchungen sind die folgenden Beobachtungsberichtabschnitte definiert: 
* [MII PR Patho Intraoperative Grouper](StructureDefinition-mii-pr-patho-intraoperative-grouper.md)
* [MII PR Patho Macroscopic Grouper](StructureDefinition-mii-pr-patho-macroscopic-grouper.md)
* [MII PR Patho Microscopic Grouper](StructureDefinition-mii-pr-patho-microscopic-grouper.md)
* [MII PR Patho Additional Specified Grouper](StructureDefinition-mii-pr-patho-additional-specified-grouper.md)
* [MII PR Patho Diagnostic Conclusion Grouper](StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.md)
 
Sie werden in Form von `DiagnosticReport.result:[grouper-name]` mit Grouper-Funktion im [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.md) organisiert und sind damit den "Sections" in CDA äquivalent. Sie zeichnen sich dadurch aus, dass sie nur einen `Observation.code`, aber keinen `Observation.value` haben. Sie gruppieren die “Panel”-Beobachtungen mithilfe der `hasMember`- und/oder `derivedFrom`-Referenzen oder als `Observation.component`. 
Der Text (Narrative) dieser "Sections" wird im `Observation.text`-Element dargestellt. Ein vollständiges Beispiel für die Nutzung von Narrativen in Grouper-Observations findet sich im [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html). 
Diese Grouper haben die Observation.codes 
* [83321-0](https://loinc.org/83321-0/) (Pathology report intraoperative observation in Specimen Document)
* [22634-0](https://loinc.org/22634-0/) (Pathology report gross observation)
* [22635-7](https://loinc.org/22635-7/) (Pathology report microscopic observation)
* [100969-5](https://loinc.org/100969-5/) (Pathology report additional specified observation)
* [22637-3](https://loinc.org/22637-3/) (Pathology report diagnosis)
 
Falls ein Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, erfolgt die Zuordnung der MII PR Patho Befunde zu diesen verschiedenen Proben über die Probenreferenzen dieser MII PR Patho Befunde, und zwar hinsichtlich der Referenzen die „Parts“ betreffend. 
Ein Grouper für "Clinical Information", [22636-5](https://loinc.org/22636-5/) (Pathology report relevant history), ist nicht notwendig, da die hierzu gehörenden Informationen im [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.md) unter `.supportingInfo` vorhanden sind. 
**Sonderfall:** 
* Ein [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.md) als `hasMember`-Konstrukt innerhalb eines der o.g. Grouper zur Gruppierung von medizinischen inhaltlichen Problemen (entspricht CDA-Problem Organizer), z.B. beim Vorhandensein von zwei unterschiedlichen Tumorentitäten in einer Probe, sollte mit dem LOINC-Code [75326-9, Problem](https://loinc.org/75326-9/) gebildet werden, ein `Observation.value` wird nicht benötigt, als `Observation.component` wird im Code das Gruppierungsproblem dargestellt (z.B. ein ICD-Code ([76540-4, Pathology diagnosis ICD code](https://loinc.org/76540-4/)) für eine spezifische Entität, ein Specimen-Code für eine spezifische Probe ([85298-8, Body structure included in specimen](https://loinc.org/85298-8/)), etc.), im Value der konkrete Wert. Die eigentlichen Untersuchungsergebnisse zu diesem inhaltlichen Problem werden dann mittels des `hasMember`-Konstrukts als **MII PR Patho Findings** dargestellt.
 

**Usages:**

* Derived from this Profile: [MII PR Patho Additional Specified Grouper](StructureDefinition-mii-pr-patho-additional-specified-grouper.md), [MII PR Patho Diagnostic Conclusion Grouper](StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.md), [MII PR Patho Intraoperative Grouper](StructureDefinition-mii-pr-patho-intraoperative-grouper.md), [MII PR Patho Macroscopic Grouper](StructureDefinition-mii-pr-patho-macroscopic-grouper.md) and [MII PR Patho Microscopic Grouper](StructureDefinition-mii-pr-patho-microscopic-grouper.md)
* Refer to this Profile: [MII PR Patho Diagnostic Conclusion Grouper](StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.patho|current/StructureDefinition/StructureDefinition-mii-pr-patho-section-grouper.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Patho_Base_Observation](StructureDefinition-mii-pr-patho-base-observation.md) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Patho_Base_Observation](StructureDefinition-mii-pr-patho-base-observation.md) 

** Summary **

Must-Support: 2 elements

**Structures**

This structure refers to these other structures:

* [MII PR Patho Finding (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)](StructureDefinition-mii-pr-patho-finding.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.hasMember

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Patho_Base_Observation](StructureDefinition-mii-pr-patho-base-observation.md) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Patho_Base_Observation](StructureDefinition-mii-pr-patho-base-observation.md) 

** Summary **

Must-Support: 2 elements

**Structures**

This structure refers to these other structures:

* [MII PR Patho Finding (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding)](StructureDefinition-mii-pr-patho-finding.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.hasMember

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-patho-section-grouper.csv), [Excel](../StructureDefinition-mii-pr-patho-section-grouper.xlsx), [Schematron](../StructureDefinition-mii-pr-patho-section-grouper.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-patho-section-grouper",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-section-grouper",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Patho_Section_Grouper",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Patho_Section_Grouper"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Patho Section Grouper",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Patho Section Grouper"
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
  "description" : "Beim Profil **MII PR Patho Section Grouper** handelt es sich um ein abstraktes Profil, welches die Basis für die pathologischen Grouper Profile festlegt, jedoch nicht instanziiert werden soll. Die Grouper-Profile stellen als `DiagnosticReport.result:[grouper-name]` für einen [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html) den jeweiligen Beobachtungsberichtsabschnitt (entspr. einer CDA-Section) dar und fungieren als Organizer für diese Gruppierungen von [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).\n\nHierbei handelt es sich um Untersuchungsergebnisse, die nach inhaltlichen und/oder formalen Erfordernissen zu logischen Gruppen (\"Panels\") zusammengefast werden müssen, z.B. die jeweiligen Beobachtungen an jeweils definierten Proben, z.B. den verschiedenen eingesandten Präparaten. Dieses spezielle Grouper-Observation-Element ist allen anderen Observation-Elementen voranzustellen, welche dann als `hasMember`-Referenzen zu [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) eingebunden werden. [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) Observations wiederum referenzieren ihre \"Eltern-Beobachtungen\" via `derivedFrom`-Referenzen zu SDC QuestionnaireResponses und/oder zu den jeweiligen Grouper Observations.\n\nAls “Panels” von Einzeluntersuchungen sind die folgenden Beobachtungsberichtabschnitte definiert:\n\n- [MII PR Patho Intraoperative Grouper](StructureDefinition-mii-pr-patho-intraoperative-grouper.html)\n- [MII PR Patho Macroscopic Grouper](StructureDefinition-mii-pr-patho-macroscopic-grouper.html)\n- [MII PR Patho Microscopic Grouper](StructureDefinition-mii-pr-patho-microscopic-grouper.html)\n- [MII PR Patho Additional Specified Grouper](StructureDefinition-mii-pr-patho-additional-specified-grouper.html)\n- [MII PR Patho Diagnostic Conclusion Grouper](StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.html)\n\nSie werden in Form von `DiagnosticReport.result:[grouper-name]` mit Grouper-Funktion im [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html) organisiert und sind damit den \"Sections\" in CDA äquivalent. Sie zeichnen sich dadurch aus, dass sie nur einen `Observation.code`, aber keinen `Observation.value` haben. Sie gruppieren die “Panel”-Beobachtungen mithilfe der `hasMember`- und/oder `derivedFrom`-Referenzen oder als `Observation.component`.\n\nDer Text (Narrative) dieser \"Sections\" wird im `Observation.text`-Element dargestellt. Ein vollständiges Beispiel für die Nutzung von Narrativen in Grouper-Observations findet sich im [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html).\n\nDiese Grouper haben die Observation.codes\n- [83321-0](https://loinc.org/83321-0/) (Pathology report intraoperative observation in Specimen Document)\n- [22634-0](https://loinc.org/22634-0/) (Pathology report gross observation)\n- [22635-7](https://loinc.org/22635-7/) (Pathology report microscopic observation)\n- [100969-5](https://loinc.org/100969-5/) (Pathology report additional specified observation)\n- [22637-3](https://loinc.org/22637-3/) (Pathology report diagnosis)\n\nFalls ein Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, erfolgt die Zuordnung der MII PR Patho Befunde zu diesen verschiedenen Proben über die Probenreferenzen dieser MII PR Patho Befunde, und zwar hinsichtlich der Referenzen die „Parts“ betreffend.\n\nEin Grouper für \"Clinical Information\", [22636-5](https://loinc.org/22636-5/) (Pathology report relevant history), ist nicht notwendig, da die hierzu gehörenden Informationen im [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.html) unter `.supportingInfo` vorhanden sind.\n\n**Sonderfall:**\n- Ein [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) als `hasMember`-Konstrukt innerhalb eines der o.g. Grouper zur Gruppierung von medizinischen inhaltlichen Problemen (entspricht CDA-Problem Organizer), z.B. beim Vorhandensein von zwei unterschiedlichen Tumorentitäten in einer Probe, sollte mit dem LOINC-Code [75326-9, Problem](https://loinc.org/75326-9/) gebildet werden, ein `Observation.value` wird nicht benötigt, als `Observation.component` wird im Code das Gruppierungsproblem dargestellt (z.B. ein ICD-Code ([76540-4, Pathology diagnosis ICD code](https://loinc.org/76540-4/)) für eine spezifische Entität, ein Specimen-Code für eine spezifische Probe ([85298-8, Body structure included in specimen](https://loinc.org/85298-8/)), etc.), im Value der konkrete Wert. Die eigentlichen Untersuchungsergebnisse zu diesem inhaltlichen Problem werden dann mittels des `hasMember`-Konstrukts als **MII PR Patho Findings** dargestellt.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The **MII PR Patho Section Grouper** profile is an abstract profile that defines the basis for the pathological grouper profiles but is not intended to be instantiated. As `DiagnosticReport.result:[grouper-name]` for a [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html), the grouper profiles represent the respective observation report section (corresponding to a CDA section) and act as an organizer for these groupings of [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).\n\nThese are examination results that, according to content-related and/or formal requirements, must be combined into logical groups (\"panels\"), e.g. the respective observations on specifically defined specimens, e.g. the various submitted preparations. This special grouper observation element is to be placed before all other observation elements, which are then included as `hasMember` references to [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html). [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) observations in turn reference their \"parent observations\" via `derivedFrom` references to SDC QuestionnaireResponses and/or to the respective grouper observations.\n\nThe following observation report sections are defined as “panels” of individual examinations:\n\n- [MII PR Patho Intraoperative Grouper](StructureDefinition-mii-pr-patho-intraoperative-grouper.html)\n- [MII PR Patho Macroscopic Grouper](StructureDefinition-mii-pr-patho-macroscopic-grouper.html)\n- [MII PR Patho Microscopic Grouper](StructureDefinition-mii-pr-patho-microscopic-grouper.html)\n- [MII PR Patho Additional Specified Grouper](StructureDefinition-mii-pr-patho-additional-specified-grouper.html)\n- [MII PR Patho Diagnostic Conclusion Grouper](StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.html)\n\nThey are organized in the form of `DiagnosticReport.result:[grouper-name]` with grouper function in the [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html) and are thus equivalent to the \"sections\" in CDA. They are characterized by the fact that they only have an `Observation.code`, but no `Observation.value`. They group the “panel” observations using the `hasMember` and/or `derivedFrom` references or as `Observation.component`.\n\nThe text (narrative) of these \"sections\" is represented in the `Observation.text` element. A complete example of the use of narratives in grouper observations can be found in the [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html).\n\nThese groupers have the Observation.codes\n- [83321-0](https://loinc.org/83321-0/) (Pathology report intraoperative observation in Specimen Document)\n- [22634-0](https://loinc.org/22634-0/) (Pathology report gross observation)\n- [22635-7](https://loinc.org/22635-7/) (Pathology report microscopic observation)\n- [100969-5](https://loinc.org/100969-5/) (Pathology report additional specified observation)\n- [22637-3](https://loinc.org/22637-3/) (Pathology report diagnosis)\n\nIf an observation report section contains several submitted preparations (specimens), the MII PR Patho findings are assigned to these various specimens via the specimen references of these MII PR Patho findings, specifically with regard to the references concerning the “parts”.\n\nA grouper for \"Clinical Information\", [22636-5](https://loinc.org/22636-5/) (Pathology report relevant history), is not necessary, since the information belonging to it is available in the [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.html) under `.supportingInfo`.\n\n**Special case:**\n- A [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) as a `hasMember` construct within one of the above-mentioned groupers for grouping medical content-related problems (corresponding to a CDA problem organizer), e.g. when two different tumor entities are present in one specimen, should be formed with the LOINC code [75326-9, Problem](https://loinc.org/75326-9/); an `Observation.value` is not required, the grouping problem is represented in the code as `Observation.component` (e.g. an ICD code ([76540-4, Pathology diagnosis ICD code](https://loinc.org/76540-4/)) for a specific entity, a specimen code for a specific specimen ([85298-8, Body structure included in specimen](https://loinc.org/85298-8/)), etc.), and the concrete value in the value. The actual examination results for this content-related problem are then represented by means of the `hasMember` construct as **MII PR Patho Findings**."
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
  "abstract" : true,
  "type" : "Observation",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-base-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.text",
      "path" : "Observation.text",
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this.resolve()"
        }],
        "description" : "Reference to pathology findings",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.hasMember:pathology-finding",
      "path" : "Observation.hasMember",
      "sliceName" : "pathology-finding",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"]
      }],
      "mustSupport" : true
    }]
  }
}

```
