//-------------------------------------------
// MII_PR_Patho_Finding
//-------------------------------------------
Profile: MII_PR_Patho_Finding
Parent: mii-pr-patho-base-observation
Id: mii-pr-patho-finding
Title: "MII PR Patho Finding"
Description: "Instantiable Observation to describe a generic pathology finding"
* category contains section-type 1..1 MS
* category[section-type] from mii-vs-patho-section-types-loinc (required)
* value[x] MS
* value[x] only string or Quantity or CodeableConcept or Ratio

//---------------------------------
// Example(s)
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