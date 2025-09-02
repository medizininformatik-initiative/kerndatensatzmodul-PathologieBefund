---
topic: PathoServiceRequest
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request
---

## {{page-title}}

### Description

The **MII PR Patho Service Request** profile of the [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) resource represents the description of the clinician's (sender's) request to the pathology facility. This request is usually non-specific ("Histology requested," which corresponds to a request for a consultative review), but can be supplemented by specific questions (e.g., "FISH for Her2," which corresponds to a target request).

An examination request is always linked to one (or more) sample(s), for which detailed descriptions may be available from the sender. An examination request usually constitutes a case (submission, "accession") at the pathology facility. The pathology facility processing the examination request may combine or divide examination requests into one or more cases according to the laboratory's internal requirements.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request}}
    </tab>
</tabs>

---------------------------------------------------

### List of all must-support data elements
| FHIR element | Explanation |
|--|--|
|ServiceRequest.meta.lastUpdated | Must-support, but optional |
|ServiceRequest.meta.source | Must-support, but optional |
|ServiceRequest.meta.profile | Must-support, but optional |
|ServiceRequest.identifier | Request number of the desired examination, at least uniquely identified by system and value. Serves to link the pathology system (filler ID) with the requesting system (placer ID). |
|ServiceRequest.requisition | Identifier for a grouped order (placer group number) |
|ServiceRequest.status | Fixed value, since only final requests should be mapped. =“completed” |
|ServiceRequest.intent | Fixed value, ServiceRequest always represents the diagnostic request. “Order” |
|ServiceRequest.category | Fixed SCT "726007 Pathology consultation, comprehensive, records and specimen with report (procedure)" |
|ServiceRequest.code | Coded type of pathology finding, VS_MII_Patho_Service_Request_LOINC (preferred) |
|ServiceRequest.subject | Patient reference (inherited from the Person module of the MII https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient) |
|ServiceRequest.encounter | Reference to the treatment case |
|ServiceRequest.requester | Reference to the sender |
|ServiceRequest.performer | Reference to the commissioned pathologist |
|ServiceRequest.reasonCode | Code for the reason for the examination order (Reason for Referral), Children from SCT Clinical findings |
|ServiceRequest.supportingInfo | Reference to additional clinical information (history of present illness, clinical question (active problems), diagnosis, |
|ServiceRequest.specimen | Reference to sample(s) (for the submitted material)|

-----------------------------------------------
### Reference to the Logical Model
| FHIR Element | Logical Data Model |
|--|--|
|ServiceRequest.id | Investigation order.id |
|ServiceRequest.meta | Investigation order.meta |
|ServiceRequest.identifier | Investigation order.Order ID |
|ServiceRequest.requisition | Investigation order.Order group ID |
|ServiceRequest.status | Investigation order.Status |
|ServiceRequest.intent | Investigation order.Intention |
|ServiceRequest.category | Investigation order.Category |
|ServiceRequest.code |Examination order.Examination|
|ServiceRequest.requester |Reference to the sender |
|ServiceRequest.subject | Reference to the patient |
|ServiceRequest.authoredOn | Date the request was created, if not available, the date the request was received |
|ServiceRequest.reasonCode |Examination order.Clinical information.Reference reason |
|ServiceRequest.reasonReference |Reference to the reason for referral |
|ServiceRequest.supportingInfo | Examination order.Clinical information.Anamnesis, question and diagnosise |
|ServiceRequest.specimen |Reference to the sample |

---

### Search parameters

The following search parameters are relevant for the Pathology Report module, even in combination:

1. The search parameter ```_id`` MUST be supported:

Examples:

``GET [base]/ServiceRequest?_id=103270```

Usage notes: Further information on searching for ```_id`` can be found in the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_lastUpdated``` MUST be supported:

Examples:

```GET [base]/ServiceRequest?_lastUpdated=2021-12-08```

Usage Notes: For more information on searching for ```_lastUpdated``, see the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_profile`` MUST be supported:

Examples:

```GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/sd-mii-patho-service-request```

Usage Notes: Further information on searching for ```_profile`` can be found in the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```authored``` MUST be supported:

Examples:

```GET [base]/ServiceRequest?authored=2021-06-08```

Usage Notes: For more information on searching for ```ServiceRequest.authored``, see the [FHIR Base Specification - "date" section](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter ```category`` MUST be supported:

Examples:

```GET [base]/ServiceRequest?category=726007```

````GET [base]/ServiceRequest?category=http://snomed.info/sct|726007```

Usage Notes: Further information on searching for ```ServiceRequest.category`` can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```code`` MUST be supported:

Examples:

```GET [base]/ServiceRequest?code=11526-1```

````GET [base]/ServiceRequest?code=http://loinc.org|11526-1```

Usage Notes: For more information on searching for ```ServiceRequest.code``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```encounter``` MUST be supported:

Examples:

```GET [base]/ServiceRequest?encounter=Encounter/769808```

Usage Notes: For more information on searching for ```ServiceRequest.encounter``, see the [FHIR Base Specification - Reference Section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "identifier" MUST be supported:

Examples:

GET [base]/ServiceRequest?identifier=https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht|E21.12345

GET [base]/ServiceRequest?identifier=E21.12345

Usage Notes: Further information on searching for "ServiceRequest.identifier" can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```intent`` MUST be supported:

Examples:

``GET [base]/ServiceRequest?intent=order```

Usage Notes: Further information on searching for ```ServiceRequest.intent`` can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```patient`` MUST be supported:

Examples:

```GET [base]/ServiceRequest?patient=Patient/12345```

Usage Notes: Further information on searching for ```ServiceRequest.subject.​where(resolve() is Patient)`` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```performer`` MUST be supported:

Examples:

``GET [base]/ServiceRequest?performer=Practitioner/2346545```

Usage Notes: Further information on searching for ```ServiceRequest.performer`` can be found in the [FHIR Base Specification - Reference Section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```requester`` MUST be supported:

Examples:

```GET [base]/ServiceRequest?requester=Practitioner/2346545```

Usage Notes: Further information on searching for ```ServiceRequest.requester`` can be found in the [FHIR Base Specification - Reference Section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```requisition`` MUST be supported:

Examples:

```GET [base]/ServiceRequest?requisition=124325```

```GET [base]/ServiceRequest?requisition=https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht|124325```

Usage Notes: Further information on searching for ```ServiceRequest.requisition`` can be found herecan be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```specimen``` MUST be supported:

Examples:

```GET [base]/ServiceRequest?specimen=Specimen/ex-mii-patho-prostate-tru-cut-biopsy-sample```

Usage Notes: Further information on searching for ```ServiceRequest.specimen``` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```status`` MUST be supported:

Examples:

``GET [base]/ServiceRequest?status=completed```

Usage Notes: For more information on searching for ```ServiceRequest.status``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```subject`` MUST be supported:

Examples:

```GET [base]/ServiceRequest?subject=Patient/12345```

Usage Notes: For more information on searching for ```ServiceRequest.subject``, see the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```reason-code`` MUST be supported:

Examples:

```GET [base]/ServiceRequest?reason-code=396152005```

```GET [base]/ServiceRequest?reason-code=http://snomed.info/sct|396152005```

Usage Notes: For more information on searching for ```ServiceRequest.reasonCode``, see the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The ```supporting-info`` search parameter MUST be supported:

Examples:

``GET [base]/ServiceRequest?supporting-info=Condition/12345```

Usage Notes: For more information on searching for ```ServiceRequest.supportingInfo``, see the [FHIR Base Specification - Reference Section](http://hl7.org/fhir/R4/search.html#reference).

--------------------------------
### Examples

{{json:mii-exa-patho-request}}
