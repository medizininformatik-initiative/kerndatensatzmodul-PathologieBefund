// FSH Definition fuer den pathologischen Untersuchungsauftrag

Alias:   SCT = http://snomed.info/sct
Alias:   LNC = http://loinc.org
Alias: v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203 

Profile: Untersuchungsauftrag
Parent: ServiceRequest
Id: Untersuchungsauftrag
Title: "Untersuchungsauftrag"
Description: "Auftrag zur Untersuchung einer Probe oder einer Gruppe von Proben."
* ^status = #draft

// Meta
* meta.profile MS
* meta.source MS

// Identifikation - Auftrags-ID: Auftrags-ID des Auftraggebers || Auftrags-ID des Auftragnehmers
* identifier 1.. MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "$this"
* identifier ^slicing.rules = #open

* identifier contains Auftraggeber-ID 0..1 MS
                    and Auftragnehmer-ID 0..1 MS

* identifier[Auftraggeber-ID].value 1.. MS
* identifier[Auftraggeber-ID].system 1.. MS
* identifier[Auftraggeber-ID].type 1.. MS
* identifier[Auftraggeber-ID].type.coding ^slicing.discriminator[0].type = #pattern
* identifier[Auftraggeber-ID].type.coding ^slicing.discriminator[0].path = "$this"
* identifier[Auftraggeber-ID].type.coding ^slicing.rules = #open
* identifier[Auftraggeber-ID].type.coding contains placer-type 1..1 MS
* identifier[Auftraggeber-ID].type.coding[placer-type] = v2-0203#PLAC "Placer Identifier"
* identifier[Auftraggeber-ID].type.coding[placer-type].system 1..1 MS
* identifier[Auftraggeber-ID].type.coding[placer-type].code 1..1 MS
* identifier[Auftraggeber-ID].type.coding[placer-type].display MS

* identifier[Auftragnehmer-ID].value 1.. MS
* identifier[Auftragnehmer-ID].system 1.. MS
* identifier[Auftragnehmer-ID].type 1.. MS
* identifier[Auftragnehmer-ID].type.coding ^slicing.discriminator[0].type = #pattern
* identifier[Auftragnehmer-ID].type.coding ^slicing.discriminator[0].path = "$this"
* identifier[Auftragnehmer-ID].type.coding ^slicing.rules = #open
* identifier[Auftragnehmer-ID].type.coding contains filler-type 1..1 MS
* identifier[Auftragnehmer-ID].type.coding[filler-type] = v2-0203#FILL "Filler"
* identifier[Auftragnehmer-ID].type.coding[filler-type].system 1..1 MS
* identifier[Auftragnehmer-ID].type.coding[filler-type].code 1..1 MS
* identifier[Auftragnehmer-ID].type.coding[filler-type].display MS


// Auftragsgruppen-ID
* requisition MS
* requisition.system 1.. MS
* requisition.value 1.. MS
* requisition.type 1.. MS

//Status
* status MS

// Referenz zur Probe
* specimen 1.. MS

// Referenz zum Patienten
* subject MS
* subject only Reference(Patient)

// Referenz für Einsender
* requester 1.. MS
* requester only Reference(Practitioner or Organization)

// Referenz zum Versorgungsstellenkontakt - ob die Referenz zum Versorgungsstellenkontakt gehen wird ist noch zu klaeren 
* encounter 1.. MS

//Referenz für Probenentnehmer
* performer MS
* performer only Reference(Practitioner)

// Referenz zu Klinischen Angaben?
* supportingInfo 0..*
// Resource muss noch nachgetragen werden
//* supportingInfo only Reference()

/*
Klinische Angaben - Welche Resource? Von anderem Modul? muss noch geklärt werden 
Was muss zum Einsender(Practitioner&Organization) alles hinzugefügt werden? Erstmal warten

// TODO: Referenz zu Probe(n)
* specimen 1.. MS

// Klinische Angaben (muss noch ueberprueft werden)
// Fragestellung & Ueberweisungsgrund
* reasonCode MS
* reasonCode ^slicing.discriminator[0].type = #pattern
* reasonCode ^slicing.discriminator[0].path = "$this"
* reasonCode ^slicing.rules = #open
* reasonCode contains Fragestellung 0.. MS 
                    and Ueberweisungsgrund 0..1 MS

// Diagnose kodiert
* reasonReference MS
* reasonReference only Reference(Condition)

// Anamnese - Annahme: besteht zum groessten Teil aus Observations
* supportingInfo MS
* supportingInfo only Reference(Observation)
*/

// Zusaetzliche Elemente

// category for searching purposes 
// 721966001 | Pathology order (record artifact) |
* category 1..1 MS 

* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[0].path = "$this"
* category ^slicing.rules = #open

* category contains pathology 1..1 MS
* category[pathology].coding.system MS
* category[pathology].coding.code MS
* category[pathology].coding.display MS
* category[pathology] = SCT#721966001 "Pathology order (record artifact)"