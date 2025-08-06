---
topic: PathoFinding
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding
---

<a id="PathoFinding"></a>
## {{page-title}}

### Beschreibung


Das Profil **MII PR Patho Finding** der Ressource Observation bildet als `hasMember`- oder `derivedFrom`-Referenz für ein Profil vom Typ **MII PR Patho Section Grouper** atomare kodierte Untersuchungsergebnisse ab. Dieses Profil kann verschachtelte Konstrukte bilden, um „Child Observations“ zu erfassen, die eine einzelne Observation weiter spezifizieren. PathoFindings können vom Pathologie-Informationssystem über Questionnaire- / QuestionnaireResponse-Resourcen (siehe [HL7-Implementation Guide Structured Data Capture](http://hl7.org/fhir/uv/sdc/STU3/)) bereitgestellt werden, bzw. werden QuestionnaireResponse Ressourcen referenziert. Jedes **MII PR Patho Finding** sollte die Probe referenzieren, an der die Beobachtung vorgenommen wurde.

**Sonderfall:**

- Im Falle eines **Befundupdates** dient ein **MII PR Patho Finding** mit dem LOINC-Code [90004-3 - 
Clinical significance of updated information](https://loinc.org/90004-3/) als Organizer für die Update-Informationen, die im **MII PR Patho Diagnostic Conclusion Grouper** abgebildet werden. Hierzu wird die focus-Referenz genutzt, um auf den betroffenen **MII PR Patho Grouper** (Beobachtungsabschnitt) hinzuweisen. Der `Observation.value` wird durch einen ValueSet "ClinicalSignificance" (z.B. LOINC LL4770-5) dargestellt.

Für spezifische Observation-Konstrukte, speziell aus dem Bereich des onkologischen Basisdatensatzes oBDS (TNM, Histologischer Tumortyp, etc.), kann auch auf Observation-Profile des [MII Erweiterungsmoduls Onkologie](https://simplifier.net/medizininformatikinitiative-modulonkologie) zurückgegriffen werden.
Für Beobachtungen an immunhistochemischen Färbungen, in-situ-Hybridisierungen, PCR-Tests, Methylierungs-Tests und NGS-Untersuchungen sollten Observation-Profile des [MII Erweiterungsmoduls Molekulares Tumorboard](https://simplifier.net/medizininformatikinitiative-erweiterungsmodul-molekulares-tumorboard) bzw. des [MII Erweiterungsmoduls Molekulargenetischer Befundbericht](https://simplifier.net/medizininformatikinitiative-erweiterungsmodul-molekulargenetischer-befundbericht)genutzt werden.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding}}
    </tab>
</tabs>

---------------------------------
### Liste aller Must-Support Datenelemente
| FHIR-Element | Erklärung |
|--|--|
|Observation.id | Must-support, jedoch optional |
|Observation.text | Nicht empfohlenes, optionales Narrativ der Observation, nicht identisch mit dem Observation.code.display oder einem Observation.valueString (siehe Composition.text und Composition.section.text)|
|Observation.meta.lastUpdated | Must-support, jedoch optional|
|Observation.meta.profile | Must-support, jedoch optional|
|Observation.identifier | Observation muss eindeutig identifizierbar sein, keine Vorgaben zur Kodierung, Präferenz: Ableitung aus der Eingangsnummer (Part-Block-Slide) |
|Observation.basedOn | Auftrag, der die Beobachtung veranlasst hat |
|Observation.status | Finale & vorläufige Ergebnisse sind zulässig |
|Observation.category | HL7 Code "laboratory", weitere Codings bei generischen Einzelbeobachtungen vorgesehen: LOINC-codes der Sections, zu der die Einzelbeobachtung gehört |
|Observation.code | LOINC Codes, bei fehlenden Codes SNOMED CT gemäß https://confluence.ihtsdotools.org/display/DOCLOINC/5.2+Practical+Guidance+on+Uses+of+SNOMED+CT+and+LOINC |
|Observation.subject | Patient (erbt von Modul Person der MII https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient) |
|Observation.effective | Klinisch relevanter Zeitpunkt /-periode für die Beobachtung, meist Zeit der Probenentnahme |
|Observation.value[x] | Kodierte oder nicht kodierbare/ nicht numerische Beobachtungsergebnisse|
|Observation.bodySite | Körperstelle wo die Beobachtung gemacht wurde |
|Observation.method | kodierte Methode, die zur Beobachtung genutzt wurde |
|Observation.specimen | Probe, an der die Beobachtung erfolgte |
|Observation.hasMember | zum Untersuchungs-/Beobachtungspanel zugehörige Beobachtung / QuestionnaireResponse|
|Observation.derivedFrom |Referenz auf eine Messung / ein Bild / eine QuestionnaireResponse / ein Dokument, von dem die Beobachtung abgeleitet wurde |

---------------------------------
### Referenz zum Logical Model
| FHIR-Element | Logisches Datenmodell |
|--|--|
|Observation.id | Generische Pathologisch-anatomische Einzelbeobachtung.id |
|Observation.text | Generische Pathologisch-anatomische Einzelbeobachtung.Text |
|Observation.meta | Generische Pathologisch-anatomische Einzelbeobachtung.meta |
|Observation.identifier | Generische Pathologisch-anatomische Einzelbeobachtung.Identifikation |
|Observation.basedOn | Untersuchungsauftrag |
|Observation.status | Generische Pathologisch-anatomische Einzelbeobachtung.Status|
|Observation.category | Generische Pathologisch-anatomische Einzelbeobachtung.Kategorie |
|Observation.code | Generische Pathologisch-anatomische Einzelbeobachtung.Code |
|Observation.subject | Patient |
|Observation.effective | Generische Pathologisch-anatomische Einzelbeobachtung.Befundzeit |
|Observation.issued | Generische Pathologisch-anatomische Einzelbeobachtung.Datum |
|Observation.performer | Generische Pathologisch-anatomische Einzelbeobachtung.Durchführender (.Autor, .Informant) |
|Observation.value | Generische Pathologisch-anatomische Einzelbeobachtung.Wert |
|Observation.dataAbsentReason | |
|Observation.interpretation |Generische Pathologisch-anatomische Einzelbeobachtung.Interpretation |
|Observation.note | Generische Pathologisch-anatomische Einzelbeobachtung.Kommentar |
|Observation.method | Generische Pathologisch-anatomische Einzelbeobachtung.Methode |
|Observation.specimen | Generische Pathologisch-anatomische Einzelbeobachtung.Probe |
|Observation.hasMember | Generische Pathologisch-anatomische Einzelbeobachtung.Unterbeobachtung |
|Observation.derivedFrom |Generische Pathologisch-anatomische Einzelbeobachtung.EingebettetesBild |
|Observation.component |Generische Pathologisch-anatomische Einzelbeobachtung.Unterbeobachtung |


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

    ```GET [base]/Observation?code=http://loinc.org|94738-2```
    
    ```GET [base]/Observation?code=94738-2```

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

1. Der Suchparameter ```derived-from``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?derived-from=Media/ex-mii-patho-attached-image```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.derivedFrom``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

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

    ```GET [base]/Observation?value-string:contains=Makroskopie```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.value``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "string"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter ```body-site``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?body-site=716917000```

    ```GET [base]/Observation?body-site=http://snomed.info/sct|716917000```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Observation.bodySite``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```value-ratio``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?value-ratio=le5.4|http://unitsofmeasure.org|mg```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```(Observation.value as Quantity) | (Observation.value as Ratio)``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](http://hl7.org/fhir/R4/search.html#quantity).

1. Der Suchparameter ```combo-value-concept``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?body-site=716917000```
    ```GET [base]/Observation?combo-value-concept=http://snomed.info/sct|716917000```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```(Observation.value as CodeableConcept) | (Observation.​component.​value as CodeableConcept)``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```combo-value-quantity``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?combo-value-quantity=le5.4|http://unitsofmeasure.org|mg```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```(Observation.value as Quantity) | (Observation.​value as SampledData) | (Observation.​component.​value as Quantity) | (Observation.​component.​value as SampledData)``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "quantity"](http://hl7.org/fhir/R4/search.html#quantity).
--------------------------------
### Beispiele
{{json:mii-exa-patho-biopsy-site-a}}