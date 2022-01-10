//------------------------------------
// PathologyServiceRequest
//------------------------------------
Profile: PathologyServiceRequest
Parent: ServiceRequest
Id: PathologyServiceRequest
Title: "PathologyServiceRequest"
Description: "Order for the analysis of a sample or a group of samples."
* insert RuleSet1
// Meta
* meta.profile MS
* meta.source MS
// Identifikation - Auftrags-ID: Auftrags-ID des Auftraggebers (Placer) || Auftrags-ID des Auftragnehmers (Filler)
* identifier 1.. MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "type.coding"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Contains slices for the request's placer- and filler IDs based on type.coding pattern"
* identifier contains Placer-ID 0..1 MS 
                    and Filler-ID 0..1 MS
* identifier[Placer-ID] ^short = "Placer identifier"
* identifier[Placer-ID] ^definition = "Identifier for the placer of the pathology request"
  * value 1.. MS
  * system 1.. MS
  * type 1.. MS
    * coding = $v2-0203#PLAC "Placer identifier"
      * system 1..1 MS
      * code 1..1 MS
      * display MS
* identifier[Filler-ID] ^short = "Filler Identifier"
* identifier[Filler-ID] ^definition = "Identifier for the filler of the pathology request"
  * value 1.. MS
  * system 1.. MS
  * type 1.. MS
    * coding = $v2-0203#FILL "Filler"
      * system 1..1 MS
      * code 1..1 MS
      * display MS
// Auftragsgruppen-ID
* requisition MS
* requisition ^short = "Composite or group identifier"
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

// Klinische Informationen
* supportingInfo MS
* supportingInfo ^short = "Reference to anamnesis and diagnostic data"
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
* supportingInfo[Anamnesis] only Reference(Observation)

// Zusaetzliche Elemente
// category for searching purposes 
* category 1..1 MS 
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[0].path = "$this"
* category ^slicing.rules = #open
* category contains pathology 1..1 MS
* category[pathology] = $SCT#721966001 "Pathology order (record artifact)"
* category[pathology] ^short = "Fixed category 'Pathology order'"
  * coding MS
    * system 1.. MS
    * system ^fixedString = $SCT
    * code 1.. MS
    * code ^fixedCode = #721966001
    * display MS
* code MS
// Ueberweisungsgrund und Fragestellung
* reasonCode MS 
* extension contains ExtReasonForReferral named reasonForReferral 0.. MS 
            and ExtProblemList named problemList 0.. MS
* extension[reasonForReferral] ^short = "Reason for the referral as string"
* extension[reasonForReferral] ^definition = "String representation for the reason for the referral. In case of coded reason, use 'reasonCode'"
* extension[problemList] ^short = "List of possible problems that should be analyzed"

//------------------------------------------------------------------------
// Ueberweisungsgrund (Reason for referral (Narrative) $LOINC#42349-1)
//------------------------------------------------------------------------
Extension: ExtensionReasonForReferral
Id: ExtReasonForReferral
Title: "Extension - ReasonForReferral"
Description: "The reason for the ServiceRequest as Narrative"
* url 1.. MS
* value[x] only string
* valueString 1.. MS

//------------------------------------------------
// Fragestellung (Problem list $LOINC#11450-4)
//------------------------------------------------
Profile: ProblemList
Parent: Observation
Id: ProblemList
Title: "ProblemList"
Description: "List of problems or questions concerning the reason for the ServiceRequest"
* insert RuleSet1
* status MS
* code MS
  * coding 1.. MS
    * code 1.. MS
    * code ^fixedCode = #11450-4
    * system 1.. MS
    * system ^fixedString = $LOINC
    * display MS
    * display ^fixedString = "Problem list"
* subject 1.. MS
* component 1.. MS
  * code MS
    * coding MS
      * system 1.. MS
      * code 1.. MS
  * value[x] MS
  * dataAbsentReason MS

//----------------------------------
// Extension for problem list
//----------------------------------
Extension: ExtProblemList
Id: ExtProblemList
Title: "Extension - ProblemList"
Description: "Reference to a list of problems or questions concerning the reason for the ServiceRequest"
* url 1.. MS
* value[x] only Reference(ProblemList)

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
* category = $SCT#721966001 "Pathology order (record artifact)"
* code = $SCT#82619000 "Left colectomy (procedure)"