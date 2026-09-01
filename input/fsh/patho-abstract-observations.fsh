//-----------------------------------------
// MII_PR_Patho_Base_Observation
//-----------------------------------------
// Entweder neue Base Observation profilieren oder wenn passend Laboruntersuchung aus Modul Labor als Base Observation nehmen
Profile: MII_PR_Patho_Base_Observation
Parent: Observation
Id: mii-pr-patho-base-observation
Title: "MII PR Patho Base Observation"
Description: """
Dieses abstrakte Profil sammelt alle gemeinsamen Profilierungsanforderungen der Pathologie Observations und dient als Basis für alle anderen Observation-Profile in diesem Modul. Als abstraktes Profil ist dieses nicht instanziierbar.
"""
* insert PR_CS_VS_Version
* insert Publisher
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[+].url = "lang"
* ^description.extension[=].extension[=].valueCode = #en-US
* ^description.extension[=].extension[+].url = "content"
* ^description.extension[=].extension[=].valueString = """
This abstract profile collects all common profiling requirements of the pathology observations and serves as the base for all other observation profiles in this module. As an abstract profile, it is not instantiable.
"""
* ^abstract = true
* id MS
* meta.lastUpdated MS
* meta.profile MS
* identifier MS
* basedOn MS 
* basedOn only Reference(ServiceRequest)
* status MS
* category 1.. MS 
  * coding 1.. MS
    * system 1.. MS 
    * code 1.. MS
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[0].path = "$this"
* category ^slicing.rules = #open
* category contains laboratory-category 1..1 MS
* category[laboratory-category] = $cs-obs-category#laboratory
// Code
* code MS
  * coding from mii-vs-patho-all-loinc (preferred)
  * coding 1.. MS
    * code 1.. MS
    * system 1.. MS
// Referenz - Patient:in
* subject MS
* subject only Reference(Patient)
// Befundzeit
* effective[x] only dateTime
* effectiveDateTime MS
// Koerperstelle
* bodySite MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 0..1 MS
  * coding[sct] from $bio-bodystructure (required)
    * ^patternCoding.system = $SCT
    * system 1.. MS
// Untersuchungsmethode
* method MS
// Referenz - Probe
* specimen MS
* derivedFrom MS
* derivedFrom ^slicing.discriminator.type = #type
* derivedFrom ^slicing.discriminator.path = "$this.resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.ordered = false
* derivedFrom contains attached-image 0..* MS 
                   and dicom-image 0..* MS
* derivedFrom[attached-image] only Reference(mii-pr-patho-attached-image)
* derivedFrom[dicom-image] only Reference(ImagingStudy)
* hasMember MS
// Components fuer die Erfassung der Ergebnisse
* component 0.. 
  * code MS
  * value[x] only string or Quantity or CodeableConcept or Ratio
  * dataAbsentReason MS

//--------------------------------------------
// Grouper
//--------------------------------------------
Profile: MII_PR_Patho_Section_Grouper
Parent: mii-pr-patho-base-observation
Id: mii-pr-patho-section-grouper
Title: "MII PR Patho Section Grouper"
Description: """
Beim Profil **MII PR Patho Section Grouper** handelt es sich um ein abstraktes Profil, welches die Basis für die pathologischen Grouper Profile festlegt, jedoch nicht instanziiert werden soll. Die Grouper-Profile stellen als `DiagnosticReport.result:[grouper-name]` für einen [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html) den jeweiligen Beobachtungsberichtsabschnitt (entspr. einer CDA-Section) dar und fungieren als Organizer für diese Gruppierungen von [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).

Hierbei handelt es sich um Untersuchungsergebnisse, die nach inhaltlichen und/oder formalen Erfordernissen zu logischen Gruppen ("Panels") zusammengefast werden müssen, z.B. die jeweiligen Beobachtungen an jeweils definierten Proben, z.B. den verschiedenen eingesandten Präparaten. Dieses spezielle Grouper-Observation-Element ist allen anderen Observation-Elementen voranzustellen, welche dann als `hasMember`-Referenzen zu [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) eingebunden werden. [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) Observations wiederum referenzieren ihre "Eltern-Beobachtungen" via `derivedFrom`-Referenzen zu SDC QuestionnaireResponses und/oder zu den jeweiligen Grouper Observations.

Als “Panels” von Einzeluntersuchungen sind die folgenden Beobachtungsberichtabschnitte definiert:

- [MII PR Patho Intraoperative Grouper](StructureDefinition-mii-pr-patho-intraoperative-grouper.html)
- [MII PR Patho Macroscopic Grouper](StructureDefinition-mii-pr-patho-macroscopic-grouper.html)
- [MII PR Patho Microscopic Grouper](StructureDefinition-mii-pr-patho-microscopic-grouper.html)
- [MII PR Patho Additional Specified Grouper](StructureDefinition-mii-pr-patho-additional-specified-grouper.html)
- [MII PR Patho Diagnostic Conclusion Grouper](StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.html)

Sie werden in Form von `DiagnosticReport.result:[grouper-name]` mit Grouper-Funktion im [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html) organisiert und sind damit den "Sections" in CDA äquivalent. Sie zeichnen sich dadurch aus, dass sie nur einen `Observation.code`, aber keinen `Observation.value` haben. Sie gruppieren die “Panel”-Beobachtungen mithilfe der `hasMember`- und/oder `derivedFrom`-Referenzen oder als `Observation.component`.

Der Text (Narrative) dieser "Sections" wird im `Observation.text`-Element dargestellt. Ein vollständiges Beispiel für die Nutzung von Narrativen in Grouper-Observations findet sich im [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html).

Diese Grouper haben die Observation.codes
- [83321-0](https://loinc.org/83321-0/) (Pathology report intraoperative observation in Specimen Document)
- [22634-0](https://loinc.org/22634-0/) (Pathology report gross observation)
- [22635-7](https://loinc.org/22635-7/) (Pathology report microscopic observation)
- [100969-5](https://loinc.org/100969-5/) (Pathology report additional specified observation)
- [22637-3](https://loinc.org/22637-3/) (Pathology report diagnosis)

Falls ein Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, erfolgt die Zuordnung der MII PR Patho Befunde zu diesen verschiedenen Proben über die Probenreferenzen dieser MII PR Patho Befunde, und zwar hinsichtlich der Referenzen die „Parts“ betreffend.

Ein Grouper für "Clinical Information", [22636-5](https://loinc.org/22636-5/) (Pathology report relevant history), ist nicht notwendig, da die hierzu gehörenden Informationen im [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.html) unter `.supportingInfo` vorhanden sind.

**Sonderfall:**
- Ein [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) als `hasMember`-Konstrukt innerhalb eines der o.g. Grouper zur Gruppierung von medizinischen inhaltlichen Problemen (entspricht CDA-Problem Organizer), z.B. beim Vorhandensein von zwei unterschiedlichen Tumorentitäten in einer Probe, sollte mit dem LOINC-Code [75326-9, Problem](https://loinc.org/75326-9/) gebildet werden, ein `Observation.value` wird nicht benötigt, als `Observation.component` wird im Code das Gruppierungsproblem dargestellt (z.B. ein ICD-Code ([76540-4, Pathology diagnosis ICD code](https://loinc.org/76540-4/)) für eine spezifische Entität, ein Specimen-Code für eine spezifische Probe ([85298-8, Body structure included in specimen](https://loinc.org/85298-8/)), etc.), im Value der konkrete Wert. Die eigentlichen Untersuchungsergebnisse zu diesem inhaltlichen Problem werden dann mittels des `hasMember`-Konstrukts als **MII PR Patho Findings** dargestellt.
"""
* insert PR_CS_VS_Version
* insert Publisher
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[+].url = "lang"
* ^description.extension[=].extension[=].valueCode = #en-US
* ^description.extension[=].extension[+].url = "content"
* ^description.extension[=].extension[=].valueString = """
The **MII PR Patho Section Grouper** profile is an abstract profile that defines the basis for the pathological grouper profiles but is not intended to be instantiated. As `DiagnosticReport.result:[grouper-name]` for a [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html), the grouper profiles represent the respective observation report section (corresponding to a CDA section) and act as an organizer for these groupings of [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).

These are examination results that, according to content-related and/or formal requirements, must be combined into logical groups ("panels"), e.g. the respective observations on specifically defined specimens, e.g. the various submitted preparations. This special grouper observation element is to be placed before all other observation elements, which are then included as `hasMember` references to [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html). [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) observations in turn reference their "parent observations" via `derivedFrom` references to SDC QuestionnaireResponses and/or to the respective grouper observations.

The following observation report sections are defined as “panels” of individual examinations:

- [MII PR Patho Intraoperative Grouper](StructureDefinition-mii-pr-patho-intraoperative-grouper.html)
- [MII PR Patho Macroscopic Grouper](StructureDefinition-mii-pr-patho-macroscopic-grouper.html)
- [MII PR Patho Microscopic Grouper](StructureDefinition-mii-pr-patho-microscopic-grouper.html)
- [MII PR Patho Additional Specified Grouper](StructureDefinition-mii-pr-patho-additional-specified-grouper.html)
- [MII PR Patho Diagnostic Conclusion Grouper](StructureDefinition-mii-pr-patho-diagnostic-conclusion-grouper.html)

They are organized in the form of `DiagnosticReport.result:[grouper-name]` with grouper function in the [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html) and are thus equivalent to the "sections" in CDA. They are characterized by the fact that they only have an `Observation.code`, but no `Observation.value`. They group the “panel” observations using the `hasMember` and/or `derivedFrom` references or as `Observation.component`.

The text (narrative) of these "sections" is represented in the `Observation.text` element. A complete example of the use of narratives in grouper observations can be found in the [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html).

These groupers have the Observation.codes
- [83321-0](https://loinc.org/83321-0/) (Pathology report intraoperative observation in Specimen Document)
- [22634-0](https://loinc.org/22634-0/) (Pathology report gross observation)
- [22635-7](https://loinc.org/22635-7/) (Pathology report microscopic observation)
- [100969-5](https://loinc.org/100969-5/) (Pathology report additional specified observation)
- [22637-3](https://loinc.org/22637-3/) (Pathology report diagnosis)

If an observation report section contains several submitted preparations (specimens), the MII PR Patho findings are assigned to these various specimens via the specimen references of these MII PR Patho findings, specifically with regard to the references concerning the “parts”.

A grouper for "Clinical Information", [22636-5](https://loinc.org/22636-5/) (Pathology report relevant history), is not necessary, since the information belonging to it is available in the [MII PR Patho Service Request](StructureDefinition-mii-pr-patho-service-request.html) under `.supportingInfo`.

**Special case:**
- A [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) as a `hasMember` construct within one of the above-mentioned groupers for grouping medical content-related problems (corresponding to a CDA problem organizer), e.g. when two different tumor entities are present in one specimen, should be formed with the LOINC code [75326-9, Problem](https://loinc.org/75326-9/); an `Observation.value` is not required, the grouping problem is represented in the code as `Observation.component` (e.g. an ICD code ([76540-4, Pathology diagnosis ICD code](https://loinc.org/76540-4/)) for a specific entity, a specimen code for a specific specimen ([85298-8, Body structure included in specimen](https://loinc.org/85298-8/)), etc.), and the concrete value in the value. The actual examination results for this content-related problem are then represented by means of the `hasMember` construct as **MII PR Patho Findings**.
"""
* ^abstract = true
* text MS
* hasMember ^slicing.discriminator.type = #type
* hasMember ^slicing.discriminator.path = "$this.resolve()"
* hasMember ^slicing.rules = #open
* hasMember ^slicing.description = "Reference to pathology findings"
* hasMember ^slicing.ordered = false
* hasMember contains pathology-finding 0..* MS
* hasMember[pathology-finding] only Reference(mii-pr-patho-finding)

