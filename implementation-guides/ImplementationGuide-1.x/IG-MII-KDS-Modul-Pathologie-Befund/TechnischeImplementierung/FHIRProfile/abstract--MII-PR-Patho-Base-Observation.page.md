## {{page-title}}

### Beschreibung

Dieses abstrakte Profil sammelt alle gemeinsamen Profilierungsanforderungen der Pathologie Observations und dient als Basis für alle anderen Observation-Profile in diesem Modul. Als abstraktes Profil ist dieses nicht instanziierbar. 

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-base-observation' select Name: name, Canonical: url
```

-------------------------
### Differential
{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-base-observation, diff}}


----------------------------------
### Liste aller Must-Support Datenelemente
| FHIR-Element | Erklärung |
|--|--|
|Observation.id|Must-support, jedoch optional |
| Observation.text | Text zur Beschreibung der Untersuchung |
|Observation.meta.lastUpdated | Must-support, jedoch optional|
|Observation.meta.profile | Must-support, jedoch optional|
|Observation.identifier| Observation muss eindeutig identifizierbar sein, keine Vorgaben zur Kodierung, Präferenz: Ableitung aus der Eingangsnummer (Part-Block-Slide)  |
|Observation.basedOn|Auftrag, der die Beobachtung veranlasst hat | 
|Observation.status|Finale & vorläufige Ergebnisse sind zulässig  |
|Observation.category|Kategorie der Beobachtung |
|Observation.code|Code der Beobachtung, LOINC preferred |
|Observation.subject| Referenz zum/r Patient:in (erbt von Modul Person der MII https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient)|
|Observation.effective[x]|Zeitpunkt oder Zeitspanne der Beobachtung |
|Observation.bodySite| Körperstelle, an der die Beobachtung vorgenommen wird, Must-support, jedoch optional  |
|Observation.method|Beobachtungsmethode |
|Observation.specimen| Referenz zur beobachteten Probe```(1)```|
| Observation.hasMember | Zum Beobachtungsberichtabschnitt zugehöhrige Resource |
|Observation.derivedFrom| Referenz zu zugehörigen Resourcen, von denen die Beobachtung abgeleitet wurde  |

```(1) Die Referenz auf mehr als einer Probe ist zur Zeit aufgrund der Kernspezifikation von FHIR nicht möglich. Für eine ausführlichere Problembeschreibung und aktuellen Lösungsvorschlägen siehe``` [hier](https://jira.hl7.org/browse/FHIR-34002).

-----------------------------------------------------------------
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

-----------------------------------------------
### Snapshot
{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-base-observation}}
