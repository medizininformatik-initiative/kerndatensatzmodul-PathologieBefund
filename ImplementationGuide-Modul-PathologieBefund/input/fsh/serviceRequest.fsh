//------------------------------------
// SD_MII_Patho_Service_Request
//------------------------------------
Profile: SD_MII_Patho_Service_Request
Parent: ServiceRequest
Id: sd-mii-patho-service-request
Title: "SD MII Patho Service Request"
Description: "Order for the analysis of a sample or a group of samples."
* insert RuleSet1
// Meta
* meta.profile MS
* meta.source MS
* meta.lastUpdated MS
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
  * type = $v2-0203#PGN "Placer Group Number"
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
// Clinical Information - Pathology report relevant history $LOINC#22636-5
* supportingInfo MS
* supportingInfo ^short = "Reference to history of present illness (anamnesis), active problems and diagnostic data"
* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "$this.resolve()"
* supportingInfo ^slicing.rules = #open
// * supportingInfo ^slicing.description = ""
* supportingInfo ^slicing.ordered = false
* supportingInfo contains codedCondition 0.. MS 
                      and anamnesis 0.. MS
                      and activeProblems 0.. MS
// Diagnose codiert - Clinical Problem?
* supportingInfo[codedCondition] only Reference(Condition)
// History of Present Illness
* supportingInfo[anamnesis] only Reference(sd-mii-patho-personal-history-finding)
// Active Problems (Fragestellung) 
* supportingInfo[activeProblems] only Reference(sd-mii-patho-active-problems-list)
  * ^short = "List of possible problems that should be analyzed"
// Zusaetzliche Elemente
// category for searching purposes 
* category 1..1 MS 
* category = $SCT#726007 "Pathology consultation, comprehensive, records and specimen with report (procedure)" (exactly)
* code MS
// * code from $LOINC-VS (required)
* code from vs-mii-patho-service-request-loinc (preferred)
// Ueberweisungsgrund und Fragestellung - Reason for Referral
* reasonCode MS 
  * ^short = "Coded representation of the reason for referral"

//------------------------------------------------
// Active Problems Section ($LOINC#11450-4 "Problem list - Reported")
//------------------------------------------------
Profile: SD_MII_Patho_Active_Problems_List
Parent: List
Id: sd-mii-patho-active-problems-list
Title: "SD MII Patho Active Problems List"
Description: "List of conditions currently being monitored for the patient"
* meta.profile MS
* status MS
* mode MS
* mode = #snapshot (exactly)
* code 1.. MS
  * coding 1.. MS
  * coding = $LOINC#11450-4 "Problem list - Reported" (exactly)
    * code 1..
    * system 1..
* subject 1.. MS
* entry MS
  * item only Reference(sd-mii-patho-problem-list-item)

//------------------------------------------------
// Problem List Item 
//------------------------------------------------
Profile: SD_MII_Patho_Problem_List_Item
Parent: Condition
Id: sd-mii-patho-problem-list-item
Title: "SD MII Patho Problem List Item"
Description: "Condition profile for problem list item"
* meta.profile MS
* category 1.. MS
  * coding 1.. MS
  * coding = $cs-hl7-condition-category#problem-list-item "Problem List Item" (exactly)
    * code 1..
    * system 1..
* code MS
* code from vs-mii-patho-problem-list-snomed (extensible)
  * coding MS
    * code 1.. MS
    * system 1.. MS
* subject MS

//------------------------------------------------
// History of Present illness
//------------------------------------------------
Profile: SD_MII_Patho_History_Of_Present_Illness
Parent: List
Id: sd-mii-patho-history-of-present-illness
Title: "SD MII Patho History Of Present Illness"
Description: "List profile for 'History of Present Illness'"
* meta.profile MS
* status MS
* mode MS
* mode = #snapshot (exactly)
* code 1.. MS
  * coding 1.. MS
  * coding = $LOINC#8684-3 "History of Present illness"
    * code 1.. 
    * system 1.. 
* subject 1.. MS
* entry MS
  * item only Reference(sd-mii-patho-problem-list-item)

//------------------------------------------------
// Personal History Finding - coded symptom for anamnesis
//------------------------------------------------
Profile: SD_MII_Patho_Personal_History_Finding
Parent: Observation
Id: sd-mii-patho-personal-history-finding
Title: "SD MII Patho Personal History Finding"
Description: "Profile "
* insert RuleSet1
* status MS
* code MS
  * coding 1.. MS
  * coding = $SCT#307294006 "Personal History Finding" (exactly) 
    * code 1.. 
    * system 1.. 
    * display 
* subject 1.. MS
* value[x] MS
* value[x] only CodeableConcept

//---------------------------
//Examples
//---------------------------
Instance: ex-mii-patho-request
InstanceOf: sd-mii-patho-service-request
Usage: #example
Title: "EX MII Patho Request"
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
* specimen[+] = Reference(ex-mii-patho-prostate-tru-cut-biopsy-sample)
// * category[+] = $SCT#726007 "Pathology consultation, comprehensive, records and specimen with report (procedure)"
* code = $LOINC#11526-1 "Pathology Study"

//------------------------------------------------
// History of Present Illness - Anamnese ($LOINC#10164-2 "History of Present Illness Narrative")
//------------------------------------------------
// Profile: SD_MII_Patho_History_of_Present_Illness
// Parent: Observation
// Id: sd-mii-patho-history-of-present-illness
// Title: "SD MII Patho History of Present Illness"
// Description: "Profile for history of present illness (anamnesis)"
// * insert RuleSet1
// * text MS
// * status MS
// * code MS
//   * coding 1.. MS
//   * coding = $LOINC#10164-2 "History of Present Illness Narrative" (exactly)
//     * code 1.. MS
//     * system 1.. MS
//     * display MS
// * subject 1.. MS 
// * hasMember MS
// * hasMember only Reference(sd-mii-patho-personal-history-finding)

//------------------------------------------------
// Fragestellung (Problem list $LOINC#11450-4)
//------------------------------------------------
// Profile: SD_MII_Patho_Active_Problems
// Parent: Observation
// Id: sd-mii-patho-active-problems
// Title: "SD MII Patho Active Problems"
// Description: "List of problems or questions concerning the reason for the ServiceRequest"
// * insert RuleSet1
// * status MS
// * code MS
//   * coding 1.. MS
//     * code 1.. 
//     * code = $LOINC#11450-4 "Problem list - Reported"
// * subject 1.. MS
// * component 1.. MS
//   * ^short = "List of problem entries"
//   * code MS
//   * code from vs-mii-patho-problem-list-snomed (extensible)
//     * coding MS
//       * system 1..
//       * code 1..
//   * value[x] MS
//   * dataAbsentReason MS
