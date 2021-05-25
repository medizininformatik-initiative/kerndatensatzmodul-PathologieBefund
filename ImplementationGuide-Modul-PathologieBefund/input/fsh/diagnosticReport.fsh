// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

// Aliases
Alias: LOINC = http://loinc.org/

// Profile definition
Profile: PathologieBefundbericht
Parent: DiagnosticReport
Id: PathologieBefundbericht
Title: "Pathologie Befundbericht"
Description: "tbd"

// set to draft
* ^status = #draft

// ID
* id MS
// Identifikator
* identifier 1.. MS
// Versionsnummer
* meta MS
* meta.versionId MS
// Referenz zum Untersuchungsauftrag
* basedOn 1.. MS
* basedOn only Reference(ServiceRequest)
// Status
* status MS
// Code
* code MS
* code.coding.system MS
* code.coding.code MS
* code.coding.display MS
* code.coding = LOINC#60568-3 "Pathology Synoptic report"
//LOINC#60568-3 "Pathology Synoptic report"
// Referenz zu Patient*in
* subject 1.. MS
* subject only Reference(Patient)
// Referenz zu Fall (z.B. ueber Aufnahmenummer/Fallnummer)
* encounter MS
// Dokumentationsdatum
* effective[x] MS
* effective[x] only dateTime
//* issued MS // nur fuer maschinell erstellte Zeitstempel, fuer manuell eingetragene Zeiten effective[x] dateTime nutzen
// Autor 
// TODO: kann der Autor auch eine Organisation sein oder handelt es sich hierbei immer um einen Practitioner? 
* performer 1.. MS
// Referenz zu Probe oder Praeparat
* specimen 1.. MS
// Beobachtungsabschnitte bzw. Beobachtungen
* result 1.. MS
// Referenz zu angehaengten Bildern inkl. Informationen dazu (Bsp. DICOM)
* imagingStudy MS
// Referenz zu angehaengten Bildern
* media MS
// zugehoeriges Dokument
* presentedForm MS

// Example