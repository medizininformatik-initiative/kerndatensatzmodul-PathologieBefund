---
topic: PathoSectionGrouper
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-section-grouper
---

## {{page-title}}

### Description
The **MII PR Patho Section Grouper** profile is an abstract profile that defines the basis for the pathological grouper profiles, but should not be instantiated. The grouper profiles represent the respective observation report section (corresponding to a CDA section) for an **MII PR Patho Report** as `DiagnosticReport.result:<grouper-name>` and act as an organizer for these groupings of **MII PR Patho Finding**.

These are test results that must be grouped into logical groups ("panels") based on formal requirements of a pathology report (see the observation report sections). This special grouper observation element must be placed above all other observation elements, which are then nested into this grouper as `hasMember` or `derivedFrom` references to **MII PR Patho Findings**.

As "panels" of individual examinations, the observation report sections
- **MII PR Patho Intraoperative Grouper**,
- **MII PR Patho Macroscopic Grouper**,
- **MII PR Patho Microscopic Grouper**,
- **MII PR Patho Additional Specified Grouper** and
- **MII PR Patho Diagnostic Conclusion Grouper** are organized in the form of `DiagnosticReport.result:<grouper-name>` with a grouper function in the **MII PR Patho Report** and are thus equivalent to the "Sections" in CDA. They are characterized by having only an `Observation.code` but no `Observation.value`. They group the "panel" observations using the `hasMember` and/or `derivedFrom` references or as an `Observation.component`.

The text (narrative) of these "Sections" is represented in the `Observation.text` element. It is also possible to use the FHIR Core Extensions [original Text](http://hl7.org/fhir/r4/extension-originaltext.html) or [narrative Link](http://hl7.org/fhir/r4/extension-narrativelink.html) to link the narrative with the structured part using HTML tags. For more information on the correct use of both extensions, see [here](http://hl7.org/fhir/r4/narrative.html#linking).

These groupers have the Observation.codes
- [83321-0](https://loinc.org/83321-0/) (Pathology report intraoperative observation in Specimen Document) 
- [22634-0](https://loinc.org/22634-0/) (Pathology report gross observation) 
- [22635-7](https://loinc.org/22635-7/) (Pathology report microscopic observation) 
- [100969-5](https://loinc.org/100969-5/) (Pathology report additional specified observation) | *Verlinkung wird erst mit dem nächsten LOINC Release funktionieren, da der Code erst im August 2022 angenommen wurde*
- [22637-3](https://loinc.org/22637-3/) (Pathology report diagnosis)  

If an observation report section contains multiple input specimens, there should be only one grouper present. The organisation of these MII PR Patho Findings according to the different samples is done by the specimen references concerning the "parts" of these findings.

A grouper for "Clinical Information," [22636-5](https://loinc.org/22636-5/) (Pathology report relevant history), is not necessary, as the relevant information is available in the **MII PR Patho Service Request** under `.supportingInfo`.

**Special case:**
A **MII PR Patho Finding** as a `hasMember` construct within one of the above-mentioned groupers for grouping medical content problems (corresponds to the CDA Problem Organizer), e.g., when two different tumor entities are present in a sample, should be created using the LOINC code [75326-9, Problem](https://loinc.org/75326-9/). An `Observation.value` is not required; the `Observation.component` represents the grouping problem in the code (e.g., an ICD code ([76540-4, Pathology diagnosis ICD code](https://loinc.org/76540-4/)) for a specific entity, a specimen code for a specific specimen ([85298-8, Body structure included in specimen](https://loinc.org/85298-8/)), etc.). The actual observation results for this content-related problem are then presented as **MII PR Patho Findings** using the `hasMember` construct.
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
### List of all Must-Support Data Elements
| FHIR Element | Explanation |
|--|--|
|Observation.id | Must-support, but optional |
|Observation.text | Not recommended, optional narrative of the observation, not identical to Observation.code.display or an Observation.valueString (see Composition.text and Composition.section.text)|
|Observation.meta.lastUpdated | Must-support, but optional|
|Observation.meta.profile | Must-support, but optional|
|Observation.identifier | Observation must be uniquely identifiable, no coding requirements, preference: derivation from entry number + section type|
|Observation.basedOn | Order that initiated the observation |
|Observation.status | Final & preliminary results are permitted |
|Observation.category | HL7 Code "laboratory"  |
|Observation.code | Coding of the observation, additional constraints in child profiles|
|Observation.subject | Reference to Patient (inherits from MII Person Module https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient)|
|Observation.effective[x] | Clinically relevant time point/period for the observation, usually time of specimen collection |
|Observation.bodySite | Body site where the observation is made, must-support, but optional |
|Observation.method | coded method used for the observation |
|Observation.specimen | Reference to the specimen on which the observation was made |
|Observation.hasMember | observation(s) / QuestionnaireResponse belonging to the examination/observation panel|
|Observation.derivedFrom | Reference to related resources from which the observation was derived  |

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
