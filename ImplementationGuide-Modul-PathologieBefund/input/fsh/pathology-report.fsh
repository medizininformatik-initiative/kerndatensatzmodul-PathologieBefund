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
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this.type.coding"
  * ^slicing.rules = #open
* identifier contains Set-ID 1..1 MS
* identifier[Set-ID] 
  * type 1.. MS
  * type.coding ^patternCoding = $v2-0203#ACSN "Accession ID"
  * value 1.. MS
  * system 1.. MS
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
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains pathology-report 1..1 MS
  * coding[pathology-report] ^patternCoding = $LOINC#60568-3 "Pathology Synoptic report"
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
// * result only Reference(PathologyGrouper)
* result ^slicing.discriminator[+].type = #value
* result ^slicing.discriminator[=].path = "resolve().code"
* result ^slicing.rules = #closed
* result contains 
      intraoperative-grouper 0..* MS
      and macroscopic-grouper 0..* MS
      and microscopic-grouper 0..* MS
      and additional-observations 0..* MS
      and diagnostic-conclusion 1..* MS
* result[intraoperative-grouper] only Reference(IntraoperativeGrouper)
  * reference 1.. MS
  * ^short = "Reference to intraoperative Observations"
* result[macroscopic-grouper] only Reference(MacroscopicGrouper)
  * reference 1.. MS
  * ^short = "Reference to macroscopic Observations"
* result[microscopic-grouper] only Reference(MicroscopicGrouper)
  * reference 1.. MS
  * ^short = "Reference to microscopic Observations"
* result[additional-observations] only Reference(AdditionalSpecifiedGrouper)     
  * reference 1.. MS
  * ^short = "Reference to any additional Observation"
* result[diagnostic-conclusion] only Reference(DiagnosticConclusionGrouper) 
  * reference 1.. MS
  * ^short = "Reference to the 'Diagnostic Conclusion' grouper(s)"
// Referenz zu angehaengten Bildern inkl. Informationen dazu (Bsp. DICOM) 
* imagingStudy MS
// Referenz zu angehaengten Bildern
* media MS
* media ^short = "Reference to single attached images"
  * comment MS
  * link MS
  * link only Reference(AttachedImage)
// zugehoeriges Dokument
* presentedForm MS
// Diagnostische Schlussfolgerung
* conclusion MS
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
  * ^short = "Type fixed to 'Pathology study'"
  * coding MS
    * ^patternCoding = $LOINC#11526-1 "Pathology study"
    * system 1.. MS
    * code 1.. MS
    * display MS 
* category MS
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
* custodian 1.. MS
* date MS
* subject 1.. MS
* subject only Reference(Patient)
* event 1.. MS
// Entry referenziert nur auf PathologyReport
* section 1.. MS
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "$this.code.coding"
* section ^slicing.rules = #open
* section contains diagnostic-report 1..1 MS
* section[diagnostic-report]
  * code 1.. MS
    * coding 1.. MS
    * coding ^patternCoding = $LOINC#60567-5 "Comprehensive pathology report panel"
  * entry 1..1 MS
  * entry only Reference (PathologyReport)
  * text 0..0
  * title 1.. MS 
  * title ^fixedString = "Diagnostic Report"

//--------------------------------
// Example
//--------------------------------
Instance: PathologyReportExample
InstanceOf: PathologyReport
Usage: #example
Title: "PathologyReportExample"
Description: "Example for PathologyReport"
* identifier[+].value = "E21.12345"
* identifier[=].system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* identifier[=].type = $v2-0203#ACSN "Accession ID"
// * identifier[=].type = $LOINC#11526-1
* basedOn = Reference(PathologyRequestExample)
* status = #final
* code.coding = $LOINC#60568-3 "Pathology Synoptic report"
* subject.reference = "Patient/12345"
* performer.reference = "Practitioner/2346545"
* specimen.reference = "Specimen/87689"
* encounter.reference = "Encounter/12345"
* result[+] = Reference(MacroGrouperA)
* result[+] = Reference(MacroGrouperB)
* result[+] = Reference(MicroGrouperA)
* result[+] = Reference(DiagnosticConclusionGrouper)
* conclusion = "Mäßig differenziertes azinäres Adenokarzinom der Prostata, ISUP-Gradgruppe 2"
* conclusionCode = $SCT#399490008  
* effectiveDateTime = "2021-06-01"
// * issued = "2021-06-02T13:28:17.239+02:00"
* media.link = Reference(ImageExample)
* media.comment = "HE-Schnitt einer Prostatastanze, infiltriert durch Karzinomverbände, fotodokumentiert"

Instance: PathologyCompositionExample
InstanceOf: PathologyComposition
Usage: #example
Title: "PathologyCompositionExample"
Description: "Example for a PathologyComposition"
* status = #final
* type = $LOINC#11526-1 "Pathology study"
* subject.reference = "Patient/34545"
* date = "2021-06-08"
* author[+].reference = "Practitioner/45756"
* title = "Pathologie Befundbericht"
* custodian.reference = "Organization/12345"
* attester[+].mode = #legal
* attester[=].party.reference = "Practitioner/765879"
* event.period.start = "2021-06-05"
* event.period.end = "2021-06-08"
* section[+].title = "Diagnostic Report"
* section[=].code = $LOINC#60567-5 "Comprehensive pathology report panel"
* section[=].entry = Reference(PathologyReportExample)
