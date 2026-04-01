---
topic: PathoRequestGroup
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-request-group
---

## {{page-title}}

### Beschreibung

Das Profil **MII PR Patho Request Group** der Ressource [RequestGroup](http://hl7.org/fhir/R4/requestgroup.html) ermöglicht die Zusammenfassung mehrerer **MII PR Patho Service Request** Instanzen zu einer Auftragsgruppe. Dies ist insbesondere dann erforderlich, wenn mehrere spezifische Untersuchungsaufträge (z.B. verschiedene Zielaufträge für unterschiedliche Proben) innerhalb eines Falls gruppiert werden müssen.

Die einzelnen Aufträge werden über das `action.resource`-Element referenziert, das jeweils auf einen **MII PR Patho Service Request** verweist.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-request-group' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-request-group, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-request-group, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-request-group, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-request-group}}
    </tab>
</tabs>

---------------------------------------------------
### Liste aller Must-Support Datenelemente
| FHIR-Element | Erklärung |
|--|--|
|RequestGroup.meta.profile | Must-support, jedoch optional |
|RequestGroup.status | Status der Auftragsgruppe |
|RequestGroup.intent | Fixed value "order" |
|RequestGroup.subject | Referenz zum Patienten |
|RequestGroup.encounter | Referenz zum Behandlungsfall |
|RequestGroup.authoredOn | Datum der Erstellung der Auftragsgruppe |
|RequestGroup.author | Person oder Organisation, die die Auftragsgruppe erstellt hat |
|RequestGroup.action | Einzelne Aufträge innerhalb der Auftragsgruppe (1..*) |
|RequestGroup.action.resource | Referenz auf einen MII PR Patho Service Request |

---

### Suchparameter

Folgende Suchparameter sind für das Modul Pathologie-Befund relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_id``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```_lastUpdated``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?_lastUpdated=2021-12-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_lastUpdated``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```_profile``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-request-group```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_profile``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```author``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?author=Practitioner/34456```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```RequestGroup.author``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```authored``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?authored=2021-06-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```RequestGroup.authoredOn``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter ```encounter``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?encounter=Encounter/87687```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```RequestGroup.encounter``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```intent``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?intent=order```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```RequestGroup.intent``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```patient``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?patient=Patient/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```RequestGroup.subject``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```status``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?status=active```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```RequestGroup.status``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```subject``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?subject=Patient/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```RequestGroup.subject``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

--------------------------------
### Beispiele
{{json:mii-exa-patho-request-group}}
