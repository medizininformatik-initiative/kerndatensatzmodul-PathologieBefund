//-----------------------------------------
// SD_MII_Patho_Base_Observation
//-----------------------------------------
// Entweder neue Base Observation profilieren oder wenn passend Laboruntersuchung aus Modul Labor als Base Observation nehmen
Profile: SD_MII_Patho_Base_Observation
Parent: Observation
Id: sd-mii-patho-base-observation
Title: "SD MII Patho Base Observation"
Description: "Abstract Observation to define common features of a main pathology observation"
* insert RuleSet1
* ^abstract = true
* id MS
* meta.lastUpdated MS
* meta.profile MS
* identifier MS
* basedOn MS 
* basedOn only Reference(SD_MII_Patho_Service_Request)
* status MS
* category 1.. MS 
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[0].path = "$this"
* category ^slicing.rules = #open
* category contains laboratory-category 1..1 MS
* category[laboratory-category] = $obs-category#laboratory
  * coding 1.. MS
    * system 1.. MS 
    * system ^fixedString = $obs-category
    * code 1.. MS
    * code ^fixedCode = #laboratory
    * display MS
// Code
* code MS
  * coding from $LOINC (preferred)
  * coding 1.. MS
    * code 1.. MS
    * system 1.. MS
    * display MS
// Referenz - Patient:in
* subject MS
* subject only Reference(Patient)
// Befundzeit
* effective[x] MS
* effective[x] only dateTime
// Koerperstelle
* bodySite MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 0..1 MS
  * coding[sct] from $bio-bodystructure (required)
    * system 1.. MS
    * system = $SCT
// Untersuchungsmethode
* method MS
// Referenz - Probe
* specimen MS
* derivedFrom MS
* derivedFrom ^slicing.discriminator.type = #type
* derivedFrom ^slicing.discriminator.path = "$this.resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "tbd"
* derivedFrom ^slicing.ordered = false
* derivedFrom contains attached-image 0..* MS 
                   and dicom-image 0..* MS
* derivedFrom[attached-image] only Reference(SD_MII_Patho_Attached_Image)
* derivedFrom[dicom-image] only Reference(ImagingStudy)
* hasMember MS
// Components fuer die Erfassung der Ergebnisse
* component 0.. 
  * code MS
  * value[x] only string or Quantity or CodeableConcept or Ratio // was hat MolGen hier? Stimmt es ueberein? 
  * dataAbsentReason MS

//-------------------------------------------
// SD_MII_Patho_Finding
//-------------------------------------------
Profile: SD_MII_Patho_Finding
Parent: SD_MII_Patho_Base_Observation
Id: sd-mii-patho-finding
Title: "SD MII Patho Finding"
Description: "Instantiable Observation to describe a generic pathology finding"
* insert RuleSet1
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this.coding"
* category ^slicing.rules = #open
* category ^slicing.description = "Section type"
* category ^slicing.ordered = false
* category contains section-type 1..1 MS
* category[section-type].coding from VS_MII_Patho_Section_Types_LOINC (required)
* value[x] MS
* value[x] only string or Quantity or CodeableConcept or Ratio


//--------------------------------------------
// Grouper
//--------------------------------------------
Profile: SD_MII_Patho_Section_Grouper
Parent: SD_MII_Patho_Base_Observation
Id: sd-mii-patho-section-grouper
Title: "SD MII Patho Section Grouper"
Description: "Grouper profile for pathological findings"
* insert RuleSet1
* ^abstract = true
// * code.coding from SectionTypes (required)
* text MS
* hasMember ^slicing.discriminator.type = #type
* hasMember ^slicing.discriminator.path = "$this"
* hasMember ^slicing.rules = #open
* hasMember ^slicing.description = "Reference to pathology findings"
* hasMember ^slicing.ordered = false
* hasMember contains pathology-finding 0..* MS
* hasMember[pathology-finding] only Reference(SD_MII_Patho_Finding)


//--------------------------------------------
// IntraoperativeObservation
//--------------------------------------------
Profile: SD_MII_Patho_Intraoperative_Grouper
Parent: sd-mii-patho-section-grouper
Id: sd-mii-patho-intraoperative-grouper
Title: "SD MII Patho Intraoperative Grouper"
Description: "Based on IHE PaLM APSR - Intraoperative Observation Section"
* insert RuleSet1
* code ^fixedCodeableConcept = $LOINC#83321-0 "Pathology report intraoperative observation in Specimen Document"


//--------------------------------------------
// Macroscopic Observation
//--------------------------------------------
Profile: SD_MII_Patho_Macroscopic_Grouper
Parent: SD_MII_Patho_Section_Grouper
Id: sd-mii-patho-macroscopic-grouper
Title: "SD MII Patho Macroscopic Grouper"
Description: "Based on IHE PaLM APSR - Macroscopic Observation Finding"
* insert RuleSet1
* code ^fixedCodeableConcept = $LOINC#22634-0 "Pathology report gross observation"


//-------------------------------------
// Microscopic Observation
//-------------------------------------
Profile: SD_MII_Patho_Microscopic_Grouper
Parent: SD_MII_Patho_Section_Grouper
Id: sd-mii-patho-microscopic-grouper
Title: "SD MII Patho Microscopic Grouper"
Description: "Based on IHE PaLM APSR - Microscopic Observation Finding"
* insert RuleSet1
* code ^fixedCodeableConcept = $LOINC#22635-7 "Pathology report microscopic observation"


//-------------------------------------
// Additional Specified Observations
//-------------------------------------
Profile: SD_MII_Patho_Additional_Specified_Grouper
Parent: SD_MII_Patho_Section_Grouper
Id: sd-mii-patho-additional-specified-grouper
Title: "SD MII Patho Additional Specified Grouper"
Description: "Based on IHE PaLM APSR - Grouper for additional specified Observations"
* insert RuleSet1
* code ^fixedCodeableConcept = $LOINC#100969-5 "Pathology report additional specified observation"  


//--------------------------------
// Diagnostic Conclusion
//--------------------------------
Profile: SD_MII_Patho_Diagnostic_Conclusion_Grouper
Parent: SD_MII_Patho_Section_Grouper	
Id: sd-mii-patho-diagnostic-conclusion-grouper
Title: "SD MII Patho Diagnostic Conclusion Grouper"
Description: "Grouper profile to collect Diagnostic Conclusion information"
* insert RuleSet1
* code = $LOINC#22637-3 "Pathology report diagnosis" (exactly)
// Observation the Diagnostic Conclusion derives from
* derivedFrom MS
* derivedFrom ^slicing.discriminator.type = #type
* derivedFrom ^slicing.discriminator.path = "$this.resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "tbd"
* derivedFrom ^slicing.ordered = false
* derivedFrom contains grouper-observation 0..* MS
                   and questionnaire-response 0..* MS
* derivedFrom[grouper-observation] only Reference(SD_MII_Patho_Intraoperative_Grouper or SD_MII_Patho_Macroscopic_Grouper or SD_MII_Patho_Microscopic_Grouper or SD_MII_Patho_Additional_Specified_Grouper)
* derivedFrom[questionnaire-response] only Reference(QuestionnaireResponse)
* note MS

//---------------------------------
// Examples
//---------------------------------
// Macroscopic Report
//---------------------------------
// Macro Specimen A
Instance: ex-mii-patho-biopsy-site-a
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "EX MII Patho Biopsy Site A"
Description: "Biopsy site of Specimen A (1st punch)"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#94738-2 "Biopsy site"
* code.extension.url = $fhir-narrative-link
* code.extension.valueUrl = "#macro-a-biopsy-site-key"
* valueCodeableConcept = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* valueCodeableConcept.extension.url = $fhir-narrative-link
* valueCodeableConcept.extension.valueUrl = "#macro-a-biopsy-site-value"
* derivedFrom[+] = Reference(ex-mii-patho-attached-image)
* specimen = Reference(ex-mii-patho-he-stained-slide-prostate)

Instance: ex-mii-patho-tissue-length-a
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "EX MII Patho Tissue Length A"
Description: "Tissue length of Specimen A (1st punch)"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#44619-5 "Length of tissue core(s)"
* code.extension.url = $fhir-narrative-link
* code.extension.valueUrl = "#macro-a-tissue-length-key"
* valueQuantity.value = 1.2
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM 
* valueQuantity.code = #cm
* valueQuantity.extension.url = $fhir-narrative-link
* valueQuantity.extension.valueUrl = "#macro-a-tissue-length-value"
* derivedFrom[+] = Reference(ex-mii-patho-attached-image)
* specimen = Reference(ex-mii-patho-he-stained-slide-prostate)

Instance: ex-mii-patho-macro-grouper-a
InstanceOf: SD_MII_Patho_Macroscopic_Grouper
Usage: #example
Title: "EX MII Patho Macro Grouper A"
Description: "Grouper for all Macroscopic Observations of Specimen A (1st punch)"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* code.coding = $LOINC#22634-0 "Pathology report gross observation"
* valueString = "Makroskopie A"
* hasMember[+] = Reference(ex-mii-patho-biopsy-site-a)
* hasMember[+] = Reference(ex-mii-patho-tissue-length-a)
* specimen = Reference(ex-mii-patho-he-stained-slide-prostate)

// Macro Specimen B
Instance: ex-mii-patho-biopsy-site-b
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "EX MII Patho Biopsy Site B"
Description: "Biopsy site of Specimen B (2nd punch)"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#94738-2 "Biopsy site"
* valueCodeableConcept = $SCT#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"
* derivedFrom[+] = Reference(ex-mii-patho-attached-image)

Instance: ex-mii-patho-tissue-length-b
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "EX MII Patho Tissue Length B"
Description: "Tissue length of Specimen B (2nd punch)"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#44619-5 "Length of tissue core(s)"
* valueQuantity.value = 1.5
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm 
* derivedFrom[+] = Reference(ex-mii-patho-attached-image)

Instance: ex-mii-patho-macro-grouper-b
InstanceOf: SD_MII_Patho_Macroscopic_Grouper
Usage: #example
Title: "EX MII Patho Macro Grouper B"
Description: "Grouper for all Macroscopic Observations of Specimen B (2nd punch)"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* code.coding = $LOINC#22634-0 "Pathology report gross observation"
* valueString = "Specimen B: Prostataseitenlappen rechts, apikal 1.5cm"
* hasMember[+] = Reference(ex-mii-patho-biopsy-site-b)
* hasMember[+] = Reference(ex-mii-patho-tissue-length-b)

//-------------------------------
// Microscopic Report
//-------------------------------
// Micro Specimen A
Instance: ex-mii-patho-histologic-type-a
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "EX MII Patho Histologic Type A"
Description: "[Microscopic Finding] Histologic type of Specimen A"
* status = #final 
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22635-7 "Pathology report microscopic observation"
* code = $SCT#371441004 "Histologic type (observable entity)"
* valueCodeableConcept = $SCT#45410002 "Acinar adenocarcinoma (morphologic abnormality)"
* specimen = Reference(ex-mii-patho-he-stained-slide-prostate)

Instance: ex-mii-patho-gleason-pattern-a
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "EX MII Patho Gleason Pattern A"
Description: "[Microscopic Finding] Gleason pattern.primary in prostate tumor for Specimen A"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22635-7 "Pathology report microscopic observation"
* code = $LOINC#44641-9 "Gleason pattern.primary in prostate tumor"
* valueCodeableConcept = $SCT#369772003 "Pattern 3 (staging scale)"
* specimen = Reference(ex-mii-patho-he-stained-slide-prostate)

Instance: ex-mii-patho-micro-grouper-a
InstanceOf: SD_MII_Patho_Microscopic_Grouper
Usage: #example
Title: "EX MII Patho Micro Grouper A"
Description: "Grouper for all Microscopic Observations of Specimen A"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* code.coding = $LOINC#22635-7 "Pathology report microscopic observation"
* valueString = "Specimen A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders..."
* hasMember[+] = Reference(ex-mii-patho-histologic-type-a)
* hasMember[+] = Reference(ex-mii-patho-gleason-pattern-a)
* specimen = Reference(ex-mii-patho-he-stained-slide-prostate)

//-------------------------------
// Diagnostic Conclusion
//-------------------------------
Instance: ex-mii-patho-diagnostic-conclusion-1
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "EX MII Patho Diagnostic Conclusion 1"
Description: "Example for a diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3 "Pathology report diagnosis" 
* code = $LOINC#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* valueCodeableConcept = $icd-o-3#8140/3 "Adenokarzinom (azinär)"

Instance: ex-mii-patho-diagnostic-conclusion-2
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "EX MII Patho Diagnostic Conclusion 2"
Description: "Example for diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3 "Pathology report diagnosis"
* code = $LOINC#35266-6 "Gleason score in Specimen Qualitative"
* valueCodeableConcept = $SCT#57403001 "Gleason grade 7 (staging scale)"

Instance: ex-mii-patho-diagnostic-conclusion-3
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "EX MII Patho Diagnostic Conclusion 3"
Description: "Example for diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3 "Pathology report diagnosis"
* code = $LOINC#94734-1 "Prostate cancer grade group"
* valueCodeableConcept = $LOINC#LA9630-0 "Grade 2"

Instance: ex-mii-patho-diagnostic-conclusion-grouper
InstanceOf: SD_MII_Patho_Diagnostic_Conclusion_Grouper
Usage: #example
Title: "EX MII Patho Diagnostic Conclusion Grouper"
Description: "Example for a diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* code.coding = $LOINC#22637-3 "Pathology report diagnosis"
* derivedFrom[+] = Reference(ex-mii-patho-macro-grouper-a)
* derivedFrom[+] = Reference(ex-mii-patho-macro-grouper-b)
* derivedFrom[+] = Reference(ex-mii-patho-micro-grouper-a)
* hasMember[+] = Reference(ex-mii-patho-diagnostic-conclusion-1)
* hasMember[+] = Reference(ex-mii-patho-diagnostic-conclusion-2)
* hasMember[+] = Reference(ex-mii-patho-diagnostic-conclusion-3)



