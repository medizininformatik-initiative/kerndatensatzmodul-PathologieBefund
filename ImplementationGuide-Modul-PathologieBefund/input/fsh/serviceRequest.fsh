// FSH Definition fuer den pathologischen PathologyServiceRequest
Profile: PathologyServiceRequest
Parent: ServiceRequest
Id: PathologyServiceRequest
Title: "PathologyServiceRequest"
Description: "Auftrag zur Untersuchung einer Probe oder einer Gruppe von Proben."
* insert RuleSet1

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
* identifier[Auftraggeber-ID].type.coding[placer-type] = $v2-0203#PLAC "Placer Identifier"
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
* identifier[Auftragnehmer-ID].type.coding[filler-type] = $v2-0203#FILL "Filler"
* identifier[Auftragnehmer-ID].type.coding[filler-type].system 1..1 MS
* identifier[Auftragnehmer-ID].type.coding[filler-type].code 1..1 MS
* identifier[Auftragnehmer-ID].type.coding[filler-type].display MS

// Auftragsgruppen-ID
* requisition MS
  * system 1.. MS
  * value 1.. MS
  * type 1.. MS
  * type = $v2-0203#PLAC "Placer Identifier"

//Status
* status MS

* intent MS

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

//---------------------------------------
// Klinische Informationen
//---------------------------------------

* supportingInfo MS
* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "$this"
* supportingInfo ^slicing.rules = #open
// * supportingInfo ^slicing.description = ""
* supportingInfo ^slicing.ordered = false
* supportingInfo contains CodedCondition 0.. MS 
                      and Anamnesis 0.. MS
// Diagnose codiert
* supportingInfo[CodedCondition] only Reference(Condition)
// Anamnese - Annahme: besteht zum groessten Teil aus Observations u/o Conditions
* supportingInfo[Anamnesis] only Reference(Observation or Condition)

// Zusaetzliche Elemente

// category for searching purposes 
* category 1..1 MS 

* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[0].path = "$this"
* category ^slicing.rules = #open

* category contains pathology 1..1 MS
* category[pathology] = $SCT#721966001 "Pathology order (record artifact)"
  * coding MS
    * system MS
    * code MS
    * display MS
* code MS
// Ueberweisungsgrund
* extension contains ReasonForReferral named reasonForReferral 0.. MS

// Fragestellung (Problem list $LOINC#11450-4) & Ueberweisungsgrund (Reason for referral (Narrative) $LOINC#42349-1)
Extension: ReasonForReferral
Id: ReasonForReferral
Title: "Extension - ReasonForReferral"
Description: "The reason for the ServiceRequest as Narrative"
* value[x] only string
* valueString 0.. MS

//---------------------------
//Examples
//---------------------------
Instance: PathologyRequestExample
InstanceOf: PathologyServiceRequest
Usage: #example
Title: "PathologyRequestExample"
Description: "Pathology Report Example "
* identifier[+].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].value = "KHXX_ENDO_18.123451"
* identifier[=].system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/untersuchungsauftrag"
* identifier[+].type = $v2-0203#FILL "Filler"
* identifier[=].value = "E18-321654"
* identifier[=].system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/untersuchungsauftrag"
* status = #completed
* intent = #order
* subject.reference = "Patient/12345"
* encounter.reference = "Encounter/87687"
* requester.reference = "Practitioner/34456"
* specimen[+].reference = "Specimen/87689"
//* category = $SCT#108252007 "Laboratory procedure (procedure)"
* category = $SCT#721966001 "Pathology order (record artifact)"
* code = $SCT#82619000 "Left colectomy (procedure)"