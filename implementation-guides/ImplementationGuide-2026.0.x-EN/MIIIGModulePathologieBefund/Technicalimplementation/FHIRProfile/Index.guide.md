## FHIR Profiles

| Note | Mandatory / must-support elements |
|---------|---------------------|
| {{render:Warning}} |
For mandatory or must-support elements, please refer to the corresponding [IPS rules](http://hl7.org/fhir/uv/ips/STU1/design.html#must-support), which also apply to this Implementation Guide.|
rofile wird in textueller Form unterhalb der jeweiligen Profile erläutert. 

The work of the core dataset specifications is based, where possible, on international standards and terminologies. In particular, the [Anatomic Pathology Structured Report (APSR)](https://art-decor.org/art-decor/decor-templates--psr-?section=templates&id=1.3.6.1.4.1.19376.1.8.1.1.1&effectiveDate=2014-05-13T11:57:57&language=de-DE) and the [International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/history.html) are highlighted. Adaptation to the general conditions of the German healthcare system is achieved through the use of the [Deutschen Basisprofile von HL7 Deutschland](https://simplifier.net/basisprofil-de-r4).

All elements of the core dataset, adapted to the details and requirements of the use cases of the medical informatics initiative, are described below in the form of FHIR Structure Definitions. The need to adapt the FHIR profiles is explained in text form below the respective profiles.

## Profile Overview

{{index:current}}

## Pathology Observations

All observations in the Pathology Findings module share the abstract observation profile **MII PR Base Observation** as their common basis.

{{render:ImplementationGuide-Common-images-patho-observation-dependencies-v1.0.0}}

## Complete overview of all profiles and references

{{render:guides-ImplementationGuide-Common-images-patho-profile-relationships-v1.0.0}}