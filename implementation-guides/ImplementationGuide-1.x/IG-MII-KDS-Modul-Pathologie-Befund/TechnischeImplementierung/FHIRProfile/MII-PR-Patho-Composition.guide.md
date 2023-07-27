---
topic: PathoComposition
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition
---

## {{page-title}}

### Beschreibung

Dieses Profil erbt von [Profile - ISiK - BerichtSubsysteme](https://simplifier.net/packages/de.gematik.isik-basismodul/2.0.5/files/1973955) aus der Spezifikation [ISiK - Basis (Stufe 2)](https://simplifier.net/isik-basis-v2). 

Das Profil **MII PR Patho Composition** fasst als Profil einer Composition Ressource mit speziellen Constraints für ClinicalDocuments die Ressourcen für einen kompletten, textzentrierten Pathologiebefundbericht mit den Eigenschaften eines klinischen Dokuments zusammen. 

Dieses Profil ist das erste Entry in einem Bundle des `Bundle.type` “document”, der persistierende eindeutige `Bundle.identifier` sollte dem der Composition (Composition.identifier, s.u.), z.B. Eingangsnummer einschließlich Versionsnummer entsprechen.  Optional können weitere Entries enthalten sein. Das Bundle enthält eine Signatur. 

Lediglich zwei Sections, der Diagnostische Report (`patho-diagnostic-report`) sowie ein oder mehrere zusätzliche komplette Reports, z.B. aus einer molekulargenetischen Untersuchung (`additional-diagnostic-report`), können in der Composition vorhanden sein. Die im Datensatz beschriebenen Beobachtungsberichtabschnitte werden im **MII PR Patho Report**, einem Profil der Ressource DiagnosticReport, als spezielle Grouper-Observations mit Text und atomaren Einzelbeobachtungen (**MII PR Patho Finding**) dargestellt. 

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition' select Name: name, Canonical: url
```

---------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition}}
    </tab>
</tabs>

---------------------------------------------
### Liste aller Must-Support Datenelement
| FHIR-Element | Erklärung |
|--|--|
|Composition.id |Must-support, jedoch optional|
|Composition.meta.lastUpdated |Must-support, jedoch optional|
|Composition.meta.profile |Must-support, jedoch optional|
|Composition.extension:document-version |Versionsnummer des Befundberichts. (s. Extension [versionNumber](http://hl7.org/fhir/r4/extension-composition-clinicaldocument-versionnumber.html))|
|Composition.identifier | Identifikation des Pathologiebefundberichts, i.d.R. die Eingangsnummer (Fall-Nr.), ergänzt durch Versionsnummer. Andere UIDs möglich|
|Composition.identifier.extension.original-text | Originaltext des Identifikators, Must.-Support, aber optional|
|Composition.identifier.type | kodierter Typ des Identifikators, z.B. Set-ID, entspricht meist der Fall-(Eingangs)nummer, siehe DiagnosticReport.identifier |
|Composition.identifier.system | Namensraum des Identifikators |
|Composition.identifier.value | Textdarstellung des  eindeutigen Identifikators |
|Composition.status |Status des Dokuments. status.code="preliminary", "final", "amended" oder "entered-in-error" (s. [vs-composition-status](http://hl7.org/fhir/r4/valueset-composition-status.html))|
|Composition.text | Narrative für die Headerdaten des Befundberichts (Eingangsnummer, Institutionskennzeichen, Autorenschaftdaten, Patient:innendaten, etc.) |
|Composition.type | Dokumententyp (LOINC 11526-1 "Pathology study") |
|Composition.category | Dokumentenkategorie (Auswahl aus LOINC 27898-6 set))|
|Composition.subject | Patient (erbt von Modul Person der MII https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient) |
|Composition.date | Datum der Freigabe des Dokuments |
|Composition.author | Autor des Befundberichts|
|Composition.title | Titel des Befundberichts, z.B. Pathologisch-anatomische Beurteilung|
|Composition.attester | Rechtlich für das Dokument Unterzeichnender (legalAuthenticator [1 .. 1], mode="legal" ) oder für die Validierung von Observations verantwortlicher (contentValidator [0 .. *], mode="professional")|
|Composition.custodian | Referenz auf für das Dokument rechtlich Verantwortlicher (Institut/Praxis/Krankenhaus) |
|Composition.relatesTo | Bezüge zu anderen Dokumenten (z.B. vorangegangene Version des Befundberichts) |
|Composition.event | Das Dokument auslösendes Ereignis (Referenz auf Untersuchungsauftrag), HL7-code="PATREPE" |
|Composition.section | Diagnostischer Report, betreffend den Pathologiebefund. Section.code="60567-5 (Comprehensive pathology report panel)", title "Pathologiebefundbericht", entry reference(PathologyReport) |
|Composition.section.text | Texte aus dem Patho Report (Proben, Makroskopie, Mikroskopie, Diagnostische Schlussfolgerung etc.), d.h., der komplette Textteil des Pathologiebefundes |

----------------------------------------
### Referenz zum Logical Model
| FHIR-Element | Logisches Datenmodell |
|--|--|
|Composition.text |Befundbericht|
|composition-clinicaldocument-versionNumber |Befundbericht.Versionsnummer |
|Composition.identifier | Befundbericht.Identifikator  |
|Composition.status | Befundbericht.Status |
|Composition.type | Befundbericht.Typ  |
|Composition.category | Befundbericht.Kategorie |
|Composition.subject | Patient |
|Composition.encounter | Fall (Abteilungskontakt)  |
|Composition.date | Befundbericht.Datum  |
|Composition.author | Befundbericht.Autor |
|Composition.attester | Befundbericht.Freigebender |
|Composition.title | Befundbericht.Titel  |
|Composition.event | Abarbeitung des Untersuchungsauftrags |
|Composition.custodian | Für den Befundbericht Verantwortlicher  |
|Composition.relatesTo |Befundbericht.ZugehörigesDokument  |
|Composition.section | Beobachtungsberichtabschnitte im SD MII Patho Report |

---

### Suchparameter

Folgende Suchparameter sind für das Modul Pathologie-Befund relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Composition?_id=ex-mii-patho-composition```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_id``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```_lastUpdated``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Composition?_lastUpdated=2021-12-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_lastUpdated``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```_profile``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```_profile``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter ```attester``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?attester=Practitioner/765879```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.​attester.​party``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```author``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?author=Practitioner/45756```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.​author``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```category``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?category=27898-6```

    ```GET [base]/Composition?category=http://loinc.org|27898-6```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.category``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```date``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?date=2021-06-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.date``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter ```encounter``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?encounter=Encounter/769808```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.encounter``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```entry``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?entry=DiagnosticReport/ex-mii-patho-report```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.section.entry``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```identifier``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?identifier=https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht|E21.12345```

    ```GET [base]/Composition?identifier=E21.12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.identifier``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```patient``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?patient=Patient/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.subject.​where(resolve() is Patient)``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```period``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?period=le2021-06-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.event.period``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter ```related-ref``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?related-ref=Composition/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```(Composition.​relatesTo.​target as Reference)``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```section``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?section=60567-5```

    ```GET [base]/Composition?category=http://loinc.org|60567-5```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.​section.​code``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```status``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?status=final```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.status``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```subject``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?subject=Patient/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.subject``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```title``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?title:contains=Pathology```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.title``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "string"](http://hl7.org/fhir/R4/search.html#string).

1. Der Suchparameter ```type``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?type=11526-1```

    ```GET [base]/Composition?type=http://loinc.org|11526-1```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.​type``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```attester-mode``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?attester-mode=legal```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.attester.mode``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter ```custodian``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?subject=Patient/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.subject``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter ```relates-to-code``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Composition?relates-to-code=appends```

    Anwendungshinweise: Weitere Informationen zur Suche nach ```Composition.relatesTo.code``` finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).


--------------------------------
### Beispiele
{{json:mii-exa-patho-composition}}