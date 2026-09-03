# MII CPS Patho Capability Statement - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CPS Patho Capability Statement**

## CapabilityStatement: MII CPS Patho Capability Statement 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/CapabilityStatement/mii-cps-patho-capability-statement | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2024-11-08 | *Computable Name*:MII_CPS_Patho_Capability_Statement |

 
The CapabilityStatement describes all mandatory interactions for a system to be conformant to the Pathology Module of the Medical Informatics Initiative 

In order to enable decentralized data analysis by means of the German Research Data Portal for Health of the Medical Informatics Initiative, the [capabilities interaction](https://www.hl7.org/fhir/http.html#capabilities) MUST be supported, so that the FHIR server exposes a CapabilityStatement at `[BASE_URL]/metadata`. Within this CapabilityStatement it MUST be stated which profiles including version, and which search parameters, are supported.

The following lists the content that MUST be stated in the CapabilityStatement. In addition, conformance with the CapabilityStatement below MUST be declared in the respective CapabilityStatement instance under [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: `https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/CapabilityStatement/metadata`

 [Raw OpenAPI-Swagger Definition file](../mii-cps-patho-capability-statement.openapi.json) | [Download](../mii-cps-patho-capability-statement.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "mii-cps-patho-capability-statement",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/CapabilityStatement/mii-cps-patho-capability-statement",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CPS_Patho_Capability_Statement",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_CPS_Patho_Capability_Statement"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII CPS Patho Capability Statement",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII CPS Patho Capability Statement"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
  "date" : "2024-11-08",
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
  "description" : "The CapabilityStatement describes all mandatory interactions for a system to be conformant to the Pathology Module of the Medical Informatics Initiative",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "The CapabilityStatement describes all mandatory interactions for a system to be conformant to the Pathology Module of the Medical Informatics Initiative"
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
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["xml", "json"],
  "rest" : [{
    "mode" : "server",
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Specimen",
      "supportedProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2027.0.0-ballot.rc1"],
      "_supportedProfile" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      }],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      }],
      "searchParam" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
        "type" : "token",
        "documentation" : "Logical id of this artifact",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Logical id of this artifact"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
        "type" : "date",
        "documentation" : "When the resource version last changed",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "When the resource version last changed"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_profile",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-profile",
        "type" : "uri",
        "documentation" : "Profiles this resource claims to conform to",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Profiles this resource claims to conform to"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-identifier",
        "type" : "token",
        "documentation" : "The unique identifier associated with the specimen",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The unique identifier associated with the specimen"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "accession",
        "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-accession",
        "type" : "token",
        "documentation" : "The accession number associated with the specimen",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The accession number associated with the specimen"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-status",
        "type" : "token",
        "documentation" : "available | unavailable | unsatisfactory | entered-in-error",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "available | unavailable | unsatisfactory | entered-in-error"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "type",
        "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-type",
        "type" : "token",
        "documentation" : "The specimen type",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The specimen type"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "subject",
        "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-subject",
        "type" : "reference",
        "documentation" : "The subject of the specimen",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The subject of the specimen"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "parent",
        "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-parent",
        "type" : "reference",
        "documentation" : "The parent of the specimen",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The parent of the specimen"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "collected",
        "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-collected",
        "type" : "date",
        "documentation" : "The date the specimen was collected",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The date the specimen was collected"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "collector",
        "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-collector",
        "type" : "reference",
        "documentation" : "Who collected the specimen",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Who collected the specimen"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "bodysite",
        "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-bodysite",
        "type" : "token",
        "documentation" : "The code for the body site from where the specimen originated",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The code for the body site from where the specimen originated"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "container",
        "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-container",
        "type" : "token",
        "documentation" : "The kind of specimen container",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The kind of specimen container"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-patient",
        "type" : "reference",
        "documentation" : "The patient the specimen comes from",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The patient the specimen comes from"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "request",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-specimen-request",
        "type" : "reference",
        "documentation" : "SearchParameter for Specimen.request",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Specimen.request"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "collection-method",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-specimen-collection-method",
        "type" : "token",
        "documentation" : "SearchParameter for Specimen.collection.method",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Specimen.collection.method"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "collection-body-site",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-specimen-collection-body-site",
        "type" : "token",
        "documentation" : "SearchParameter for Specimen.collection.bodySite",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Specimen.collection.bodySite"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "processing-procedure",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-specimen-processing-procedure",
        "type" : "token",
        "documentation" : "SearchParameter for Specimen.processing.procedure",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Specimen.processing.procedure"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "processing-additive",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-specimen-processing-additive",
        "type" : "reference",
        "documentation" : "SearchParameter for Specimen.processing.additive",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Specimen.processing.additive"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "processing-date",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-specimen-processing-date",
        "type" : "date",
        "documentation" : "SearchParameter for Specimen.processing.time",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Specimen.processing.time"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "container-additive",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-specimen-container-additive",
        "type" : "reference",
        "documentation" : "SearchParameter for Specimen.container.additive",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Specimen.container.additive"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Observation",
      "supportedProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-intraoperative-grouper|2027.0.0-ballot.rc1",
      "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2027.0.0-ballot.rc1",
      "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper|2027.0.0-ballot.rc1",
      "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding|2027.0.0-ballot.rc1",
      "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2027.0.0-ballot.rc1",
      "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-additional-specified-grouper|2027.0.0-ballot.rc1"],
      "_supportedProfile" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      }],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      }],
      "searchParam" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
        "type" : "token",
        "documentation" : "Logical id of this artifact",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Logical id of this artifact"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
        "type" : "date",
        "documentation" : "When the resource version last changed",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "When the resource version last changed"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_profile",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-profile",
        "type" : "uri",
        "documentation" : "Profiles this resource claims to conform to",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Profiles this resource claims to conform to"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "based-on",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-based-on",
        "type" : "reference",
        "documentation" : "Reference to the service request",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Reference to the service request"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "category",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-category",
        "type" : "token",
        "documentation" : "The classification of the type of observation",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The classification of the type of observation"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "code",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
        "type" : "token",
        "documentation" : "The code of the observation type",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The code of the observation type"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "code-value-concept",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-code-value-concept",
        "type" : "composite",
        "documentation" : "Code and coded value parameter pair",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Code and coded value parameter pair"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "code-value-date",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-code-value-date",
        "type" : "composite",
        "documentation" : "Code and date/time value parameter pair",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Code and date/time value parameter pair"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "code-value-quantity",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-code-value-quantity",
        "type" : "composite",
        "documentation" : "Code and quantity value parameter pair",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Code and quantity value parameter pair"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "code-value-string",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-code-value-string",
        "type" : "composite",
        "documentation" : "Code and string value parameter pair",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Code and string value parameter pair"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "combo-code",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-combo-code",
        "type" : "token",
        "documentation" : "The code of the observation type or component type",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The code of the observation type or component type"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "combo-code-value-concept",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-combo-code-value-concept",
        "type" : "composite",
        "documentation" : "Code and coded value parameter pair, including in components",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Code and coded value parameter pair, including in components"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "combo-code-value-quantity",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-combo-code-value-quantity",
        "type" : "composite",
        "documentation" : "Code and quantity value parameter pair, including in components",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Code and quantity value parameter pair, including in components"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "combo-data-absent-reason",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-combo-data-absent-reason",
        "type" : "token",
        "documentation" : "The reason why the expected value in the element Observation.value[x] or Observation.component.value[x] is missing",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The reason why the expected value in the element Observation.value[x] or Observation.component.value[x] is missing"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "combo-value-concept",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-combo-value-concept",
        "type" : "token",
        "documentation" : "The value or component value of the observation, if the value is a CodeableConcept",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The value or component value of the observation, if the value is a CodeableConcept"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "combo-value-quantity",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-combo-value-quantity",
        "type" : "quantity",
        "documentation" : "The value or component value of the observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The value or component value of the observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "component-code",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-component-code",
        "type" : "token",
        "documentation" : "The component code of the observation type",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The component code of the observation type"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "component-code-value-concept",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-component-code-value-concept",
        "type" : "composite",
        "documentation" : "Component code and component coded value parameter pair",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Component code and component coded value parameter pair"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "component-code-value-quantity",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-component-code-value-quantity",
        "type" : "composite",
        "documentation" : "Component code and component quantity value parameter pair",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Component code and component quantity value parameter pair"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "component-data-absent-reason",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-data-absent-reason",
        "type" : "token",
        "documentation" : "The reason why the expected value in the element Observation.component.value[x] is missing",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The reason why the expected value in the element Observation.component.value[x] is missing"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "component-value-concept",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-component-value-concept",
        "type" : "token",
        "documentation" : "The value of the component observation, if the value is a CodeableConcept",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The value of the component observation, if the value is a CodeableConcept"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "component-value-quantity",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-component-value-quantity",
        "type" : "quantity",
        "documentation" : "The value of the component observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The value of the component observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "data-absent-reason",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-data-absent-reason",
        "type" : "token",
        "documentation" : "The reason why the expected value in the element Observation.value[x] is missing",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The reason why the expected value in the element Observation.value[x] is missing"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "date",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
        "type" : "date",
        "documentation" : "Obtained datetime. If the obtained element is a period, a date that falls in the period",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Obtained datetime. If the obtained element is a period, a date that falls in the period"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "derived-from",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-derived-from",
        "type" : "reference",
        "documentation" : "Related measurements the observation is made from",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Related measurements the observation is made from"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "encounter",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-encounter",
        "type" : "reference",
        "documentation" : "Encounter related to the observation",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Encounter related to the observation"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "has-member",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-has-member",
        "type" : "reference",
        "documentation" : "Related resource that belongs to the Observation group",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Related resource that belongs to the Observation group"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
        "type" : "token",
        "documentation" : "The unique id for a particular observation",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The unique id for a particular observation"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "method",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-method",
        "type" : "token",
        "documentation" : "The method used for the observation",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The method used for the observation"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-subject",
        "type" : "reference",
        "documentation" : "The subject that the observation is about (if patient)",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The subject that the observation is about (if patient)"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "performer",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-performer",
        "type" : "reference",
        "documentation" : "Who performed the observation",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Who performed the observation"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "specimen",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-specimen",
        "type" : "reference",
        "documentation" : "Specimen used for this observation",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Specimen used for this observation"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-status",
        "type" : "token",
        "documentation" : "The status of the observation",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The status of the observation"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "subject",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-subject",
        "type" : "reference",
        "documentation" : "The subject that the observation is about",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The subject that the observation is about"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "value-concept",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-value-concept",
        "type" : "token",
        "documentation" : "The value of the observation, if the value is a CodeableConcept",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The value of the observation, if the value is a CodeableConcept"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "value-date",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-value-date",
        "type" : "date",
        "documentation" : "The value of the observation, if the value is a date or period of time",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The value of the observation, if the value is a date or period of time"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "value-quantity",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-value-quantity",
        "type" : "quantity",
        "documentation" : "The value of the observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The value of the observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "value-string",
        "definition" : "http://hl7.org/fhir/SearchParameter/Observation-value-string",
        "type" : "string",
        "documentation" : "The value of the observation, if the value is a string, and also searches in CodeableConcept.text",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The value of the observation, if the value is a string, and also searches in CodeableConcept.text"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "body-site",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-observation-body-site",
        "type" : "token",
        "documentation" : "SearchParameter for Observation.bodySite",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Observation.bodySite"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "value-ratio",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-observation-value-ratio",
        "type" : "composite",
        "documentation" : "SearchParameter for Observation.valueRatio",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Observation.valueRatio"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "value-ratio-numerator",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-observation-value-ratio-numerator",
        "type" : "quantity",
        "documentation" : "SearchParameter for Observation.valueRatio.numerator",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Observation.valueRatio.numerator"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "value-ratio-denominator",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-observation-value-ratio-denominator",
        "type" : "quantity",
        "documentation" : "SearchParameter for Observation.valueRatio.denominator",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Observation.valueRatio.denominator"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "ServiceRequest",
      "supportedProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request|2027.0.0-ballot.rc1"],
      "_supportedProfile" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      }],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      }],
      "searchParam" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
        "type" : "token",
        "documentation" : "Logical id of this artifact",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Logical id of this artifact"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
        "type" : "date",
        "documentation" : "When the resource version last changed",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "When the resource version last changed"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_profile",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-profile",
        "type" : "uri",
        "documentation" : "Profiles this resource claims to conform to",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Profiles this resource claims to conform to"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "authored",
        "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-authored",
        "type" : "date",
        "documentation" : "Date request signed",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Date request signed"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "category",
        "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-category",
        "type" : "token",
        "documentation" : "Classification of service",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Classification of service"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "code",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
        "type" : "token",
        "documentation" : "What is being requested/ordered",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "What is being requested/ordered"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "encounter",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-encounter",
        "type" : "reference",
        "documentation" : "An encounter in which this request is made",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "An encounter in which this request is made"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
        "type" : "token",
        "documentation" : "Identifiers assigned to this order",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Identifiers assigned to this order"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "intent",
        "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-intent",
        "type" : "token",
        "documentation" : "proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
        "type" : "reference",
        "documentation" : "Search by subject - a patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by subject - a patient"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "performer",
        "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-performer",
        "type" : "reference",
        "documentation" : "Requested performer",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Requested performer"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "requester",
        "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-requester",
        "type" : "reference",
        "documentation" : "Who/what is requesting service",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Who/what is requesting service"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "requisition",
        "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-requisition",
        "type" : "token",
        "documentation" : "Composite Request ID",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Composite Request ID"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "specimen",
        "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-specimen",
        "type" : "reference",
        "documentation" : "Specimen to be tested",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Specimen to be tested"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-status",
        "type" : "token",
        "documentation" : "draft | active | on-hold | revoked | completed | entered-in-error | unknown",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "subject",
        "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-subject",
        "type" : "reference",
        "documentation" : "Search by subject",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Search by subject"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "reason-code",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-servicerequest-reason-code",
        "type" : "token",
        "documentation" : "SearchParameter for ServiceRequest.reasonCode",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for ServiceRequest.reasonCode"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "supporting-info",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-servicerequest-supporting-info",
        "type" : "reference",
        "documentation" : "SearchParameter for ServiceRequest.supportingInfo",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for ServiceRequest.supportingInfo"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "DiagnosticReport",
      "supportedProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report|2027.0.0-ballot.rc1"],
      "_supportedProfile" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      }],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      }],
      "searchParam" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
        "type" : "token",
        "documentation" : "Logical id of this artifact",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Logical id of this artifact"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
        "type" : "date",
        "documentation" : "When the resource version last changed",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "When the resource version last changed"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_profile",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-profile",
        "type" : "uri",
        "documentation" : "Profiles this resource claims to conform to",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Profiles this resource claims to conform to"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "based-on",
        "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-based-on",
        "type" : "reference",
        "documentation" : "Reference to the service request",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Reference to the service request"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "category",
        "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-category",
        "type" : "token",
        "documentation" : "Which diagnostic discipline/department created the report",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Which diagnostic discipline/department created the report"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "code",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
        "type" : "token",
        "documentation" : "The code for the report, as opposed to codes for the atomic results, which are the names on the observation resource referred to from the result",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The code for the report, as opposed to codes for the atomic results, which are the names on the observation resource referred to from the result"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "conclusion",
        "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-conclusion",
        "type" : "token",
        "documentation" : "A coded conclusion (interpretation/impression) on the report",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "A coded conclusion (interpretation/impression) on the report"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "date",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
        "type" : "date",
        "documentation" : "The clinically relevant time of the report",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The clinically relevant time of the report"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "encounter",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-encounter",
        "type" : "reference",
        "documentation" : "The Encounter when the order was made",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The Encounter when the order was made"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
        "type" : "token",
        "documentation" : "An identifier for the report",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "An identifier for the report"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "issued",
        "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-issued",
        "type" : "date",
        "documentation" : "When the report was issued",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "When the report was issued"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "media",
        "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-media",
        "type" : "reference",
        "documentation" : "A reference to the image source",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "A reference to the image source"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
        "type" : "reference",
        "documentation" : "The subject of the report if a patient",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The subject of the report if a patient"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "performer",
        "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-performer",
        "type" : "reference",
        "documentation" : "Who is responsible for the report",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Who is responsible for the report"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "result",
        "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-result",
        "type" : "reference",
        "documentation" : "Link to an atomic result (observation resource)",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Link to an atomic result (observation resource)"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "specimen",
        "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-specimen",
        "type" : "reference",
        "documentation" : "The specimen details",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The specimen details"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-status",
        "type" : "token",
        "documentation" : "The status of the report",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The status of the report"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "subject",
        "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-subject",
        "type" : "reference",
        "documentation" : "The subject of the report",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The subject of the report"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "imaging-study",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-diagnosticreport-imaging-study",
        "type" : "reference",
        "documentation" : "SearchParameter for DiagnosticReport.imagingStudy",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for DiagnosticReport.imagingStudy"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Composition",
      "supportedProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition|2027.0.0-ballot.rc1"],
      "_supportedProfile" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      }],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      }],
      "searchParam" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
        "type" : "token",
        "documentation" : "Logical id of this artifact",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Logical id of this artifact"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
        "type" : "date",
        "documentation" : "When the resource version last changed",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "When the resource version last changed"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_profile",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-profile",
        "type" : "uri",
        "documentation" : "Profiles this resource claims to conform to",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Profiles this resource claims to conform to"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "attester",
        "definition" : "http://hl7.org/fhir/SearchParameter/Composition-attester",
        "type" : "reference",
        "documentation" : "Who attested the composition",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Who attested the composition"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "author",
        "definition" : "http://hl7.org/fhir/SearchParameter/Composition-author",
        "type" : "reference",
        "documentation" : "Who and/or what authored the composition",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Who and/or what authored the composition"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "category",
        "definition" : "http://hl7.org/fhir/SearchParameter/Composition-category",
        "type" : "token",
        "documentation" : "Categorization of Composition",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Categorization of Composition"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "context",
        "definition" : "http://hl7.org/fhir/SearchParameter/Composition-context",
        "type" : "token",
        "documentation" : "Code(s) that apply to the event being documented",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Code(s) that apply to the event being documented"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "date",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
        "type" : "date",
        "documentation" : "Composition editing time",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Composition editing time"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "encounter",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-encounter",
        "type" : "reference",
        "documentation" : "Context of the Composition",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Context of the Composition"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "entry",
        "definition" : "http://hl7.org/fhir/SearchParameter/Composition-entry",
        "type" : "reference",
        "documentation" : "A reference to data that supports this section",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "A reference to data that supports this section"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
        "type" : "token",
        "documentation" : "Version-independent identifier for the Composition",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Version-independent identifier for the Composition"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
        "type" : "reference",
        "documentation" : "Who and/or what the composition is about",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Who and/or what the composition is about"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "period",
        "definition" : "http://hl7.org/fhir/SearchParameter/Composition-period",
        "type" : "date",
        "documentation" : "The period covered by the documentation",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "The period covered by the documentation"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "related-ref",
        "definition" : "http://hl7.org/fhir/SearchParameter/Composition-related-ref",
        "type" : "reference",
        "documentation" : "Target of the relationship",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Target of the relationship"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "section",
        "definition" : "http://hl7.org/fhir/SearchParameter/Composition-section",
        "type" : "token",
        "documentation" : "Classification of section (recommended)",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Classification of section (recommended)"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/Composition-status",
        "type" : "token",
        "documentation" : "preliminary | final | amended | entered-in-error",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "preliminary | final | amended | entered-in-error"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "subject",
        "definition" : "http://hl7.org/fhir/SearchParameter/Composition-subject",
        "type" : "reference",
        "documentation" : "Who and/or what the composition is about",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Who and/or what the composition is about"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "title",
        "definition" : "http://hl7.org/fhir/SearchParameter/Composition-title",
        "type" : "string",
        "documentation" : "Human Readable name/title",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Human Readable name/title"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "type",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-type",
        "type" : "token",
        "documentation" : "Kind of composition (LOINC if possible)",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Kind of composition (LOINC if possible)"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "attester-mode",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-composition-attester-mode",
        "type" : "token",
        "documentation" : "SearchParameter for Composition.attester.mode",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Composition.attester.mode"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "custodian",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-composition-custodian",
        "type" : "reference",
        "documentation" : "SearchParameter for Composition.custodian",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Composition.custodian"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "relates-to-code",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-composition-relates-to-code",
        "type" : "token",
        "documentation" : "SearchParameter for Composition.relatesTo.code",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Composition.relatesTo.code"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Media",
      "supportedProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image|2027.0.0-ballot.rc1"],
      "_supportedProfile" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }]
      }],
      "interaction" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "read"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "code" : "search-type"
      }],
      "searchParam" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
        "type" : "token",
        "documentation" : "Logical id of this artifact",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Logical id of this artifact"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
        "type" : "date",
        "documentation" : "When the resource version last changed",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "When the resource version last changed"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "_profile",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-profile",
        "type" : "uri",
        "documentation" : "Profiles this resource claims to conform to",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Profiles this resource claims to conform to"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "created",
        "definition" : "http://hl7.org/fhir/SearchParameter/Media-created",
        "type" : "date",
        "documentation" : "When Media was collected",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "When Media was collected"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/Media-status",
        "type" : "token",
        "documentation" : "preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "subject",
        "definition" : "http://hl7.org/fhir/SearchParameter/Media-subject",
        "type" : "reference",
        "documentation" : "Who/What this Media is a record of",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Who/What this Media is a record of"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "type",
        "definition" : "http://hl7.org/fhir/SearchParameter/Media-type",
        "type" : "token",
        "documentation" : "Classification of media as image, video, or audio",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Classification of media as image, video, or audio"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHALL"
        }],
        "name" : "part-of",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-media-part-of",
        "type" : "reference",
        "documentation" : "SearchParameter for Media.partOf",
        "_documentation" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "SearchParameter for Media.partOf"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    }]
  }]
}

```
