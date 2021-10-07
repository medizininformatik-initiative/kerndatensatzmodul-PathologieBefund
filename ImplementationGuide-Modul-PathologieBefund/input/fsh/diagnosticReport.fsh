// Profile definition
Profile: PathologieBefundbericht
Parent: DiagnosticReport
Id: PathologieBefundbericht
Title: "Pathologie Befundbericht"
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
* identifier[Set-ID].type.coding contains vn-type 1..1 MS
* identifier[Set-ID].type.coding[vn-type] = $v2-0203#VN "Visit Number"
* identifier[Set-ID].type.coding[vn-type].system 1..1 MS
* identifier[Set-ID].type.coding[vn-type].code 1..1 MS
* identifier[Set-ID].type.coding[vn-type].display MS

// Versionsnummer
* meta MS
* meta.versionId MS
// Weitere MS Elemente aus Metadata
* meta.source MS
* meta.profile MS 
// Referenz zum Untersuchungsauftrag
* basedOn 1.. MS
* basedOn only Reference(ServiceRequest)
// Status
* status MS
// Code
* code MS
// define slice for pathology report code
* code ^slicing.discriminator[0].type = #pattern
* code ^slicing.discriminator[0].path = "$this"
* code ^slicing.rules = #open

* code contains pathology-report 1..1 MS
* code[pathology-report].coding MS
* code[pathology-report].coding.system MS
* code[pathology-report].coding.code MS
* code[pathology-report].coding.display MS
* code[pathology-report] = $LOINC#60568-3 "Pathology Synoptic report" 

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
* imagingStudy MS
// Referenz zu angehaengten Bildern
* media MS
* media.comment MS
* media.link MS
// zugehoeriges Dokument
* presentedForm MS

// Example