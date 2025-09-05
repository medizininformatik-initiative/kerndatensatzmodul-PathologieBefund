---
topic: PathoBundle
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-bundle
---

## {{page-title}}

### Description

This profile **MII PR Patho Bundle** inherits from [Profile - ISiK - BerichtSubsysteme](https://simplifier.net/isik-basis-v4/isikberichtsubsysteme) from the specification [ISiK - Basis (Stufe 4)](https://simplifier.net/isik-basis-v4).
It serves to aggregate all resources that are part of the document. The first resource in the bundle (Bundle.entry.resource) should always be a Composition.

The profile uses `Bundle.type` = "document" and a persistent, unique `Bundle.identifier`. This should correspond to the `Composition.identifier`, for example an accession number including version number. Additional slices of Bundle.entry are ServiceRequest, Specimen, DiagnosticReport, Observation and Patient. The ServiceRequest and Patient slices are optional.
The Bundle contains a signature.


@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-bundle' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-bundle, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-bundle, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-bundle, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-bundle}}
    </tab>
</tabs>

-----------------------------------------------
### List of all Must-Support Data Elements

| FHIR Element            | Explanation                                                                                  |
|--------------------------|----------------------------------------------------------------------------------------------|
| Bundle.id                | Must-support, but optional                                                                   |
| Bundle.meta.lastUpdated  | Must-support, but optional                                                                   |
| Bundle.meta.profile      | Must-support, but optional                                                                   |
| Bundle.identifier        | Identification of the pathology report, usually the accession number (case no.), supplemented by version number. Other UIDs possible |
| Bundle.type              | fixed value to #document                                                                     |
| Bundle.entry             | Slices on Composition, ServiceRequest, Specimen, DiagnosticReport, Observation and Patient   |
| Bundle.signature         | Digital signature of the creator           
