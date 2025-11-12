//------------------------------------
// MII_PR_Patho_Service_Request
//------------------------------------
Profile: MII_PR_Patho_Service_Request
Parent: ServiceRequest
Id: mii-pr-patho-service-request
Title: "MII PR Patho Service Request"
Description: "Order for the analysis of a sample or a group of samples."
* insert PR_CS_VS_Version
* insert Publisher
// Meta
* meta.profile MS
* meta.source MS
* meta.lastUpdated MS
// Identifikation - Auftrags-ID: Auftrags-ID des Auftraggebers (Placer) || Auftrags-ID des Auftragnehmers (Filler)
* identifier 1.. MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "$this.type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Contains slices for the request's placer- and filler IDs based on type.coding pattern"
* identifier contains Placer-ID 0..1 MS 
                    and Filler-ID 0..1 MS
* identifier[Placer-ID] ^short = "Placer identifier"
* identifier[Placer-ID] ^definition = "Identifier for the placer of the pathology request"
  * value 1.. MS
  * system 1.. MS
  * type 1.. MS
  * type = $v2-0203#PLAC
    * coding MS
      * system 1..1 MS
      * code 1..1 MS
* identifier[Filler-ID] ^short = "Filler Identifier"
* identifier[Filler-ID] ^definition = "Identifier for the filler of the pathology request"
  * value 1.. MS
  * system 1.. MS
  * type 1.. MS
  * type = $v2-0203#FILL
    * coding MS
      * system 1..1 MS
      * code 1..1 MS
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
* intent = http://hl7.org/fhir/request-intent#order
// Referenz zur Probe
* specimen MS
// Referenz zu Patient:in
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
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "$this"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false
* supportingInfo contains codedCondition 0.. MS 
                      and anamnesis 0.. MS
                      and activeProblems 0.. MS
                      and observations 0.. MS
// Diagnose codiert - Clinical Problem?
* supportingInfo[codedCondition] only Reference(Condition)
* supportingInfo[codedCondition] ^short = "Reference to coded conditions"
// History of Present Illness
* supportingInfo[anamnesis] only Reference(mii-pr-patho-history-of-present-illness)
* supportingInfo[anamnesis] ^short = "Reference to history of present illness"
// Active Problems (Fragestellung) 
* supportingInfo[activeProblems] only Reference(mii-pr-patho-active-problems-list)
* supportingInfo[activeProblems] ^short = "List of possible problems that should be analyzed"
// Messwerte
* supportingInfo[observations] only Reference(Observation)
* supportingInfo[observations] ^short = "Reference to observation measurements like PSA"
// category for searching purposes 
* category 1..1 MS 
* category = $SCT#726007 "Pathology consultation, comprehensive, records and specimen with report (procedure)" 
* code MS
* code from mii-vs-patho-service-request-code (extensible)
// Ueberweisungsgrund und Fragestellung - Reason for Referral
* reasonCode MS 
  * ^short = "Coded representation of the reason for referral"

//------------------------------------------------
// Problem List Item 
//------------------------------------------------
Profile: MII_PR_Patho_Problem_List_Item
Parent: Condition
Id: mii-pr-patho-problem-list-item
Title: "MII PR Patho Problem List Item"
Description: "Condition profile for problem list item"
* insert PR_CS_VS_Version
* insert Publisher
* meta.profile MS
* category 1.. MS 
  * coding 1.. MS
    * system 1.. MS 
    * code 1.. MS
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[0].path = "$this"
* category ^slicing.rules = #open
* category contains problem-list-item 1..1 MS
* category[problem-list-item] = $cs-hl7-condition-category#problem-list-item
* code MS
* code from mii-vs-patho-problem-list-snomed-ct (extensible)
  * coding MS
    * code 1.. MS
    * system 1.. MS
* subject MS
* subject only Reference(Patient)

//------------------------------------------------
// Active Problems Section ($LOINC#11450-4 "Problem list - Reported")
//------------------------------------------------
Profile: MII_PR_Patho_Active_Problems_List
Parent: List
Id: mii-pr-patho-active-problems-list
Title: "MII PR Patho Active Problems List"
Description: "List of conditions currently being monitored for the patient"
* insert PR_CS_VS_Version
* insert Publisher
* meta.profile MS
* status MS
* mode MS
* mode = #snapshot (exactly)
* code 1.. MS
  * coding 1.. MS
  * coding = $LOINC#11450-4
    * code 1..
    * system 1..
* subject 1.. MS
* entry MS
  * item only Reference(mii-pr-patho-problem-list-item)

//------------------------------------------------
// History of Present illness
//------------------------------------------------
Profile: MII_PR_Patho_History_Of_Present_Illness
Parent: List
Id: mii-pr-patho-history-of-present-illness
Title: "MII PR Patho History Of Present Illness"
Description: "List profile for 'History of Present Illness'"
* insert PR_CS_VS_Version
* insert Publisher
* meta.profile MS
* status MS
* mode MS
* mode = #snapshot (exactly)
* code 1.. MS
  * coding 1.. MS
  * coding = $LOINC#8684-3
    * code 1.. 
    * system 1.. 
* subject 1.. MS
* entry MS
  * item only Reference(mii-pr-patho-problem-list-item)


//---------------------------
//Examples
//---------------------------
/*
Instance: mii-exa-patho-request
InstanceOf: mii-pr-patho-service-request
Usage: #example
Title: "MII EXA Patho Request"
Description: "Pathology Service Request Example"
* identifier[+].type = $v2-0203#PLAC
* identifier[=].value = "KHXX_ENDO_18.123451"
* identifier[=].system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/untersuchungsauftrag"
* identifier[+].type = $v2-0203#FILL 
* identifier[=].value = "E18-321654"
* identifier[=].system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/untersuchungsauftrag"
* status = #completed
* intent = #order
* subject.reference = "Patient/12345"
* encounter.reference = "Encounter/87687"
* requester.reference = "Practitioner/34456"
* code = $SCT#44977009 "Cytopathology procedure, cell block preparation (procedure)"
* supportingInfo[anamnesis] = Reference(mii-exa-patho-history-of-present-illness)
* supportingInfo[activeProblems] = Reference(mii-exa-patho-active-problems-list)
*/
Instance: mii-exa-patho-request
InstanceOf: mii-pr-patho-service-request
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-service-request"
//* category = $sct#108252007 "Laboratory procedure (procedure" - Ist fixed auf einen anderen Code
* identifier.type = $v2-0203#PLAC
* identifier.value = "KHXX_ENDO_18.123451"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/untersuchungsauftrag"
// Kein Filler?
* status = #completed
* intent = #order
* subject.reference = "Patient/12345"
* encounter.reference = "Encounter/87687"
* requester.reference = "Practitioner/34456"
* code = $SCT#726007 "Pathology consultation, comprehensive, records and specimen with report (procedure)"
* supportingInfo[anamnesis] = Reference(List/mii-exa-patho-history-of-present-illness)
* supportingInfo[activeProblems] = Reference(List/mii-exa-patho-active-problems-list)
* specimen = Reference(Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample)


Instance: mii-exa-patho-problem-list-item-1
InstanceOf: mii-pr-patho-problem-list-item
Usage: #example
Title: "MII EXA Patho Problem List Item 1"
Description: "Pathology Problem List Item Example"
* category[problem-list-item] = $cs-hl7-condition-category#problem-list-item
* code = $SCT#363346000 "Malignant neoplastic disease (disorder)"
* subject.reference = "Patient/12345"

Instance: mii-exa-patho-problem-list-item-2
InstanceOf: mii-pr-patho-problem-list-item
Usage: #example
Title: "MII EXA Patho Problem List Item 2"
Description: "Pathology Problem List Item Example"
* category[problem-list-item] = $cs-hl7-condition-category#problem-list-item
* code = $SCT#266987004 "History of malignant neoplasm (situation)"
* subject.reference = "Patient/12345"

Instance: mii-exa-patho-history-of-present-illness
InstanceOf: mii-pr-patho-history-of-present-illness
Usage: #example
Title: "MII EXA Patho History Of Present Illness"
Description: "Pathology History of Present Illness List Example"
* status = #current 
* mode = #snapshot
* code = $LOINC#8684-3 "History of Present illness"
* subject.reference = "Patient/12345"
* entry.item = Reference(mii-exa-patho-problem-list-item-2)

Instance: mii-exa-patho-active-problems-list
InstanceOf: mii-pr-patho-active-problems-list
Usage: #example
Title: "MII EXA Patho Active Problems List"
Description: "Pathology Active Problems List List Example"
* status = #current 
* mode = #snapshot
* code = $LOINC#11450-4 "Problem list - Reported"
* subject.reference = "Patient/12345"
* entry.item = Reference(mii-exa-patho-problem-list-item-1)