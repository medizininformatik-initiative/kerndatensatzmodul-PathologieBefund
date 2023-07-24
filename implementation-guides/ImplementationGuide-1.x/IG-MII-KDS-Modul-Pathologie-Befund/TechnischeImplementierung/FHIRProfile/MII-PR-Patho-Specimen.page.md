## {{page-title}}

### Beschreibung


Dieses Profil erbt von [Profile - Specimen - Bioprobe - Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/profilespecimenbioprobecore) aus dem Modul Biobanken. 

Ihm liegt das Domänen-Analyse-Modell von HL7 (HL7_DAM_SPECIMEN_R2_INFORM_2019APR) zugrunde. Dieses berücksichtigt insbesondere für die Pathologie das Rollenmodell von Specimen, welche sowohl Gegenstand als auch Produkt von Laborprozessen sind. Das Rootelement ist jeweils die in der Klinik entnommene Bioprobe. Tochterelemente sind Part, Block und Schnitt.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen' select Name: name, Canonical: url
```

---
### Differential
{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen, diff}}

-------------------------------
### Liste aller Must-Support Datenelemente:
|FHIR-Element |Erklärung |
|--|--|
|Specimen.id|Must-Support, aber optional|
|Specimen.meta.lastUpdated |Must-Support, aber optional|
|Specimen.meta.profile |Must-Support, aber optional|
|Specimen.text|textliche Beschreibung der Probe, Must-Support, aber optional|
|Specimen.identifier|vom Einsender (type="PLAC") und/oder vom Labor (type="FILL") vergebener Identifikator, Must-Support, aber optional|
|Specimen.accessionIdentifier|vom Labor vergebener Identifikator, identisch mit Eingangs- oder Fallnummer, siehe DiagnosticReport.identifier |
|Specimen.status|Status der Probe|
|Specimen.type|Probentyp|
|Specimen.subject|Patient (erbt von Modul Person der MII https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient)|
|Specimen.parent|Elternprobe, von der die aktualle Probe abgeleitet wurde, z.B. Block als Elternprobe von Schnitt, Must-Support, aber optional|
|Specimen.request|Untersuchungsauftrag, Must-Support, aber optional|
|Specimen.collection|Probengewinnung (vom Patienten)|
|Specimen.collection.collected|Zeitpunkt bzw. Zeitspanne der Probengewinnung|
|Specimen.collection.method|Prozedur der Probengewinnung|
|Specimen.collection.bodySite|Herkunft der Probe aus dem Patienten, Must-Support, aber optional|
|Specimen.collection.fastingStatus|Must-Support, aber optional|
|Specimen.processing|Probenbearbeitung, Must-Support, aber optional|
|Specimen.processing.procedure|Laborprozedur für die Probenbearbeitung|
|Specimen.processing.additive|Additiv in der Laborprozedur für die Probenbearbeitung, zu verwenden sowohl für Färbungsprozesse als auch für Fixierung Einbettung und Eindeckung (siehe Terminologien), Must-Support, aber optional|
|Specimen.processing.time|Zeitpunkt oder Zeitspanne der Probenbearbeitung,Must-Support, aber optional|
|Specimen.container|Probencontainer, Must-Support, aber optional|
|Specimen.container.type|Typ des Probencontainers|
|Specimen.container.capacity|Fassungsvermögen des Probencontainers, Must-Support, aber optional|
|Specimen.container.specimenQuantity|Menge der Probenmenge, Must-Support, aber optional|
|Specimen.container.additive|Additiv im Container, Children von SNOMED CT Code 430864009|
|Specimen.note|Anmerkungen zur Probe, Must-Support, aber optional|

------------------------------------
### Referenz zum Logical Model:
| FHIR-Element | Logisches Datenmodell |
|--|--|
|Specimen.id| Probe.Identifikation |
|Specimen.text| Probe.Text |
|Specimen.identifier|Probe .ProbeID |
|Specimen.accesionIdentifier|Probe.ProbenID |
|Specimen.status| Probe.Status |
|Specimen.type| Probe.Probenart |
|Specimen.subject| Referenz zum Patient |
|Specimen.request| Referenz zum Untersuchungsauftrag|
|Specimen.collection| Probe.Entnahme |
|Specimen.collection.collected| Probe.Entnahme.EntnahmeZeitpunkt |
|Specimen.collection.method| Probe.Entnahme.Entnahmemethode |
|Specimen.collection.bodySite| Probe.Entnahme.Herkunft |
|Specimen.processing| Probe.Bearbeitung |
|Specimen.processing.procedure|Probe.Bearbeitung.Bearbeitungsprozedur|
|Specimen.processing.additive|Probe.Bearbeitung.Additive und Probe.Container.Additive|
|Specimen.processing.time| |
|Specimen.container|Probe.Container|
|Specimen.container.type|Probe.Container.ContainerTyp|
|Specimen.container.capacity|Probe.Container.Kapazität|
|Specimen.container.specimenQuantity||
|Specimen.container.additive|Probe.Container.Additive|
|Specimen.note|Probe.Notiz|

---

### Snapshot

{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen}}

---

### Suchparameter

Folgende Suchparameter sind für das Modul Pathologie-Befund relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Specimen?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_id``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```_lastUpdated``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Specimen?_lastUpdated=2021-12-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_lastUpdated``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```_profile``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_profile``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```identifier``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?identifier=https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht|E12345_21-A1-1HE```

    ```GET [base]/Specimen?identifier=E12345_21-A1-1HE```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.identifier``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```accession``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?accession=https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht|E12345_21```

    ```GET [base]/Specimen?identifier=E12345_21```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.accessionIdentifier``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```status``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?status=available```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.status``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```type``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?type=787150001```

    ```GET [base]/Specimen?type=http://snomed.info/sct|787150001```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.type``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```subject``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?subject=Patient/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.subject``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).


1. Der Suchparameter ```parent``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?parent=Specimen/ex-mii-patho-prostate-tru-cut-biopsy-sample```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.parent``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```collected``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?collected=2021-01-29```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.​collection.​collected``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter ```collector``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?collector=Practitioner/2346545```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.collection.collector``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```body-site``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?body-site=716917000```

    ```GET [base]/Specimen?body-site=http://snomed.info/sct|716917000```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.collection-bodySite``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```container``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?container=434746001```

    ```GET [base]/Specimen?container=http://snomed.info/sct|434746001```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.​container.​type``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```patient``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?patient=Patient/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.subject.​where(resolve() is Patient)``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```request``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?request=ServiceRequest/ex-mii-patho-request```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.request``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```collection-method``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?collection-method=301759007```

    ```GET [base]/Specimen?collection-method=http://snomed.info/sct|301759007```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.​collection.method``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```collection-body-site``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?collection-body-site=716917000```

    ```GET [base]/Specimen?collection-body-site=http://snomed.info/sct|716917000```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.​collection.bodySite``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```processing-procedure``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?processing-procedure=104210008```

    ```GET [base]/Specimen?processing-procedure=http://snomed.info/sct|104210008```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.​processing.procedure``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).


1. Der Suchparameter ```processing-additive``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?processing-additive=Substance/ex-mii-patho-hematoxylin-stain```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.processing.additive``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```processing-date``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?processing-date=2021-01-29```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.processing.time``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter ```container-additive``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?container-additive=Substance/mii-exa-patho-neutral-buffered-formalin```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Specimen.container.additive``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).



---------------------------------------
### Beispiele:
{{json:mii-exa-patho-specimen-a}}