# MII PR Patho Active Problems List - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Patho Active Problems List**

## Ressourcenprofil: MII PR Patho Active Problems List 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list | *Version*:2027.0.0-ballot.rc |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_PR_Patho_Active_Problems_List |

 
Das Profil **MII PR Patho Active Problems** der Ressource [List](http://hl7.org/fhir/R4/list.html) stellt eine Liste der zu dem Untersuchungszeitpunkt vorhandenen Erkrankungen u/o Probleme des/der Patient:in dar, welche die Klinische Fragestellung des Einsenders innerhalb der Supporting Information des Profils [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.md) abbilden. 
Die einzelnen Erkrankungen/Fragestellungen können mithilfe des Profils [MII PR Patho Problem List Item](StructureDefinition-mii-pr-patho-problem-list-item.md) dargestellt werden. 

**Usages:**

* Refer to this Profile: [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.md)
* Examples for this Profile: [List/mii-exa-patho-active-problems-list](List-mii-exa-patho-active-problems-list.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.patho|current/StructureDefinition/StructureDefinition-mii-pr-patho-active-problems-list.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [List](http://hl7.org/fhir/R4/list.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [List](http://hl7.org/fhir/R4/list.html) 

** Summary **

Mandatory: 5 elements
 Must-Support: 7 elements
 Fixed: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR Patho Problem List Item (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item)](StructureDefinition-mii-pr-patho-problem-list-item.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [List](http://hl7.org/fhir/R4/list.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [List](http://hl7.org/fhir/R4/list.html) 

** Summary **

Mandatory: 5 elements
 Must-Support: 7 elements
 Fixed: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR Patho Problem List Item (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-problem-list-item)](StructureDefinition-mii-pr-patho-problem-list-item.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-patho-active-problems-list.csv), [Excel](../StructureDefinition-mii-pr-patho-active-problems-list.xlsx), [Schematron](../StructureDefinition-mii-pr-patho-active-problems-list.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-patho-active-problems-list",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-active-problems-list",
  "version" : "2027.0.0-ballot.rc",
  "name" : "MII_PR_Patho_Active_Problems_List",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Patho_Active_Problems_List"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Patho Active Problems List",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Patho Active Problems List"
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
  "description" : "Das Profil **MII PR Patho Active Problems** der Ressource [List](http://hl7.org/fhir/R4/list.html) stellt eine Liste der zu dem Untersuchungszeitpunkt vorhandenen Erkrankungen u/o Probleme des/der Patient:in dar, welche die Klinische Fragestellung des Einsenders innerhalb der Supporting Information des Profils [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.html) abbilden.\n\nDie einzelnen Erkrankungen/Fragestellungen können mithilfe des Profils [MII PR Patho Problem List Item](StructureDefinition-mii-pr-patho-problem-list-item.html) dargestellt werden.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The **MII PR Patho Active Problems** profile of the [List](http://hl7.org/fhir/R4/list.html) resource represents a list of the diseases and/or problems of the patient present at the time of examination, which represent the submitter's clinical question within the Supporting Information of the [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.html) profile.\n\nThe individual diseases/questions can be represented using the [MII PR Patho Problem List Item](StructureDefinition-mii-pr-patho-problem-list-item.html) profile."
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
        "code" : "11450-4"
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
