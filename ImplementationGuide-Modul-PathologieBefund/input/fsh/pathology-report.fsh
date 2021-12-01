// -------------------------
// DiagnosticReport
// -------------------------
Profile: PathologyReport
Parent: DiagnosticReport
Id: PathologyReport
Title: "PathologyReport"
Description: "Defines the general pathology report structure for German hospitals with the defined terms by the Medical Informatics Initiative"

// set to draft
* ^status = #draft

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

* identifier[Set-ID].type.coding ^slicing.discriminator[0].type = #pattern
* identifier[Set-ID].type.coding ^slicing.discriminator[0].path = "$this"
* identifier[Set-ID].type.coding ^slicing.rules = #open
* identifier[Set-ID].type.coding contains ascn-type 1..1 MS
* identifier[Set-ID].type.coding[ascn-type] = $v2-0203#ACSN "Accession ID"
* identifier[Set-ID].type.coding[ascn-type].system 1..1 MS
* identifier[Set-ID].type.coding[ascn-type].code 1..1 MS
* identifier[Set-ID].type.coding[ascn-type].display MS

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
// Referenz zu angehaengten Bildern inkl. Informationen dazu (Bsp. DICOM) 
// TODO: kann auch raus wenn DICOM wirklich nicht notwendig
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
* conclusionCode 1.. MS

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
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "$this"
* section ^slicing.rules = #open
* section contains 
    clinical-information 0..1 MS 
    and procedure-steps 0..1 MS 
    and intraoperative-observation 0..1 MS 
    and macroscopic-observation 0..1 MS 
    and microscopic-observation 0..1 MS 
    and additional-observation 0..* MS
    and diagnostic-conclusion 1..1 MS
// Clinical Information - Klinische Informationen
* section[clinical-information]
  * code 1.. MS
  * code = $LOINC#22636-5 "Pathology report relevant history"
    * coding 1.. MS
      * system 1.. MS
      * code 1.. MS
  * entry 1.. MS
// Procedure Steps - Proben/Technische Bearbeitung
* section[procedure-steps]
  * code 1.. MS
  * code = $LOINC#46059-2 "Special treatments and procedures section"
    * coding 1.. MS
      * system 1.. MS
      * code 1.. MS
  * entry 1.. MS
// Intraoperative Observation - Intraoperative Begutachtung
* section[intraoperative-observation]
  * code 1.. MS
  * code = $LOINC#83321-0 "Pathology report intraoperative observation in Specimen Document"
    * coding 1.. MS
      * system 1.. MS
      * code 1.. MS
  // Referenz auf Observation
  * entry 1.. MS
  * entry only Reference(IntraoperativeObservation)
  * text 1.. MS
  * title 1.. MS
  * title = "Intraoperative Begutachtung"
// Macroscopic Observation - Makroskopische Beurteilung
* section[macroscopic-observation]
  * code 1.. MS
  * code = $LOINC#22634-0 "Pathology report gross observation"
    * coding 1.. MS
      * system 1.. MS
      * code 1.. MS
  * entry 1.. MS
  * entry only Reference(MacroscopicObservation)
  * text 1.. MS
  * title 1.. MS
  * title = "Makroskopische Beurteilung"
// Microscopic Observation - Mikroskopische Beurteilung
* section[microscopic-observation]
  * code 1.. MS
  * code = $LOINC#22635-7 "Pathology report microscopic observation"
    * coding 1.. MS
      * system 1.. MS
      * code 1.. MS
  * entry 1.. MS
  * entry only Reference(MicroscopicObservation)
  * text 1.. MS
  * title 1.. MS
  * title = "Mikroskopische Beurteilung"
// Additional Specified Observation - Zusaetzliche spezifizierte Beobachtung
* section[additional-observation]
  * code 1.. MS 
    * coding 1.. MS
    * coding from $LOINC (extensible)
      * system 1.. MS
      * system = $LOINC
      * code 1.. MS
  * entry 1.. MS
  * entry only Reference(GenericPathologyFinding)
  * text 1.. MS
  * title 1.. MS
  * title = "Zusätzliche spezifizierte Beobachtung"
// Diagnostic Conclusion - Diagnostische Schlussfolgerung
* section[diagnostic-conclusion]
  * code 1.. MS
  * code = $LOINC#22637-3 "Pathology report diagnosis"
    * coding 1.. MS
      * system 1.. MS
      * code 1.. MS
  * entry 1.. MS
  * entry only Reference (PathologyReport)
  * text 1.. MS
  * title 1.. MS 
  * title = "Diagnostische Schlussfolgerung"
