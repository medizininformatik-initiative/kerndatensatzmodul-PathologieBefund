# MII PR Patho Problem List Item - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Patho Problem List Item**

## Resource Profile: MII PR Patho Problem List Item 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item | *Version*:2027.0.0-ballot.rc |
| Active as of 2026-09-01 | *Computable Name*:MII_PR_Patho_Problem_List_Item |

 
The **MII PR Patho Problem List Item** profile of the Condition resource represents the individual list entries of the **MII PR Patho Active Problems** and **MII PR Patho History of Present Illness** profiles. 

**Usages:**

* Refer to this Profile: [MII PR Patho Active Problems List](StructureDefinition-mii-pr-patho-active-problems-list.md) and [MII PR Patho History Of Present Illness](StructureDefinition-mii-pr-patho-history-of-present-illness.md)
* Examples for this Profile: [Condition/mii-exa-patho-problem-list-item-1](Condition-mii-exa-patho-problem-list-item-1.md) and [Condition/mii-exa-patho-problem-list-item-2](Condition-mii-exa-patho-problem-list-item-2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.patho|current/StructureDefinition/StructureDefinition-mii-pr-patho-problem-list-item.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-patho-problem-list-item.csv), [Excel](../StructureDefinition-mii-pr-patho-problem-list-item.xlsx), [Schematron](../StructureDefinition-mii-pr-patho-problem-list-item.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-patho-problem-list-item",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item",
  "version" : "2027.0.0-ballot.rc",
  "name" : "MII_PR_Patho_Problem_List_Item",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Patho_Problem_List_Item"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Patho Problem List Item",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Patho Problem List Item"
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
  "description" : "Das Profil **MII PR Patho Problem List Item** der Resource Condition stellt die einzelnen Listeneinträge der Profile **MII PR Patho Active Problems** und **MII PR Patho History of Present Illness** dar.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The **MII PR Patho Problem List Item** profile of the Condition resource represents the individual list entries of the **MII PR Patho Active Problems** and **MII PR Patho History of Present Illness** profiles."
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.meta.profile",
      "path" : "Condition.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.category.coding",
      "path" : "Condition.category.coding",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.category.coding.system",
      "path" : "Condition.category.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.category.coding.code",
      "path" : "Condition.category.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.category:problem-list-item",
      "path" : "Condition.category",
      "sliceName" : "problem-list-item",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-problem-list-snomed-ct"
      }
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding.code",
      "path" : "Condition.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    }]
  }
}

```
