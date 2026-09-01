# MII VS Patho Service Request Code - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Patho Service Request Code**

## ValueSet: MII VS Patho Service Request Code 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-service-request-code | *Version*:2027.0.0-ballot.rc |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_VS_Patho_Service_Request_Code |

 
ValueSet for a preferred set of ServiceRequest codes 

 **References** 

* [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-patho-service-request-code",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-service-request-code",
  "version" : "2027.0.0-ballot.rc",
  "name" : "MII_VS_Patho_Service_Request_Code",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII_VS_Patho_Service_Request_Code"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII VS Patho Service Request Code",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "MII VS Patho Service Request Code"
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
  "description" : "ValueSet for a preferred set of ServiceRequest codes",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "ValueSet for a preferred set of ServiceRequest codes"
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
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "108252007",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "108252007"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "STATUS",
        "op" : "=",
        "value" : "ACTIVE",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "ACTIVE"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "property" : "ORDER_OBS",
        "op" : "=",
        "value" : "Both",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Both"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "property" : "SYSTEM",
        "op" : "=",
        "value" : "LP7061-7",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "LP7061-7"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "property" : "CLASSTYPE",
        "op" : "=",
        "value" : "1",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "1"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "STATUS",
        "op" : "=",
        "value" : "ACTIVE",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "ACTIVE"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "property" : "ORDER_OBS",
        "op" : "=",
        "value" : "Both",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Both"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "property" : "SYSTEM",
        "op" : "=",
        "value" : "LP61649-7",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "LP61649-7"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "property" : "CLASSTYPE",
        "op" : "=",
        "value" : "1",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "1"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "STATUS",
        "op" : "=",
        "value" : "ACTIVE",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "ACTIVE"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "property" : "ORDER_OBS",
        "op" : "=",
        "value" : "Both",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Both"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "property" : "SYSTEM",
        "op" : "=",
        "value" : "LP247851-1",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "LP247851-1"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "property" : "CLASSTYPE",
        "op" : "=",
        "value" : "1",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "1"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    },
    {
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "STATUS",
        "op" : "=",
        "value" : "ACTIVE",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "ACTIVE"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "property" : "ORDER_OBS",
        "op" : "=",
        "value" : "Both",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "Both"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "property" : "SYSTEM",
        "op" : "=",
        "value" : "LP247830-5",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "LP247830-5"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      },
      {
        "property" : "CLASSTYPE",
        "op" : "=",
        "value" : "1",
        "_value" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "en"
            },
            {
              "url" : "content",
              "valueString" : "1"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        }
      }]
    }]
  }
}

```
