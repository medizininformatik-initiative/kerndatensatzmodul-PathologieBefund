---
topic: PathoRequestGroup
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-request-group
---

## {{page-title}}

### Description

The **MII PR Patho Request Group** profile of the [RequestGroup](http://hl7.org/fhir/R4/requestgroup.html) resource enables the grouping of multiple **MII PR Patho Service Request** instances into a single request group. This is particularly necessary when multiple specific examination orders (e.g. different targeted orders for different specimens) need to be grouped within a single case.

The individual requests are referenced via the `action.resource` element, each pointing to an **MII PR Patho Service Request**.

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
### Must-Support Data Elements
| FHIR Element | Description |
|--|--|
|RequestGroup.meta.profile | Must-support, but optional |
|RequestGroup.status | Status of the request group |
|RequestGroup.intent | Fixed value "order" |
|RequestGroup.subject | Reference to the patient |
|RequestGroup.encounter | Reference to the treatment case |
|RequestGroup.authoredOn | Date the request group was authored |
|RequestGroup.author | Person or organization who authored the request group |
|RequestGroup.action | Individual requests within the request group (1..*) |
|RequestGroup.action.resource | Reference to an MII PR Patho Service Request |

---

### Search Parameters

The following search parameters are relevant for the Pathology Findings module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?_id=103270```

    Usage Notes: Further information on searching for ```_id``` can be found in the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_lastUpdated``` MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?_lastUpdated=2021-12-08```

    Usage Notes: Further information on searching for ```_lastUpdated``` can be found in the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```_profile``` MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-request-group```

    Usage Notes: Further information on searching for ```_profile``` can be found in the [FHIR Base Specification - Section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter ```author``` MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?author=Practitioner/34456```

    Usage Notes: Further information on searching for ```RequestGroup.author``` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```authored``` MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?authored=2021-06-01```

    Usage Notes: Further information on searching for ```RequestGroup.authoredOn``` can be found in the [FHIR Base Specification - "date" section](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter ```encounter``` MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?encounter=Encounter/87687```

    Usage Notes: Further information on searching for ```RequestGroup.encounter``` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```intent``` MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?intent=order```

    Usage Notes: Further information on searching for ```RequestGroup.intent``` can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```patient``` MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?patient=Patient/12345```

    Usage Notes: Further information on searching for ```RequestGroup.subject``` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter ```status``` MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?status=active```

    Usage Notes: Further information on searching for ```RequestGroup.status``` can be found in the [FHIR Base Specification - "token" section](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter ```subject``` MUST be supported:

    Examples:

    ```GET [base]/RequestGroup?subject=Patient/12345```

    Usage Notes: Further information on searching for ```RequestGroup.subject``` can be found in the [FHIR Base Specification - "reference" section](http://hl7.org/fhir/R4/search.html#reference).

--------------------------------
### Examples
{{json:mii-exa-patho-request-group}}
