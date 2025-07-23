//--------------------------------------------
// IntraoperativeObservation
//--------------------------------------------
Profile: MII_PR_Patho_Intraoperative_Grouper
Parent: mii-pr-patho-section-grouper
Id: mii-pr-patho-intraoperative-grouper
Title: "MII PR Patho Intraoperative Grouper"
Description: "Based on IHE PaLM APSR - Intraoperative Observation Section"
* insert PR_CS_VS_Version
* insert Publisher
* code = $LOINC#83321-0

// Example(s) TODO


//--------------------------------------------
// Macroscopic Observation
//--------------------------------------------
Profile: MII_PR_Patho_Macroscopic_Grouper
Parent: mii-pr-patho-section-grouper
Id: mii-pr-patho-macroscopic-grouper
Title: "MII PR Patho Macroscopic Grouper"
Description: "Based on IHE PaLM APSR - Macroscopic Observation Finding"
* insert PR_CS_VS_Version
* insert Publisher
* code = $LOINC#22634-0

// Example(s)
/*
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
*/
Instance: mii-exa-patho-macro-grouper-a
InstanceOf: mii-pr-patho-macroscopic-grouper
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h1>Makroskopische Beurteilung</h1><p><b>Probe A: 1,2 cm langer weißlicher Gewebszylinder aus dem rechten lateralen Prostataseitenlappen peripher </b></p></div>"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* code.coding = $LOINC#22634-0
* status = #final
* hasMember[0] = Reference(Observation/mii-exa-patho-biopsy-site-a)
* hasMember[+] = Reference(Observation/mii-exa-patho-tissue-length-a)



//-------------------------------------
// Microscopic Observation
//-------------------------------------
Profile: MII_PR_Patho_Microscopic_Grouper
Parent: mii-pr-patho-section-grouper
Id: mii-pr-patho-microscopic-grouper
Title: "MII PR Patho Microscopic Grouper"
Description: "Based on IHE PaLM APSR - Microscopic Observation Finding"
* insert PR_CS_VS_Version
* insert Publisher
* code = $LOINC#22635-7

// Example(s)
/*
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
*/

Instance: mii-exa-patho-micro-grouper-a
InstanceOf: mii-pr-patho-microscopic-grouper
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h1>Mikroskopische Beurteilung</h1><p><b>Probe A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders einnehmen</b></p></div>"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* code.coding = $LOINC#22635-7
* status = #final
* valueString = "Specimen A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders..."
* hasMember[0] = Reference(Observation/mii-exa-patho-histologic-type-a)
* hasMember[+] = Reference(Observation/mii-exa-patho-gleason-pattern-a)
* hasMember[+] = Reference(Observation/mii-exa-patho-p63-a)


//--------------------------------------------
// Additional Specified Observations Grouper
//--------------------------------------------
Profile: MII_PR_Patho_Additional_Specified_Grouper
Parent: mii-pr-patho-section-grouper
Id: mii-pr-patho-additional-specified-grouper
Title: "MII PR Patho Additional Specified Grouper"
Description: "Based on IHE PaLM APSR - Grouper for additional specified Observations"
* insert PR_CS_VS_Version
* insert Publisher
* code = $LOINC#100969-5 // not able to validate code yet, should come with next LOINC release & update of FHIR term-server

// Example(s) TODO


//--------------------------------------------
// Diagnostic Conclusion Grouper
//--------------------------------------------
Profile: MII_PR_Patho_Diagnostic_Conclusion_Grouper
Parent: mii-pr-patho-section-grouper	
Id: mii-pr-patho-diagnostic-conclusion-grouper
Title: "MII PR Patho Diagnostic Conclusion Grouper"
Description: "Grouper profile to collect Diagnostic Conclusion information"
* insert PR_CS_VS_Version
* insert Publisher
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

// Example(s)
/*
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
*/

Instance: mii-exa-patho-diagnostic-conclusion-grouper
InstanceOf: mii-pr-patho-diagnostic-conclusion-grouper
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h1>Zusammenfassende Beurteilung</h1><p><b>Azinäres Adenokarzinom der Prostata im untersuchten Stanzzylinder, Gleason-Score 3+3=6, ISUP Gradgruppe 1</b></p></div>"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* code.coding = $LOINC#22637-3
* status = #final
* derivedFrom[0] = Reference(Observation/mii-exa-patho-macro-grouper-a)
* derivedFrom[+] = Reference(Observation/mii-exa-patho-micro-grouper-a)
* hasMember[0] = Reference(Observation/mii-exa-patho-diagnostic-conclusion-1)
* hasMember[+] = Reference(Observation/mii-exa-patho-diagnostic-conclusion-2)
* hasMember[+] = Reference(Observation/mii-exa-patho-diagnostic-conclusion-3)
