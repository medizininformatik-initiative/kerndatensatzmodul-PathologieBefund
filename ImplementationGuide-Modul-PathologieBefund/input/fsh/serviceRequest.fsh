// FSH Definition fuer den pathologischen Untersuchungsauftrag

// Aliases
Alias: sct = http://snomed.info/sct

// Profile definition
Profile: Untersuchungsauftrag
Parent: ServiceRequest
Id: Untersuchungsauftrag
Title: "Untersuchungsauftrag"
Description: "Der Untersuchungsauftrag ist, im Gegensatz zum Klinischen Labor, ein Auftrag zur Konsiliarischen Begutachtung und überlässt der auftragenehmenden Pathologieeinrichtung die Auswahl und den Umfang der einzusetzenden Methoden (Arbeitsaufträge und Arbeitsauftragsschritte). Aus diesem Grunde werden Pathologieeinrichtungen als Inspektionsstellen akkreditiert."

// Meta
* meta.profile MS
* meta.source MS

// Identifikation - Auftrags-ID: Auftrags-ID des Auftraggebers || Auftrags-ID des Auftragnehmers
* identifier MS

// Auftragsgruppen-ID
* requisition MS

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