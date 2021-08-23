// FSH Definition fuer den pathologischen Untersuchungsauftrag

// Aliases
Alias: sct = http://snomed.info/sct
Alias: v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203 

// Profile definition
Profile: Untersuchungsauftrag
Parent: ServiceRequest
Id: Untersuchungsauftrag
Title: "Untersuchungsauftrag"
Description: "Der Untersuchungsauftrag ist, im Gegensatz zum Klinischen Labor, ein Auftrag zur Konsiliarischen Begutachtung und überlässt der auftragenehmenden Pathologieeinrichtung die Auswahl und den Umfang der einzusetzenden Methoden (Arbeitsaufträge und Arbeitsauftragsschritte). Aus diesem Grunde werden Pathologieeinrichtungen als Inspektionsstellen akkreditiert."

* ^status = #draft

// Meta
* meta.profile MS
* meta.source MS

// Identifikation - Auftrags-ID: Auftrags-ID des Auftraggebers || Auftrags-ID des Auftragnehmers
* identifier 1.. MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "$this"
* identifier ^slicing.rules = #open

// cardinalities could still change
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

// Status
* status MS

// Intent
* intent MS

// Klinische Angaben

// Patient
* subject MS
* subject only Reference(Patient)

// Einsender
* requester 1.. MS 
* requester only Reference(Practitioner or Organization)

// Probenentnehmer
* performer MS 
* performer only Reference(Practitioner)

// Referenz zum Versorgungsstellenkontakt
* encounter 1.. MS

// TODO: Beauftragte Untersuchung in codierter Form 
* code MS

// TODO: Referenz zu Probe(n)
* specimen 1.. MS