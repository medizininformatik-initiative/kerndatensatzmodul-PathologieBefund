// -------------------------
// DiagnosticReport
// -------------------------
Profile: PathologyReport
Parent: DiagnosticReport
Id: PathologyReport
Title: "PathologyReport"
Description: "Defines the general pathology report structure for German hospitals with the defined terms by the Medical Informatics Initiative"
* insert RuleSet1

// ID
* id MS
// Identifikator
* identifier 1.. MS
// Identifier Slice in Set-ID und Versionsnummer
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "$this"
* identifier ^slicing.rules = #open
* identifier contains Set-ID 1.. MS
* identifier[Set-ID].value 1.. MS
* identifier[Set-ID].system 1.. MS
* identifier[Set-ID].type 1.. MS
* identifier[Set-ID].type = $v2-0203#ACSN "Accession ID"

// Versionsnummer
* meta MS
* meta.versionId MS
// Weitere MS Elemente aus Metadata
* meta.source MS
* meta.profile MS 
// Referenz zum Untersuchungsauftrag
* basedOn 1.. MS
* basedOn only Reference(PathologyServiceRequest)
* basedOn ^short = "Reference to respective PathologyServiceRequest"
// Status
* status MS

// Code
* code MS
* code ^short = "Pathology report code"
  * coding = $LOINC#60568-3 "Pathology Synoptic report"
    * system 1.. MS 
    * system ^fixedUri = $LOINC
    * code 1.. MS
    * code ^fixedCode = #60568-3
    * display MS

// Referenz zu Patient:in
* subject 1.. MS
* subject only Reference(Patient)
// Referenz zu Fall 
* encounter MS
// Dokumentationsdatum
* effective[x] MS
* effective[x] only dateTime
//* issued MS // nur fuer maschinell erstellte Zeitstempel, fuer manuell eingetragene Zeiten effective[x] dateTime nutzen
// Autor 
* performer 1.. MS
// Referenz zur Probe
* specimen 1.. MS
// Beobachtungsabschnitte bzw. Beobachtungen
* result 1.. MS
* result ^slicing.discriminator[+].type = #type
* result ^slicing.discriminator[=].path = "$this"
* result ^slicing.rules = #open
* result contains 
      intraoperative-observation 0..* MS
      and macroscopic-observation 0..* MS
      and microscopic-observation 0..* MS
      and additional-observation 0..* MS
      and diagnostic-conclusion 1..* MS
* result[intraoperative-observation] only Reference(IntraoperativeObservation)
* result[intraoperative-observation] ^short = "Reference to intraoperative Observations"
* result[macroscopic-observation] only Reference(MacroscopicObservation)
* result[macroscopic-observation] ^short = "Reference to macroscopic Observations"
* result[microscopic-observation] only Reference(MicroscopicObservation)
* result[microscopic-observation] ^short = "Reference to microscopic Observations"
* result[additional-observation] only Reference(PathologyFinding)     
* result[additional-observation] ^short = "Reference to any additional Observation"
* result[diagnostic-conclusion] only Reference(DiagnosticConclusion) 
* result[diagnostic-conclusion] ^short = "Reference to the 'Diagnostic Conclusion' grouper(s)"
// Referenz zu angehaengten Bildern inkl. Informationen dazu (Bsp. DICOM) 
* imagingStudy MS
* imagingStudy ^short = "Reference to attached DICOM images"
// Referenz zu angehaengten Bildern
* media MS
* media ^short = "Reference to single attached images"
  * comment MS
  * link MS
  * link only Reference(AttachedImage)
// zugehoeriges Dokument
* presentedForm MS
// Diagnostische Schlussfolgerung
* conclusion 1.. MS
* conclusionCode MS

// -------------------------
// Composition
// -------------------------
Profile: PathologyComposition
Parent: Composition
Id: PathologyComposition
Title: "PathologyComposition"
Description: "Composition als Template für Pathologiebefundbericht als FHIR Dokument"
* insert RuleSet1
* status MS
* type MS
* type = $LOINC#11526-1 "Pathology study"
* type ^short = "Type fixed to 'Pathology study'"
  * coding MS
    * system 1.. MS
    * system ^fixedUri = $LOINC
    * code 1.. MS
    * code ^fixedCode = #11526-1
    * display MS 
// Titel
* title 1.. MS
// Autor
* author 1.. MS
* author only Reference(Practitioner or Organization)
* author ^short = "Author can only be of type Practitioner or Organization"
// Legaler Authentikator 
* attester 1.. MS
* attester ^short = "Legal attester"
  * mode 1.. MS
  * mode ^fixedCode = #legal
  * mode ^short = "Mode fixed to 'legal'"
  * party 1.. MS
  * party only Reference(Practitioner or Organization)
* custodian MS
* date MS
* subject 1.. MS
* subject only Reference(Patient)
// Entry referenziert nur auf PathologyReport
* section 1.. MS
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "$this"
* section ^slicing.rules = #open
* section contains diagnostic-report 1..1 MS
* section[diagnostic-report]
  * code 1.. MS
  * code = $LOINC#22637-3 "Pathology report diagnosis"
    * coding 1.. MS
      * system 1.. MS
      * code 1.. MS
  * entry 1.. MS
  * entry only Reference (PathologyReport)
  * text MS
  * title 1.. MS 
  * title ^fixedString = "Diagnostische Schlussfolgerung"

//--------------------------------
// Example
//--------------------------------
Instance: PathologyReportExample
InstanceOf: PathologyReport
Usage: #example
Title: "PathologyReportExample"
Description: "Exemplarischer Befundbericht - 3"
* identifier[+].value = "H2021.15692"
* identifier[=].system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* identifier[=].type = $v2-0203#ACSN "Accession ID"
* basedOn = Reference(PathologyRequestExample)
* status = #final
* code.coding = $LOINC#60568-3 "Pathology Synoptic report"
* subject.reference = "Patient/12345"
* performer.reference = "Practitioner/2346545"
* specimen.reference = "Specimen/87689"
* encounter.reference = "Encounter/12345"
* result[+] = Reference(MacroTumorSizeDim1)
* result[+] = Reference(MacroTumorSizeDim2)
* result[+] = Reference(MacroTumorSizeDim3)
* result[+] = Reference(DiagnosticConclusion1)
* conclusion = "Hemicolektomieresektat links mit einem differenzierten, partiell muzinösen (ca. 30%), fokal zirkumferentiell wachsenden.."
* conclusionCode = $SCT#399393006 
* effectiveDateTime = "2021-06-01"
* media.comment = "Ein 25cm langes, im Umfang bis zu 2,5cm messendes Colonresektat. Das Präperat wurde von ventral und dorsal fotodokumentiert"
* media.link = Reference(ImageExample)

Instance: PathologyCompositionExample
InstanceOf: PathologyComposition
Usage: #example
Title: "PathologyCompositionExample"
Description: "tbd"
* status = #final
* type = $LOINC#11526-1 "Pathology study"
* subject.reference = "Patient/34545"
* date = "2021-06-08"
* author[+].reference = "Practitioner/45756"
* title = "Pathologie Befundbericht"
* attester[+].mode = #legal
* attester[=].party.reference = "Practitioner/765879"
* section[+].title = "Diagnostische Schlussfolgerung"
* section[=].code = $LOINC#22637-3 "Pathology report diagnosis"
* section[=].entry = Reference(PathologyReportExample)
