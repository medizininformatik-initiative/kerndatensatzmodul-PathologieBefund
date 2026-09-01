# MII PR Patho History Of Present Illness - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Patho History Of Present Illness**

## Resource Profile: MII PR Patho History Of Present Illness 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness | *Version*:2027.0.0-ballot.rc |
| Active as of 2026-09-01 | *Computable Name*:MII_PR_Patho_History_Of_Present_Illness |

 
The **MII PR Patho History of Present Illness** profile of the [List](http://hl7.org/fhir/R4/list.html) resource represents the description of the anamnesis by the submitter and is part of the "supportingInfo" in the [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.md) profile. 
The individual diseases/problems can be represented using the [MII PR Patho Problem List Item](StructureDefinition-mii-pr-patho-problem-list-item.md) profile. 

**Usages:**

* Refer to this Profile: [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.md)
* Examples for this Profile: [List/mii-exa-patho-history-of-present-illness](List-mii-exa-patho-history-of-present-illness.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.patho|current/StructureDefinition/StructureDefinition-mii-pr-patho-history-of-present-illness.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-patho-history-of-present-illness.csv), [Excel](../StructureDefinition-mii-pr-patho-history-of-present-illness.xlsx), [Schematron](../StructureDefinition-mii-pr-patho-history-of-present-illness.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-patho-history-of-present-illness",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-history-of-present-illness",
  "version" : "2027.0.0-ballot.rc",
  "name" : "MII_PR_Patho_History_Of_Present_Illness",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Patho_History_Of_Present_Illness"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Patho History Of Present Illness",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Patho History Of Present Illness"
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
  "description" : "Das Profil **MII PR Patho History of Present Illness** der Resource [List](http://hl7.org/fhir/R4/list.html) bildet die Beschreibung der Anamnese durch den Einsender ab und ist Teil der \"supportingInfo\" im Profil [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.html) ab.\n\nDie einzelnen Erkrankungen/Probleme können mithilfe des Profils [MII PR Patho Problem List Item](StructureDefinition-mii-pr-patho-problem-list-item.html) dargestellt werden.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The **MII PR Patho History of Present Illness** profile of the [List](http://hl7.org/fhir/R4/list.html) resource represents the description of the anamnesis by the submitter and is part of the \"supportingInfo\" in the [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.html) profile.\n\nThe individual diseases/problems can be represented using the [MII PR Patho Problem List Item](StructureDefinition-mii-pr-patho-problem-list-item.html) profile."
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/List",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "List",
      "path" : "List"
    },
    {
      "id" : "List.meta.profile",
      "path" : "List.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "List.status",
      "path" : "List.status",
      "mustSupport" : true
    },
    {
      "id" : "List.mode",
      "path" : "List.mode",
      "fixedCode" : "snapshot",
      "mustSupport" : true
    },
    {
      "id" : "List.code",
      "path" : "List.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.code.coding",
      "path" : "List.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "8684-3"
      },
      "mustSupport" : true
    },
    {
      "id" : "List.code.coding.system",
      "path" : "List.code.coding.system",
      "min" : 1
    },
    {
      "id" : "List.code.coding.code",
      "path" : "List.code.coding.code",
      "min" : 1
    },
    {
      "id" : "List.subject",
      "path" : "List.subject",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.entry",
      "path" : "List.entry",
      "mustSupport" : true
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item"]
      }]
    }]
  }
}

```
