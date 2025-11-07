---
topic: PathoSectionGrouper
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-section-grouper
---

## {{page-title}}

### Beschreibung

Beim Profil **MII PR Patho Section Grouper** handelt es sich um ein abstraktes Profil, welches die Basis für die pathologischen Grouper Profile festlegt, jedoch nicht instanziiert werden soll. Die Grouper-Profile stellen als `DiagnosticReport.result:<grouper-name>` für einen **MII PR Patho Report** den jeweiligen Beobachtungsberichtsabschnitt (entspr. einer CDA-Section) dar und fungieren als Organizer für diese Gruppierungen von **MII PR Patho Finding**.

Hierbei handelt es sich um Untersuchungsergebnisse, die nach inhaltlichen und/oder formalen Erfordernissen zu logischen Gruppen ("Panels") zusammengefast werden müssen, z.B. die jeweiligen Beobachtungen an jeweils definierten Proben, z.B. den verschiedenen eingesandten Präparaten. Dieses spezielle Grouper-Observation-Element ist allen anderen Observation-Elementen voranzustellen, welche dann als `hasMember`- oder `derivedFrom`-Referenzen zu **MII PR Patho Finding** eingebunden werden.  

Als “Panels” von Einzeluntersuchungen sind die Beobachtungsberichtabschnitte 
- **MII PR Patho Intraoperative Grouper**, 
- **MII PR Patho Macroscopic Grouper**, 
- **MII PR Patho Microscopic Grouper**, 
- **MII PR Patho Additional Specified Grouper** und 
- **MII PR Patho Diagnostic Conclusion Grouper** in Form von `DiagnosticReport.result:<grouper-name>` mit Grouper-Funktion im **MII PR Patho Report** organisiert und sind damit den "Sections" in CDA äquivalent. Sie zeichnen sich dadurch aus, dass sie nur einen `Observation.code`, aber keinen `Observation.value` haben. Sie gruppieren die “Panel”-Beobachtungen mithilfe der `hasMember`- und/oder `derivedFrom`-Referenzen oder als `Observation.component`. 

Der Text (Narrative) dieser "Sections" wird im `Observation.text`-Element dargestellt. Es besteht außerdem die Möglichkeit die FHIR Core Extensions [original Text](http://hl7.org/fhir/r4/extension-originaltext.html) oder [narrative Link](http://hl7.org/fhir/r4/extension-narrativelink.html) zu nutzen, um den "narrativen" mit dem strukturierten Part mittels HTML-Tags zu verbinden. Für weitere Informationen zur richtigen Anwendung beider Extensions siehe [hier](http://hl7.org/fhir/r4/narrative.html#linking).

Diese Grouper haben die Observation.codes 
- [83321-0](https://loinc.org/83321-0/) (Pathology report intraoperative observation in Specimen Document) 
- [22634-0](https://loinc.org/22634-0/) (Pathology report gross observation) 
- [22635-7](https://loinc.org/22635-7/) (Pathology report microscopic observation) 
- [100969-5](https://loinc.org/100969-5/) (Pathology report additional specified observation)
- [22637-3](https://loinc.org/22637-3/) (Pathology report diagnosis)  

Falls ein Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, erfolgt die Zuordnung der MII PR Patho Befunde zu diesen verschiedenen Proben über die Probenreferenzen dieser MII PR Patho Befunde, und zwar hinsichtlich der Referenzen die „Parts“ betreffend.

Ein Grouper für "Clinical Information", [22636-5](https://loinc.org/22636-5/) (Pathology report relevant history), ist nicht notwendig, da die hierzu gehörenden Informationen im **MII PR Patho Service Request** unter `.supportingInfo` vorhanden sind.

**Sonderfall:**
- Ein **MII PR Patho Finding** als `hasMember`-Konstrukt innerhalb eines der o.g. Grouper zur Gruppierung von medizinischen inhaltlichen Problemen (entspricht CDA-Problem Organizer), z.B. beim Vorhandensein von zwei unterschiedlichen Tumorentitäten in einer Probe, sollte mit dem LOINC-Code [75326-9, Problem](https://loinc.org/75326-9/) gebildet werden, ein `Observation.value` wird nicht benötigt, als `Observation.component` wird im Code das Gruppierungsproblem dargestellt (z.B. ein ICD-Code ([76540-4, Pathology diagnosis ICD code](https://loinc.org/76540-4/)) für eine spezifische Entität, ein Specimen-Code für eine spezifische Probe ([85298-8, Body structure included in specimen](https://loinc.org/85298-8/)), etc.), im Value der konkrete Wert. Die eigentlichen Untersuchungsergebnisse zu diesem inhaltlichen Problem werden dann mittels des `hasMember`-Konstrukts als **MII PR Patho Findings** dargestellt. 

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-section-grouper' select Name: name, Canonical: url
```
------------------------------------------------------------------

<tabs>
    <tab title="snap" active="true">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-section-grouper, snap}}
    </tab>
    <tab title="diff">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-section-grouper, diff}}
    </tab>
    <tab title="hybrid">
      {{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-section-grouper, hybrid}}
    </tab>
    <tab title="JSON">
      {{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-section-grouper}}
    </tab>
</tabs>

------------------------------------------------------------------
### Liste aller Must-Support Datenelemente
| FHIR-Element | Erklärung |
|--|--|
|Observation.id | Must-support, jedoch optional |
|Observation.text | Nicht empfohlenes, optionales Narrativ der Observation, nicht identisch mit dem Observation.code.display oder einem Observation.valueString (siehe Composition.text und Composition.section.text)|
|Observation.meta.lastUpdated | Must-support, jedoch optional|
|Observation.meta.profile | Must-support, jedoch optional|
|Observation.identifier | Observation muss eindeutig identifizierbar sein, keine Vorgaben zur Kodierung, Präferenz: Ableitung aus der Eingangsnummer + Section Type|
|Observation.basedOn | Auftrag, der die Beobachtung veranlasst hat |
|Observation.status | Finale & vorläufige Ergebnisse sind zulässig |
|Observation.category | HL7 Code "laboratory"  |
|Observation.code | Kodierung der Observation, weiterführende Constraints in Kinderprofilen|
|Observation.subject | Referenz zu Patient (erbt von Modul Person der MII https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient)|
|Observation.effective[x] | Klinisch relevanter Zeitpunkt /-periode für die Beobachtung, meist Zeit der Probenentnahme |
|Observation.bodySite | Körperstelle, an der die Beobachtung vorgenommen wird, Must-support, jedoch optional |
|Observation.method | kodierte Methode, die zur Beobachtung genutzt wurde |
|Observation.specimen | Referenz zur Probe, an der die Beobachtung erfolgte |
|Observation.hasMember | zum Untersuchungs-/Beobachtungspanel zugehörige Beobachtung(en) / QuestionnaireResponse|
|Observation.derivedFrom | Referenz zu zugehörigen Resourcen, von denen die Beobachtung abgeleitet wurde  |

------------------------------------
### Referenz zum Logical Model
| FHIR-Element | Logisches Datenmodell |
|--|--|
|Observation.id | Beobachtungsberichtabschnitt.id |
|Observation.text | Beobachtungsberichtabschnitt.Text |
|Observation.meta | Beobachtungsberichtabschnitt.meta |
|Observation.identifier | Beobachtungsberichtabschnitt.Identifikation |
|Observation.basedOn | Untersuchungsauftrag |
|Observation.status | Beobachtungsberichtabschnitt.Status|
|Observation.category | Beobachtungsberichtabschnitt.Kategorie |
|Observation.code | Beobachtungsberichtabschnitt.Code |
|Observation.subject |Beobachtungsberichtabschnitt.Patient |
|Observation.effective | Beobachtungsberichtabschnitt.Befundzeit |
|Observation.issued | Beobachtungsberichtabschnitt.Datum |
|Observation.performer |Beobachtungsberichtabschnitt.Durchführender (.Autor, .Informant) |
|Observation.note | Beobachtungsberichtabschnitt.Kommentar |
|Observation.method | Beobachtungsberichtabschnitt.Methode |
|Observation.specimen | Beobachtungsberichtabschnitt.Probe |
|Observation.hasMember | Beobachtungsberichtabschnitt.Unterbeobachtung |
|Observation.derivedFrom |Beobachtungsberichtabschnitt.EingebettetesBild |
|Observation.component |Beobachtungsberichtabschnitt.Unterbeobachtung |

------------------------------------------------------------------
