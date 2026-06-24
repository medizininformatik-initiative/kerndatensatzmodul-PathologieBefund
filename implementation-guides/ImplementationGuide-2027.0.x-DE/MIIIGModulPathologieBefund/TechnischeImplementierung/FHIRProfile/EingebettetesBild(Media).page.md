---
topic: PathoAttachedImage
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image
---

## {{page-title}}

### Beschreibung

Mit dem Profil **MII PR Patho Attached Image** der Ressource Media wird  die Beschreibung von in den Befund, d.h. den **MII PR Patho Report**, eingebetteten Bildern vorgenommen. Um Bilder in **MII PR Patho Finding** einzubinden, muss auf eine Referenz zu einer ImagingStudy zurückgegriffen werden. Das vorliegende Profil sollte vorzugsweise nur zur "Illustration" eines Pathologiebefundberichts verwendet werden.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image}}
    </tab>
</tabs>

------------------------------------------------------
### Liste aller Must-Support Datenelemente
| FHIR-Element | Erklärung |
|--|--|
|Media.id|Must-Support, jedoch optional|
|Media.meta.lastUpdated |Must-Support, jedoch optional|
|Media.meta.profile |Must-Support, jedoch optional|
|Media.partOf|Referenz auf Medium|
|Media.status|Eventstatus|
|Media.text|textliche Beschreibung der Aufnahme|
|Media.type|Medientyp (Image)|
|Media.subject|Referenz auf Probe|
|Media.content|Medien-Anhang|

------------------------------------------------------------
### Referenz zum Logical Model
| FHIR-Element | Logisches Datenmodell |
|--|--|
| Media.id | EingebettetesBild.ID |
|Media.partOf| Media |
|Media.status| EingebettetesBild.Status |
|Media.type| EingebettetesBild.Typ |
|Media.subject| Probe |
|Media.content| EingebettetesBild.Kontent |

---

### Suchparameter

Folgende Suchparameter sind für das Modul Pathologie-Befund relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Media?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_id``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```_lastUpdated``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Media?_lastUpdated=2021-12-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_lastUpdated``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```_profile``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Media?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_profile``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```created``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Media?created=2021-06-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Media.created``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter ```status``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Media?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Media.status``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```subject``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Media?subject=Specimen/ex-mii-patho-prostate-tru-cut-biopsy-sample```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Media.subject``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```type``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Media?type=image```

    ```GET [base]/Media?type=http://terminology.hl7.org/CodeSystem/media-type|image```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Media.type``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```part-of``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Media?part-of=Media/9878097```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```(Media.partOf as Media)``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).


--------------------------------
### Beispiele
{{json:mii-exa-patho-attached-image}}
