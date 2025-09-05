---
topic: PathoBundle
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-bundle
---

## {{page-title}}

### Beschreibung

Dieses Profil **MII PR Patho Bundle** erbt von [Profile - ISiK - BerichtSubsysteme](https://simplifier.net/isik-basis-v4/isikberichtsubsysteme) aus der Spezifikation [ISiK - Basis (Stufe 4)](https://simplifier.net/isik-basis-v4).
Es dient der Aggregation aller Ressourcen, die Bestandteil des Dokumentes sind. Dabei sollte die erste Ressource im Bundle (Bundle.entry.resource) stets eine Composition sein.

Das Profil verwendet `Bundle.type` = “document” und einen persistenten, eindeutigen `Bundle.identifier`. Dieser sollte dem `Composition.identifier` entsprechen, beispielsweise einer Eingangsnummer inklusive Versionsnummer. Weitere Slices von Bundle.entry sind ServiceRequest, Specimen, DiagnosticReport, Observation und Patient. Wobei die Slices ServiceRequest und Patient optional sind.
Das Bundle enthält eine Signatur. 


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

### Liste aller Must-Support Datenelemente

| FHIR-Element            | Erklärung                                                                                     |
|--------------------------|-----------------------------------------------------------------------------------------------|
| Bundle.id                | Must-support, jedoch optional                                                                 |
| Bundle.meta.lastUpdated  | Must-support, jedoch optional                                                                 |
| Bundle.meta.profile      | Must-support, jedoch optional                                                                 |
| Bundle.identifier        | Identifikation des Pathologiebefundberichts, i.d.R. die Eingangsnummer (Fall-Nr.), ergänzt durch Versionsnummer. Andere UIDs möglich |
| Bundle.type              | fixed value auf #document                                                                     |
| Bundle.entry             | Slices auf Composition, ServiceRequest, Specimen, DiagnosticReport, Observation und Patient   |
| Bundle.signature         | Digitale Signatur des Erstellenden   

	