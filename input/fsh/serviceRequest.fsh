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
* insert Translation(^title, de-DE, MII PR Patho Untersuchungsauftrag)
* insert Translation(^title, en-US, MII PR Patho Service Request)
* insert Translation(^description, de-DE, Auftrag für die Analyse einer Probe oder einer Gruppe von Proben)
* insert Translation(^description, en-US, Order for the analysis of a sample or a group of samples)
// Meta
* meta.profile MS
* meta.source MS
* meta.lastUpdated MS
// Identifikation - Auftrags-ID: Auftrags-ID des Auftraggebers (Placer) || Auftrags-ID des Auftragnehmers (Filler)
* identifier 1.. MS
* insert Label(identifier, Identifikator, Eindeutiger Identifikator des Auftrags)
* insert Translation(identifier ^short, de-DE, Identifikator)
* insert Translation(identifier ^short, en-US, Identifier)
* insert Translation(identifier ^definition, de-DE, Eindeutiger Identifikator des Auftrags)
* insert Translation(identifier ^definition, en-US, Unique identifier of the request)
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "$this.type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Contains slices for the request's placer- and filler IDs based on type.coding pattern"
* identifier contains Placer-ID 0..1 MS and Filler-ID 0..1 MS
* insert Label(identifier[Placer-ID], Auftraggeber-ID, Identifikator des Auftraggebers)
* insert Translation(identifier[Placer-ID] ^short, de-DE, Auftraggeber-ID)
* insert Translation(identifier[Placer-ID] ^short, en-US, Placer ID)
* insert Translation(identifier[Placer-ID] ^definition, de-DE, Identifikator des Auftraggebers)
* insert Translation(identifier[Placer-ID] ^definition, en-US, Identifier of the placer) 

* insert Label(identifier[Filler-ID], Auftragnehmer-ID, Identifikator des Auftragnehmers)
* insert Translation(identifier[Filler-ID] ^short, de-DE, Auftragnehmer-ID)
* insert Translation(identifier[Filler-ID] ^short, en-US, Filler ID)
* insert Translation(identifier[Filler-ID] ^definition, de-DE, Identifikator des Auftragnehmers)
* insert Translation(identifier[Filler-ID] ^definition, en-US, Identifier of the filler)
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
* insert Label(requisition, Auftragsgruppen-ID, Identifikator für Auftragsgruppen)
* insert Translation(requisition ^short, de-DE, Auftragsgruppen-ID)
* insert Translation(requisition ^short, en-US, Requisition)
* insert Translation(requisition ^definition, de-DE, Identifikator für Auftragsgruppen)
* insert Translation(requisition ^definition, en-US, Identifier for request groups)
* requisition ^short = "Composite or group identifier"
  * system 1.. MS
  * value 1.. MS
  * type 1.. MS
  * type = $v2-0203#PGN "Placer Group Number"
//Status
* status MS
* insert Label(status, Status, Status des Auftrags)
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, Status)
* insert Translation(status ^definition, de-DE, Status des Auftrags)
* insert Translation(status ^definition, en-US, Status of the request)
* intent MS
* insert Label(intent, Absicht, Absicht des Auftrags)
* insert Translation(intent ^short, de-DE, Absicht)
* insert Translation(intent ^short, en-US, Intent)
* insert Translation(intent ^definition, de-DE, Absicht des Auftrags)
* insert Translation(intent ^definition, en-US, Intent of the request)
* intent = http://hl7.org/fhir/request-intent#order
// Referenz zur Probe
* specimen MS
* insert Label(specimen, Probe, Verweis auf die zu untersuchende Probe)
* insert Translation(specimen ^short, de-DE, Probe)
* insert Translation(specimen ^short, en-US, Specimen)
* insert Translation(specimen ^definition, de-DE, Verweis auf die zu untersuchende Probe)
* insert Translation(specimen ^definition, en-US, Reference to the specimen to be examined)
// Referenz zu Patient:in
* subject MS
* insert Label(subject, Patient, Verweis auf den Patienten)
* insert Translation(subject ^short, de-DE, Patient)
* insert Translation(subject ^short, en-US, Subject)
* insert Translation(subject ^definition, de-DE, Verweis auf den Patienten)
* insert Translation(subject ^definition, en-US, Reference to the patient)
* subject only Reference(Patient)
// Referenz für Einsender
* requester 1.. MS
* insert Label(requester, Anforderer, Person oder Organisation die den Auftrag stellt)
* insert Translation(requester ^short, de-DE, Anforderer)
* insert Translation(requester ^short, en-US, Requester)
* insert Translation(requester ^definition, de-DE, Person oder Organisation die den Auftrag stellt)
* insert Translation(requester ^definition, en-US, Person or organization placing the request)
* requester only Reference(Practitioner or Organization)
// Referenz zum Versorgungsstellenkontakt - ob die Referenz zum Versorgungsstellenkontakt gehen wird ist noch zu klaeren 
* encounter 1.. MS
* insert Label(encounter, Fall, Verweis auf den Behandlungsfall)
* insert Translation(encounter ^short, de-DE, Fall)
* insert Translation(encounter ^short, en-US, Encounter)
* insert Translation(encounter ^definition, de-DE, Verweis auf den Behandlungsfall)
* insert Translation(encounter ^definition, en-US, Reference to the treatment case)
//Referenz für Probenentnehmer
* performer MS
* insert Label(performer, Durchführer, Person die die Untersuchung durchführt)
* insert Translation(performer ^short, de-DE, Durchführer)
* insert Translation(performer ^short, en-US, Performer)
* insert Translation(performer ^definition, de-DE, Person die die Untersuchung durchführt)
* insert Translation(performer ^definition, en-US, Person who performs the examination)
* performer only Reference(Practitioner)
// Clinical Information - Pathology report relevant history $LOINC#22636-5
* supportingInfo MS
* insert Label(supportingInfo, Zusätzliche Informationen, Unterstützende klinische Informationen)
* insert Translation(supportingInfo ^short, de-DE, Zusätzliche Informationen)
* insert Translation(supportingInfo ^short, en-US, Supporting info)
* insert Translation(supportingInfo ^definition, de-DE, Unterstützende klinische Informationen)
* insert Translation(supportingInfo ^definition, en-US, Supporting clinical information)
* supportingInfo ^short = "Reference to history of present illness (anamnesis), active problems and diagnostic data"
* supportingInfo ^slicing.discriminator.type = #value  
* supportingInfo ^slicing.discriminator.path = "resolve()" 
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false
* supportingInfo contains codedCondition 0.. MS and anamnesis 0.. MS and activeProblems 0.. MS and observations 0.. MS
* insert Label(supportingInfo[codedCondition], Kodierte Diagnose, Verweis auf kodierte Diagnosen)
* insert Translation(supportingInfo[codedCondition] ^short, de-DE, Kodierte Diagnose)
* insert Translation(supportingInfo[codedCondition] ^short, en-US, Coded condition)
* insert Translation(supportingInfo[codedCondition] ^definition, de-DE, Verweis auf kodierte Diagnosen)
* insert Translation(supportingInfo[codedCondition] ^definition, en-US, Reference to coded diagnoses) 
                      
* insert Label(supportingInfo[anamnesis], Anamnese, Verweis auf die Anamnese)
* insert Translation(supportingInfo[anamnesis] ^short, de-DE, Anamnese)
* insert Translation(supportingInfo[anamnesis] ^short, en-US, Anamnesis)
* insert Translation(supportingInfo[anamnesis] ^definition, de-DE, Verweis auf die Anamnese)
* insert Translation(supportingInfo[anamnesis] ^definition, en-US, Reference to anamnesis)
                      
* insert Label(supportingInfo[activeProblems], Aktive Probleme, Verweis auf aktive Probleme)
* insert Translation(supportingInfo[activeProblems] ^short, de-DE, Aktive Probleme)
* insert Translation(supportingInfo[activeProblems] ^short, en-US, Active problems)
* insert Translation(supportingInfo[activeProblems] ^definition, de-DE, Verweis auf aktive Probleme)
* insert Translation(supportingInfo[activeProblems] ^definition, en-US, Reference to active problems)
                      
* insert Label(supportingInfo[observations], Beobachtungen, Verweis auf Messwerte und Beobachtungen)
* insert Translation(supportingInfo[observations] ^short, de-DE, Beobachtungen)
* insert Translation(supportingInfo[observations] ^short, en-US, Observations)
* insert Translation(supportingInfo[observations] ^definition, de-DE, Verweis auf Messwerte und Beobachtungen)
* insert Translation(supportingInfo[observations] ^definition, en-US, Reference to measurements and observations)
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
* insert Label(category, Kategorie, Kategorie des Untersuchungsauftrags)
* insert Translation(category ^short, de-DE, Kategorie)
* insert Translation(category ^short, en-US, Category)
* insert Translation(category ^definition, de-DE, Kategorie des Untersuchungsauftrags)
* insert Translation(category ^definition, en-US, Category of the examination request)
* category = $SCT#726007 "Pathology consultation, comprehensive, records and specimen with report (procedure)" 
* code MS
* insert Label(code, Code, Code für die angeforderte Leistung)
* insert Translation(code ^short, de-DE, Code)
* insert Translation(code ^short, en-US, Code)
* insert Translation(code ^definition, de-DE, Code für die angeforderte Leistung)
* insert Translation(code ^definition, en-US, Code for the requested service)
* code from mii-vs-patho-service-request-code (extensible)
// Ueberweisungsgrund und Fragestellung - Reason for Referral
* reasonCode MS
* insert Label(reasonCode, Begründungscode, Kodierter Grund für die Überweisung)
* insert Translation(reasonCode ^short, de-DE, Begründungscode)
* insert Translation(reasonCode ^short, en-US, Reason code)
* insert Translation(reasonCode ^definition, de-DE, Kodierter Grund für die Überweisung)
* insert Translation(reasonCode ^definition, en-US, Coded reason for referral) 


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
* subject = Reference(Patient/12345)
* encounter = Reference(Encounter/87687)
* requester = Reference(Practitioner/34456)
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
* subject = Reference(Patient/12345)
* encounter = Reference(Encounter/87687)
* requester = Reference(Practitioner/34456)
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
* subject = Reference(Patient/12345)

Instance: mii-exa-patho-problem-list-item-2
InstanceOf: mii-pr-patho-problem-list-item
Usage: #example
Title: "MII EXA Patho Problem List Item 2"
Description: "Pathology Problem List Item Example"
* category[problem-list-item] = $cs-hl7-condition-category#problem-list-item
* code = $SCT#266987004 "History of malignant neoplasm (situation)"
* subject = Reference(Patient/12345)

Instance: mii-exa-patho-history-of-present-illness
InstanceOf: mii-pr-patho-history-of-present-illness
Usage: #example
Title: "MII EXA Patho History Of Present Illness"
Description: "Pathology History of Present Illness List Example"
* status = #current 
* mode = #snapshot
* code = $LOINC#8684-3 "History of Present illness"
* subject = Reference(Patient/12345)
* entry.item = Reference(mii-exa-patho-problem-list-item-2)

Instance: mii-exa-patho-active-problems-list
InstanceOf: mii-pr-patho-active-problems-list
Usage: #example
Title: "MII EXA Patho Active Problems List"
Description: "Pathology Active Problems List List Example"
* status = #current 
* mode = #snapshot
* code = $LOINC#11450-4 "Problem list - Reported"
* subject = Reference(Patient/12345)
* entry.item = Reference(mii-exa-patho-problem-list-item-1)