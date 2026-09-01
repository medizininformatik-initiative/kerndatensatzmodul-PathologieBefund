# mii-exa-patho-request - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-patho-request**

## Beispiel ServiceRequest: mii-exa-patho-request

-------

**German**

-------

Profile: [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.md) version: 2027.0.0-ballot.rc

**identifier**: Placer Identifier/KHXX_ENDO_18.123451

**status**: Completed

**intent**: Order

**category**: Pathology consultation, comprehensive, records and specimen with report (procedure)

**code**: Pathology consultation, comprehensive, records and specimen with report (procedure)

**subject**: [Max Mustermann Male, DoB: 1959-08-24](Patient-mii-exa-patho-patient-12345.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP)](Encounter-mii-exa-patho-encounter-87687.md)

**requester**: [Practitioner Ulrich Urban ](Practitioner-mii-exa-patho-practitioner-34456.md)

**supportingInfo**: 

* [List for 'History of Present illness' for '->Max Mustermann Male, DoB: 1959-08-24'](List-mii-exa-patho-history-of-present-illness.md)
* [List for 'Problemliste - Berichtet' for '->Max Mustermann Male, DoB: 1959-08-24'](List-mii-exa-patho-active-problems-list.md)

**specimen**: [Specimen: extension = ; identifier = Placer Identifier,Filler Identifier; accessionIdentifier = https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht#E12345_21; status = available; type = Prostate tru-cut biopsy sample](Specimen-mii-exa-patho-prostate-tru-cut-biopsy-sample.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-patho-request",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request|2027.0.0-ballot.rc"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PLAC"
      }]
    },
    "system" : "https://pathologie.klinikum-karlsruhe.de/fhir/fn/untersuchungsauftrag",
    "value" : "KHXX_ENDO_18.123451"
  }],
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "726007",
      "display" : "Pathology consultation, comprehensive, records and specimen with report (procedure)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "726007",
      "display" : "Pathology consultation, comprehensive, records and specimen with report (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-patho-patient-12345"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-patho-encounter-87687"
  },
  "requester" : {
    "reference" : "Practitioner/mii-exa-patho-practitioner-34456"
  },
  "supportingInfo" : [{
    "reference" : "List/mii-exa-patho-history-of-present-illness"
  },
  {
    "reference" : "List/mii-exa-patho-active-problems-list"
  }],
  "specimen" : [{
    "reference" : "Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample"
  }]
}

```
