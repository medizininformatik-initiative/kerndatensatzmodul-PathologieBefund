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
/*
* identifier[Set-ID].type.coding ^slicing.discriminator[0].type = #pattern
* identifier[Set-ID].type.coding ^slicing.discriminator[0].path = "$this"
* identifier[Set-ID].type.coding ^slicing.rules = #open
* identifier[Set-ID].type.coding contains ascn-type 1..1 MS
* identifier[Set-ID].type.coding[ascn-type] = $v2-0203#ACSN "Accession ID"
* identifier[Set-ID].type.coding[ascn-type].system 1..1 MS
* identifier[Set-ID].type.coding[ascn-type].code 1..1 MS
* identifier[Set-ID].type.coding[ascn-type].display MS
*/
// Versionsnummer
* meta MS
* meta.versionId MS
// Weitere MS Elemente aus Metadata
* meta.source MS
* meta.profile MS 
// Referenz zum Untersuchungsauftrag
* basedOn 1.. MS
* basedOn only Reference(PathologyServiceRequest)
// Status
* status MS

// Code
* code MS
// define slice for pathology report code
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains pathology-report 1..1 MS
  * coding[pathology-report] MS
  * coding[pathology-report] = $LOINC#60568-3 "Pathology Synoptic report" 
    * system MS
    * code MS
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
// TODO: kann der Autor auch eine Organisation sein oder handelt es sich hierbei immer um einen Practitioner? 
* performer 1.. MS
// Referenz zur Probe
* specimen 1.. MS
// Beobachtungsabschnitte bzw. Beobachtungen
* result 1.. MS
* result ^slicing.discriminator[+].type = #type
* result ^slicing.discriminator[=].path = "$this"
* result ^slicing.rules = #open
* result contains 
      intraoperative-observation 0..1 MS
      and macroscopic-observation 0..1 MS
      and microscopic-observation 0..1 MS
      and additional-observation 0..* MS
* result[intraoperative-observation] only Reference(IntraoperativeObservation)
* result[macroscopic-observation] only Reference(MacroscopicObservation)
* result[microscopic-observation] only Reference(MicroscopicObservation)
* result[additional-observation] only Reference(PathologyFinding)      
// Referenz zu angehaengten Bildern inkl. Informationen dazu (Bsp. DICOM) 
* imagingStudy MS
// Referenz zu angehaengten Bildern
// TODO: Slicing fuer einzelne Bildtypen notwendig? Makro, Mikro, etc.
* media MS
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
// Titel
* title 1.. MS
// Autor
* author 1.. MS
* author only Reference(Practitioner or Organization)
// Legaler Authentikator 
* attester 1.. MS
  * mode MS
  * mode = #legal
  * party 1.. MS
  * party only Reference(Practitioner or Organization)
* custodian MS
* date MS
* subject 1.. MS
* subject only Reference(Patient)

// Entry referenziert nur auf die diagnostische Schlussfolgerung (PathologyReport)
* section 1.. MS
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "$this"
* section ^slicing.rules = #open
* section contains diagnostic-conclusion 1..1 MS
* section[diagnostic-conclusion]
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

// Example
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
* subject.reference = "Patient/12345"
* performer.reference = "Practitioner/2346545"
* specimen.reference = "Specimen/87689"
* encounter.reference = "Encounter/12345"
* result[+] = Reference(MacroExample)
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
