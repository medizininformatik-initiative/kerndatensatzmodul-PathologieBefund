---
topic: DiagnosticConclusion
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper
---

<a id="DiagnosticConclusion"></a>
## {{page-title}}

### Beschreibung

Das Profil **MII PR Patho Diagnostic Conclusion Grouper** der Ressource Observation stellt als `DiagnosticReport.result:diagnostic-conclusion-grouper` für einen **MII PR Patho Report** den jeweiligen Beobachtungsberichtsabschnitt "Diagnostische Schlussfolgerung" (entspr. dieser CDA-Section) dar und fungiert als Organizer für die entsprechenden Gruppierungen von **MII PR Patho Finding**.

Dieses spezielle Grouper-Observation-Element ist allen anderen Observation-Elementen voranzustellen, welche dann als `hasMember`- oder `derivedFrom`-Referenzen zu **MII PR Patho Finding** eingebunden werden.

Falls dieser Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, so kann jeweils ein **MII PR Patho Diagnostic Conclusion Grouper** pro Präparat vorhanden sein.

Auflistung und Erklärung der FHIR-Elemente siehe **(abstract) MII PR Patho Section Grouper**.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper}}
    </tab>
</tabs>

---

### Suchparameter

Folgende Suchparameter sind für das Modul Pathologie-Befund relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Observation?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_id``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```_lastUpdated``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Observation?_lastUpdated=2021-12-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_lastUpdated``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```_profile``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_profile``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```based-on``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?based-on=ServiceRequest/124455```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.basedOn``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```category``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    ```GET [base]/Observation?category=laboratory```

    Anwendungshinweise:  Weitere Informationen zur Suche nach ```Observation.category``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```code``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://loinc.org|22637-3```
    
    ```GET [base]/Observation?code=22637-3```

    Anwendungshinweise:  Weitere Informationen zur Suche nach ```Observation.code``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```data-absent-reason``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?data-absent-reason=http://hl7.org/fhir/codesystem-data-absent-reason.html|unknown```
    
    ```GET [base]/Observation?data-absent-reason=unknown```

    Anwendungshinweise:  Weitere Informationen zur Suche nach ```Observation.data-absent-reason``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```date``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?date=2021-06-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.date``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter ```encounter``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?encounter=Encounter/769808```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.encounter``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```has-member``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?has-member=Observation/ex-mii-patho-biopsy-site-a```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.hasMember``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```identifier``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?identifier=https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht|12345```

    ```GET [base]/Observation?identifier=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.identifier``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```patient``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?patient=Patient/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.subject.​where(resolve() is Patient)``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```performer``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?performer=Practitioner/2346545```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.performer``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```specimen``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?specimen=Specimen/987976```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.specimen``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```status``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?status=final```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.status``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```subject``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.subject``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```value-string``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?value-string:contains=Diagnostische```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.value``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "string"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter ```body-site``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?body-site=716917000```

    ```GET [base]/Observation?body-site=http://snomed.info/sct|716917000```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.bodySite``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

--------------------------------
### Beispiele
{{json:mii-exa-patho-diagnostic-conclusion-grouper}}