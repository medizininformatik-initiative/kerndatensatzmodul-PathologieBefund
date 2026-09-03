# MII VS Patho Container Type [SNOMED CT] - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Patho Container Type [SNOMED CT]**

## ValueSet: MII VS Patho Container Type [SNOMED CT] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-container-type-snomed-ct | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_VS_Patho_Container_Type_SNOMED_CT |

 
ValueSet for container type based on IHE PaLM's ContainerEntityClassType ValueSet 

 **References** 

* [MII PR Patho Specimen](StructureDefinition-mii-pr-patho-specimen.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-patho-container-type-snomed-ct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-container-type-snomed-ct",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Patho_Container_Type_SNOMED_CT",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_VS_Patho_Container_Type_SNOMED_CT"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII VS Patho Container Type [SNOMED CT]",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII VS Patho Container Type [SNOMED CT]"
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
  "description" : "ValueSet for container type based on IHE PaLM's ContainerEntityClassType ValueSet",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "ValueSet for container type based on IHE PaLM's ContainerEntityClassType ValueSet"
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
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "434746001",
        "display" : "Specimen vial (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "Specimen vial (physical object)"
        }]
      },
      {
        "code" : "434464009",
        "display" : "Tissue cassette (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "Tissue cassette (physical object)"
        }]
      },
      {
        "code" : "434708008",
        "display" : "Tissue cassette for microarray (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "Tissue cassette for microarray (physical object)"
        }]
      },
      {
        "code" : "433466003",
        "display" : "Microscope slide (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "Microscope slide (physical object)"
        }]
      },
      {
        "code" : "433453003",
        "display" : "Specimen container component (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "Specimen container component (physical object)"
        }]
      },
      {
        "code" : "434533009",
        "display" : "Electron microscopy grid (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "Electron microscopy grid (physical object)"
        }]
      },
      {
        "code" : "434822004",
        "display" : "Specimen well (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "Specimen well (physical object)"
        }]
      },
      {
        "code" : "433472003",
        "display" : "Microscope slide coverslip (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "Microscope slide coverslip (physical object)"
        }]
      },
      {
        "code" : "434473001",
        "display" : "Specimen container lid (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "Specimen container lid (physical object)"
        }]
      },
      {
        "code" : "706053007",
        "display" : "General specimen container (physical object)",
        "designation" : [{
          "language" : "en",
          "value" : "General specimen container (physical object)"
        }]
      }]
    }]
  }
}

```
