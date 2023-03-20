//-----------------------------------------
// MII_PR_Patho_Base_Observation
//-----------------------------------------
// Entweder neue Base Observation profilieren oder wenn passend Laboruntersuchung aus Modul Labor als Base Observation nehmen
Profile: MII_PR_Patho_Base_Observation
Parent: Observation
Id: mii-pr-patho-base-observation
Title: "MII PR Patho Base Observation"
Description: "Abstract Observation to define common features of a main pathology observation"
* insert RuleSet1
* ^abstract = true
* id MS
* meta.lastUpdated MS
* meta.profile MS
* identifier MS
* basedOn MS 
* basedOn only Reference(mii-pr-patho-service-request)
* status MS
* category 1.. MS 
  * coding 1.. MS
    * system 1.. MS 
    * code 1.. MS
    * display MS
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[0].path = "$this"
* category ^slicing.rules = #open
* category contains laboratory-category 1..1 MS
* category[laboratory-category] = $cs-obs-category#laboratory
// Code
* code MS
  * coding from mii-vs-patho-all-loinc (preferred)
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
* derivedFrom ^slicing.ordered = false
* derivedFrom contains attached-image 0..* MS 
                   and dicom-image 0..* MS
* derivedFrom[attached-image] only Reference(MII_PR_Patho_Attached_Image)
* derivedFrom[dicom-image] only Reference(ImagingStudy)
* hasMember MS
// Components fuer die Erfassung der Ergebnisse
* component 0.. 
  * code MS
  * value[x] only string or Quantity or CodeableConcept or Ratio // was hat MolGen hier? Stimmt es ueberein? 
  * dataAbsentReason MS

//-------------------------------------------
// MII_PR_Patho_Finding
//-------------------------------------------
Profile: MII_PR_Patho_Finding
Parent: mii-pr-patho-base-observation
Id: mii-pr-patho-finding
Title: "MII PR Patho Finding"
Description: "Instantiable Observation to describe a generic pathology finding"
* insert RuleSet1
* category contains section-type 1..1 MS
* category[section-type] from mii-vs-patho-section-types-loinc (required)
* value[x] MS
* value[x] only string or Quantity or CodeableConcept or Ratio


//--------------------------------------------
// Grouper
//--------------------------------------------
Profile: MII_PR_Patho_Section_Grouper
Parent: mii-pr-patho-base-observation
Id: mii-pr-patho-section-grouper
Title: "MII PR Patho Section Grouper"
Description: "Grouper profile for pathological findings"
* insert RuleSet1
* ^abstract = true
* text MS
* hasMember ^slicing.discriminator.type = #type
* hasMember ^slicing.discriminator.path = "$this"
* hasMember ^slicing.rules = #open
* hasMember ^slicing.description = "Reference to pathology findings"
* hasMember ^slicing.ordered = false
* hasMember contains pathology-finding 0..* MS
* hasMember[pathology-finding] only Reference(mii-pr-patho-finding)


//--------------------------------------------
// IntraoperativeObservation
//--------------------------------------------
Profile: MII_PR_Patho_Intraoperative_Grouper
Parent: mii-pr-patho-section-grouper
Id: mii-pr-patho-intraoperative-grouper
Title: "MII PR Patho Intraoperative Grouper"
Description: "Based on IHE PaLM APSR - Intraoperative Observation Section"
* insert RuleSet1
* code = $LOINC#83321-0


//--------------------------------------------
// Macroscopic Observation
//--------------------------------------------
Profile: MII_PR_Patho_Macroscopic_Grouper
Parent: mii-pr-patho-section-grouper
Id: mii-pr-patho-macroscopic-grouper
Title: "MII PR Patho Macroscopic Grouper"
Description: "Based on IHE PaLM APSR - Macroscopic Observation Finding"
* insert RuleSet1
* code = $LOINC#22634-0


//-------------------------------------
// Microscopic Observation
//-------------------------------------
Profile: MII_PR_Patho_Microscopic_Grouper
Parent: mii-pr-patho-section-grouper
Id: mii-pr-patho-microscopic-grouper
Title: "MII PR Patho Microscopic Grouper"
Description: "Based on IHE PaLM APSR - Microscopic Observation Finding"
* insert RuleSet1
* code = $LOINC#22635-7


//-------------------------------------
// Additional Specified Observations
//-------------------------------------
Profile: MII_PR_Patho_Additional_Specified_Grouper
Parent: mii-pr-patho-section-grouper
Id: mii-pr-patho-additional-specified-grouper
Title: "MII PR Patho Additional Specified Grouper"
Description: "Based on IHE PaLM APSR - Grouper for additional specified Observations"
* insert RuleSet1
* code = $LOINC#100969-5 // not able to validate code yet, should come with next LOINC release


//--------------------------------
// Diagnostic Conclusion
//--------------------------------
Profile: MII_PR_Patho_Diagnostic_Conclusion_Grouper
Parent: mii-pr-patho-section-grouper	
Id: mii-pr-patho-diagnostic-conclusion-grouper
Title: "MII PR Patho Diagnostic Conclusion Grouper"
Description: "Grouper profile to collect Diagnostic Conclusion information"
* insert RuleSet1
* code = $LOINC#22637-3
// Observation the Diagnostic Conclusion derives from
* derivedFrom MS
* derivedFrom ^slicing.discriminator.type = #type
* derivedFrom ^slicing.discriminator.path = "$this.resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.ordered = false
* derivedFrom contains grouper-observation 0..* MS
                   and questionnaire-response 0..* MS
* derivedFrom[grouper-observation] only Reference(mii-pr-patho-section-grouper)
* derivedFrom[questionnaire-response] only Reference(QuestionnaireResponse)
* note MS

//---------------------------------
// Examples
//---------------------------------
// Macroscopic Report
//---------------------------------
// Macro Specimen A
Instance: mii-exa-patho-biopsy-site-a
InstanceOf: mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Biopsy Site A"
Description: "Biopsy site of Specimen A (1st punch)"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 
* code.coding = $LOINC#94738-2 "Biopsy site Patient"
* code.extension.url = $fhir-narrative-link
* code.extension.valueUrl = "#macro-a-biopsy-site-key"
* valueCodeableConcept = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* valueCodeableConcept.extension.url = $fhir-narrative-link
* valueCodeableConcept.extension.valueUrl = "#macro-a-biopsy-site-value"
* derivedFrom[+] = Reference(mii-exa-patho-attached-image)
* specimen = Reference(mii-exa-patho-he-stained-slide-prostate)

Instance: mii-exa-patho-tissue-length-a
InstanceOf: mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Tissue Length A"
Description: "Tissue length of Specimen A (1st punch)"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 
* code.coding = $LOINC#44619-5 "Length of tissue core(s)"
* code.extension.url = $fhir-narrative-link
* code.extension.valueUrl = "#macro-a-tissue-length-key"
* valueQuantity.value = 1.2
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM 
* valueQuantity.code = #cm
* valueQuantity.extension.url = $fhir-narrative-link
* valueQuantity.extension.valueUrl = "#macro-a-tissue-length-value"
* derivedFrom[+] = Reference(mii-exa-patho-attached-image)
* specimen = Reference(mii-exa-patho-he-stained-slide-prostate)

Instance: mii-exa-patho-macro-grouper-a
InstanceOf: mii-pr-patho-macroscopic-grouper
Usage: #example
Title: "MII EXA Patho Macro Grouper A"
Description: "Grouper for all Macroscopic Observations of Specimen A (1st punch)"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* code.coding = $LOINC#22634-0 
* hasMember[+] = Reference(mii-exa-patho-biopsy-site-a)
* hasMember[+] = Reference(mii-exa-patho-tissue-length-a)
* specimen = Reference(mii-exa-patho-he-stained-slide-prostate)

// Macro Specimen B
Instance: mii-exa-patho-biopsy-site-b
InstanceOf: mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Biopsy Site B"
Description: "Biopsy site of Specimen B (2nd punch)"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0
* code.coding = $LOINC#94738-2 "Biopsy site Patient"
* valueCodeableConcept = $SCT#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"
* derivedFrom[+] = Reference(mii-exa-patho-attached-image)

Instance: mii-exa-patho-tissue-length-b
InstanceOf: mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Tissue Length B"
Description: "Tissue length of Specimen B (2nd punch)"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 
* code.coding = $LOINC#44619-5 "Length of tissue core(s)"
* valueQuantity.value = 1.5
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm 
* derivedFrom[+] = Reference(mii-exa-patho-attached-image)

Instance: mii-exa-patho-macro-grouper-b
InstanceOf: mii-pr-patho-macroscopic-grouper
Usage: #example
Title: "MII EXA Patho Macro Grouper B"
Description: "Grouper for all Macroscopic Observations of Specimen B (2nd punch)"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* code.coding = $LOINC#22634-0 
* valueString = "Specimen B: Prostataseitenlappen rechts, apikal 1.5cm"
* hasMember[+] = Reference(mii-exa-patho-biopsy-site-b)
* hasMember[+] = Reference(mii-exa-patho-tissue-length-b)

//-------------------------------
// Microscopic Report
//-------------------------------
// Micro Specimen A
Instance: mii-exa-patho-histologic-type-a
InstanceOf: mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Histologic Type A"
Description: "[Microscopic Finding] Histologic type of Specimen A"
* status = #final 
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22635-7
* code = $SCT#371441004 "Histologic type"
* valueCodeableConcept = $SCT#45410002 "Acinar adenocarcinoma"
* specimen = Reference(mii-exa-patho-he-stained-slide-prostate)

Instance: mii-exa-patho-gleason-pattern-a
InstanceOf: mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Gleason Pattern A"
Description: "[Microscopic Finding] Gleason pattern.primary in prostate tumor for Specimen A"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22635-7
* code = $LOINC#44641-9 "Gleason pattern.primary in prostate tumor"
* valueCodeableConcept = $SCT#369772003 "Gleason Pattern 3"
* specimen = Reference(mii-exa-patho-he-stained-slide-prostate)

Instance: mii-exa-patho-micro-grouper-a
InstanceOf: mii-pr-patho-microscopic-grouper
Usage: #example
Title: "MII EXA Patho Micro Grouper A"
Description: "Grouper for all Microscopic Observations of Specimen A"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* code.coding = $LOINC#22635-7 
* valueString = "Specimen A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders..."
* hasMember[+] = Reference(mii-exa-patho-histologic-type-a)
* hasMember[+] = Reference(mii-exa-patho-gleason-pattern-a)
* specimen = Reference(mii-exa-patho-he-stained-slide-prostate)

//-------------------------------
// Diagnostic Conclusion
//-------------------------------
Instance: mii-exa-patho-diagnostic-conclusion-1
InstanceOf: mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Diagnostic Conclusion 1"
Description: "Example for a diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3
* code = $LOINC#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* valueCodeableConcept = $icd-o-3#8140/3 "Adenokarzinom (azinär)"

Instance: mii-exa-patho-diagnostic-conclusion-2
InstanceOf: mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Diagnostic Conclusion 2"
Description: "Example for diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3 
* code = $LOINC#35266-6 "Gleason score in Specimen Qualitative"
* valueCodeableConcept = $SCT#57403001 "Gleason grade score 7"

Instance: mii-exa-patho-diagnostic-conclusion-3
InstanceOf: mii-pr-patho-finding
Usage: #example
Title: "MII EXA Patho Diagnostic Conclusion 3"
Description: "Example for diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3 
* code = $LOINC#94734-1 "Prostate cancer grade group [Score] in Prostate tumor Qualitative"
* valueCodeableConcept = $LOINC#LA9630-0 "Grade 2"

Instance: mii-exa-patho-diagnostic-conclusion-grouper
InstanceOf: mii-pr-patho-diagnostic-conclusion-grouper
Usage: #example
Title: "MII EXA Patho Diagnostic Conclusion Grouper"
Description: "Example for a diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* code.coding = $LOINC#22637-3 
* derivedFrom[+] = Reference(mii-exa-patho-macro-grouper-a)
* derivedFrom[+] = Reference(mii-exa-patho-macro-grouper-b)
* derivedFrom[+] = Reference(mii-exa-patho-micro-grouper-a)
* hasMember[+] = Reference(mii-exa-patho-diagnostic-conclusion-1)
* hasMember[+] = Reference(mii-exa-patho-diagnostic-conclusion-2)
* hasMember[+] = Reference(mii-exa-patho-diagnostic-conclusion-3)



