//-------------------------------------------
// MII_PR_Patho_Finding
//-------------------------------------------
Profile: MII_PR_Patho_Finding
Parent: mii-pr-patho-base-observation
Id: mii-pr-patho-finding
Title: "MII PR Patho Finding"
Description: "Instantiable Observation to describe a generic pathology finding"
* insert PR_CS_VS_Version
* insert Publisher
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
/*
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
*/
Instance: mii-exa-patho-tissue-length-a
InstanceOf: mii-pr-patho-finding
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 
* status = #final
* code.coding = $LOINC#44619-5 "Length of tissue core(s)"
* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
* code.extension.valueUrl = "#macro-a-tissue-length-key"
* valueQuantity.value = 1.2
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm 
* valueQuantity.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
* valueQuantity.extension.valueUrl = "#macro-a-tissue-length-value"
* specimen = Reference(Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample)
//* derivedFrom[+] = Reference(mii-exa-patho-attached-image) - fehlt in den neuen Beispielen!

Instance: mii-exa-patho-biopsy-site-a
InstanceOf: mii-pr-patho-finding
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 
* status = #final
* code.coding = $LOINC#94738-2 "Biopsy site Patient"
* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
* code.extension.valueUrl = "#macro-a-biopsy-site-key"
* valueCodeableConcept = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
* valueCodeableConcept.extension.valueUrl = "#macro-a-biopsy-site-value"
* specimen = Reference(Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample)

//-------------------------------
// Microscopic Report
//-------------------------------
/*
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
*/
Instance: mii-exa-patho-p63-a
InstanceOf: mii-pr-patho-finding
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22635-7
* status = #final
* code = $LOINC#101548-6 "P63 protein [Interpretation] in Blood or Tissue Qualitative"
* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
* code.extension.valueUrl = "#micro-a-p63-key"
* valueCodeableConcept = $LOINC#LA11883-8 "Not detected"
* valueCodeableConcept.text = "Die Tumorzellen sind negativ für p63"
* specimen = Reference(Specimen/mii-exa-patho-prostate-biopsy-schnitt-p63)

Instance: mii-exa-patho-gleason-pattern-a
InstanceOf: mii-pr-patho-finding
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22635-7
* status = #final
* code = $LOINC#44641-9 "Gleason pattern.primary in prostate tumor"
* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
* code.extension.valueUrl = "#micro-a-gleason-pattern-key"
* valueCodeableConcept = $SCT#369772003 "Gleason Pattern 3"
* specimen = Reference(Specimen/mii-exa-patho-prostate-biopsy-schnitt-HE)

// hier fehlt secodnary Gleason Pattern - kann sein dass es bei drei redudnatn ist, trotzdem


Instance: mii-exa-patho-histologic-type-a
InstanceOf: mii-pr-patho-finding
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22635-7
* status = #final
* code = $SCT#371441004 "Histologic type"
* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
* code.extension.valueUrl = "#micro-a-histologic-type-key"
* valueCodeableConcept = $SCT#45410002 "Acinar adenocarcinoma" // hier icd-0-3 morphology?
* specimen = Reference(Specimen/mii-exa-patho-prostate-biopsy-schnitt-HE)

// Negativbesipiel von unauffälliger Stanze!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

//-------------------------------
// Diagnostic Conclusion
//-------------------------------
/* Instance: mii-exa-patho-diagnostic-conclusion-1
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
*/
Instance: mii-exa-patho-diagnostic-conclusion-1
InstanceOf: mii-pr-patho-finding
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding" // ?
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3
* status = #final
* code = $LOINC#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"  // ?
* code.extension.valueUrl = "#diagnostic-conclusion-icdo-3-key"
* valueCodeableConcept = $icd-o-3#8140/3 "Adenokarzinom (azinär)"

Instance: mii-exa-patho-diagnostic-conclusion-2
InstanceOf: mii-pr-patho-finding
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3
* status = #final
* code = $LOINC#35266-6 "Gleason score in Specimen Qualitative"
* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
* code.extension.valueUrl = "#diagnostic-conclusion-gleason-score-key"
* valueCodeableConcept = $SCT#84556003 "Gleason grade score 6 out of 10 (finding)"

Instance: mii-exa-patho-diagnostic-conclusion-3
InstanceOf: mii-pr-patho-finding
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3
* status = #final
* code = $LOINC#94734-1 "Prostate cancer grade group [Score] in Prostate tumor Qualitative"
* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
* code.extension.valueUrl = "#diagnostic-conclusion-isup-grade-group-key"
* valueCodeableConcept = $LOINC#LA30794-4 "Grade 1"