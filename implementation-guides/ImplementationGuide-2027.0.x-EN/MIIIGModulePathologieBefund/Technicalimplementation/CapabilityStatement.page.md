---
topic: PathoCapabilityStatement
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/CapabilityStatement/metadata
---

## {{page-title}}

To enable decentralized data analysis via the German Research Data Portal for Health of the Medical Informatics Initiative, the [capabilities-interaction](https://www.hl7.org/fhir/http.html#capabilities) MUST be supported. This requires the FHIR server to expose a CapabilityStatement at ```[BASE_URL]/metadata```. Within this CapabilityStatement, it MUST be specified which profiles (including versions) and which search parameters are supported.

The following section lists the elements that MUST be included in the CapabilityStatement. Additionally, compliance with the following CapabilityStatement MUST be declared in the respective instance using the [```CapabilityStatement.instantiates```](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates) element.

Canonical: ```https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/CapabilityStatement/metadata```




{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/CapabilityStatement/metadata}}