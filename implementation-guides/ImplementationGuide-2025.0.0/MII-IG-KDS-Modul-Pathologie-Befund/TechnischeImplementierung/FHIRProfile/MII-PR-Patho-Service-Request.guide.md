---
topic: PathoServiceRequest
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request
---

## {{page-title}}

### Beschreibung

Das Profil **MII PR Patho Service Request** der Ressource [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) stellt die Beschreibung des Auftrags des Klinikers an die Pathologieeinrichtung dar. Dieser ist in der Regel unspezifisch gehalten (“Histologie erbeten”, dies entspricht enem Auftrag zur konsiliarischen Begutachtung), kann aber durch spezielle Fragen untersetzt sein (z.B. “FISH für Her2”, entspricht einem Zielauftrag).

Ein Untersuchungsauftrag ist immer an eine (oder mehrere) Probe(n) gebunden, zu denen detaillierte Beschreibungen des Einsenders vorliegen können. Ein Untersuchungsauftrag begründet in der Regel einen Fall (Einsendung, "Accession") der Pathologieeinrichtung. Durch die den Untersuchungsauftrag abarbeitende Pathologieeinrichtung kann eine Zusammenfassung oder Aufteilung von Untersuchungsanträgen entsprechend den laborinternen Erfordernissen zu einem Fall oder mehreren Fällen erfolgen.

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
### Liste aller Must-Support Datenelemente
| FHIR-Element | Erklärung |
|--|--|
|ServiceRequest.meta.lastUpdated | Must-support, jedoch optional |
|ServiceRequest.meta.source | Must-support, jedoch optional |
|ServiceRequest.meta.profile | Must-support, jedoch optional |
|ServiceRequest.identifier | Anforderungsnummer der gewünschten Untersuchung, mind. eindeutig durch System und Value identifiziert. Dient zur Verknüfung des Pathologie-Systems (Filler-ID) mit dem anfordernden System (Placer-ID). |
|ServiceRequest.requisition | Identifikator für einen gruppierten Auftrag (Placer Group Number)  |
|ServiceRequest.status | Fixed value, da nur finale Anforderungen abgebildet werden sollen. =“completed” |
|ServiceRequest.intent | Fixed value, ServiceRequest repräsentiert immer die Anforderung der Diagnostik. “Order” |
|ServiceRequest.category | Fixed SCT "726007 Pathology consultation, comprehensive, records and specimen with report (procedure)"|
|ServiceRequest.code | kodierte Art des Pathologiebefundes, VS_MII_Patho_Service_Request_LOINC (preferred) |
|ServiceRequest.subject | Referenz zum*r Patienten*in (erbt von Modul Person der MII https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient)|
|ServiceRequest.encounter | Referenz zum Behandlungsfall |
|ServiceRequest.requester | Referenz zum Einsender |
|ServiceRequest.performer | Referenz zum beauftragten Pathologen |
|ServiceRequest.reasonCode | Code für den Anlass des Untersuchungsauftrags (Reason for Referral), Children von SCT Clinical findings|
|ServiceRequest.supportingInfo | Referenz auf zusätzliche klinische Informationen (Anamnestische Angaben (History of present illness), Klinische Fragestellung (Active Problems), Diagnose,   |
|ServiceRequest.specimen | Referenz zu Probe(n) (zum Einsendungsmaterial)|

-----------------------------------------------
### Referenz zum Logical Model
| FHIR-Element | Logisches Datenmodell |
|--|--|
|ServiceRequest.id | Untersuchungsauftrag.id |
|ServiceRequest.meta | Untersuchungsauftrag.meta |
|ServiceRequest.identifier | Untersuchungsauftrag.Auftrags-ID |
|ServiceRequest.requisition | Untersuchungsauftrag.Auftragsgruppen-ID |
|ServiceRequest.status | Untersuchungsauftrag.Status |
|ServiceRequest.intent | Untersuchungsauftrag.Intention |
|ServiceRequest.category | Untersuchungsauftrag.Kategorie |
|ServiceRequest.code |Untersuchungsauftrag.Untersuchung|
|ServiceRequest.requester |Referenz zum Einsender | 
|ServiceRequest.subject | Referenz zum Patienten |
|ServiceRequest.authoredOn | Erstelldatum der Anforderung, falls nicht vorhanden Eingangsdatum der Anforderung |
|ServiceRequest.reasonCode |Untersuchungsauftrag.KlinischeAngaben.Überweisungsgrund |
|ServiceRequest.reasonReference |Referenz zum Überweisungsgrund |
|ServiceRequest.supportingInfo | Untersuchungsauftrag.KlinischeInformation.Anamnese, Fragestellung und Diagnose |
|ServiceRequest.specimen |Referenz zur Probe |

---

### Suchparameter

Folgende Suchparameter sind für das Modul Pathologie-Befund relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/ServiceRequest?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_id``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```_lastUpdated``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/ServiceRequest?_lastUpdated=2021-12-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_lastUpdated``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```_profile``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/sd-mii-patho-service-request```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_profile``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```authored``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?authored=2021-06-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.authored``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter ```category``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?category=726007```

    ```GET [base]/ServiceRequest?category=http://snomed.info/sct|726007```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.category``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```code``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?code=11526-1```

    ```GET [base]/ServiceRequest?code=http://loinc.org|11526-1```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.code``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```encounter``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?encounter=Encounter/769808```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.encounter``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```identifier``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?identifier=https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht|E21.12345```

    ```GET [base]/ServiceRequest?identifier=E21.12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.identifier``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```intent``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?intent=order```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.intent``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```patient``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?patient=Patient/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.subject.​where(resolve() is Patient)``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```performer``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?performer=Practitioner/2346545```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.performer``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```requester``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?requester=Practitioner/2346545```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.requester``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```requisition``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?requisition=124325```

    ```GET [base]/ServiceRequest?requisition=https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht|124325```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.requisition``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```specimen``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?specimen=Specimen/ex-mii-patho-prostate-tru-cut-biopsy-sample```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.specimen``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```status``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.status``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```subject``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?subject=Patient/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.subject``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```reason-code``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?reason-code=396152005```

    ```GET [base]/ServiceRequest?reason-code=http://snomed.info/sct|396152005```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.reasonCode``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```supporting-info``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?supporting-info=Condition/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```ServiceRequest.supportingInfo``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).


--------------------------------
### Beispiele

{{json:mii-exa-patho-request}}
