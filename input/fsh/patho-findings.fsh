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
* insert Translation(^title, de-DE, MII PR Patho Befund)
* insert Translation(^title, en-US, MII PR Patho Finding)
* insert Translation(^description, de-DE, Instanziierbare Beobachtung zur Beschreibung eines generischen pathologischen Befunds)
* insert Translation(^description, en-US, Instantiable Observation to describe a generic pathology finding)
* insert Label(identifier, Identifikator, Eindeutiger Identifikator)
* insert Translation(identifier ^short, de-DE, Identifikator)
* insert Translation(identifier ^short, en-US, Identifier)
* insert Translation(identifier ^definition, de-DE, Eindeutiger Identifikator)
* insert Translation(identifier ^definition, en-US, Unique identifier)
* insert Label(basedOn, Untersuchungsauftrag, Verweis auf den Untersuchungsauftrag)
* insert Translation(basedOn ^short, de-DE, Untersuchungsauftrag)
* insert Translation(basedOn ^short, en-US, Request)
* insert Translation(basedOn ^definition, de-DE, Verweis auf den Untersuchungsauftrag)
* insert Translation(basedOn ^definition, en-US, Reference to the request)
* insert Label(status, Status, Status der Beobachtung)
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, Status)
* insert Translation(status ^definition, de-DE, Status der Beobachtung)
* insert Translation(status ^definition, en-US, Status of the observation)
* insert Label(category, Kategorie, Klassifikation der Art der Beobachtung)
* insert Translation(category ^short, de-DE, Kategorie)
* insert Translation(category ^short, en-US, Category)
* insert Translation(category ^definition, de-DE, Klassifikation der Art der Beobachtung)
* insert Translation(category ^definition, en-US, Classification of type of observation)
* insert Label(code, Code, Art der durchgeführten Beobachtung)
* insert Translation(code ^short, de-DE, Code)
* insert Translation(code ^short, en-US, Code)
* insert Translation(code ^definition, de-DE, Art der durchgeführten Beobachtung)
* insert Translation(code ^definition, en-US, Type of observation)
* insert Label(subject, Patient, Patient für den die Beobachtung durchgeführt wurde)
* insert Translation(subject ^short, de-DE, Patient)
* insert Translation(subject ^short, en-US, Subject)
* insert Translation(subject ^definition, de-DE, Patient für den die Beobachtung durchgeführt wurde)
* insert Translation(subject ^definition, en-US, Patient for whom the observation was performed)
* insert Label(effectiveDateTime, Befundzeit, Zeitpunkt der Beobachtung)
* insert Translation(effectiveDateTime ^short, de-DE, Befundzeit)
* insert Translation(effectiveDateTime ^short, en-US, Effective time)
* insert Translation(effectiveDateTime ^definition, de-DE, Zeitpunkt der Beobachtung)
* insert Translation(effectiveDateTime ^definition, en-US, Time of observation)
* insert Label(bodySite, Körperstelle, Anatomische Stelle der Beobachtung)
* insert Translation(bodySite ^short, de-DE, Körperstelle)
* insert Translation(bodySite ^short, en-US, Body site)
* insert Translation(bodySite ^definition, de-DE, Anatomische Stelle der Beobachtung)
* insert Translation(bodySite ^definition, en-US, Anatomical site of observation)
* insert Label(method, Methode, Untersuchungsmethode)
* insert Translation(method ^short, de-DE, Methode)
* insert Translation(method ^short, en-US, Method)
* insert Translation(method ^definition, de-DE, Untersuchungsmethode)
* insert Translation(method ^definition, en-US, Examination method)
* insert Label(specimen, Probe, Referenz zur untersuchten Probe)
* insert Translation(specimen ^short, de-DE, Probe)
* insert Translation(specimen ^short, en-US, Specimen)
* insert Translation(specimen ^definition, de-DE, Referenz zur untersuchten Probe)
* insert Translation(specimen ^definition, en-US, Reference to examined specimen)
* insert Label(hasMember, Hat Mitglied, Verwandte Beobachtungen)
* insert Translation(hasMember ^short, de-DE, Hat Mitglied)
* insert Translation(hasMember ^short, en-US, Has member)
* insert Translation(hasMember ^definition, de-DE, Verwandte Beobachtungen)
* insert Translation(hasMember ^definition, en-US, Related observations)
* insert Label(derivedFrom, Abgeleitet von, Quelle der abgeleiteten Beobachtung)
* insert Translation(derivedFrom ^short, de-DE, Abgeleitet von)
* insert Translation(derivedFrom ^short, en-US, Derived from)
* insert Translation(derivedFrom ^definition, de-DE, Quelle der abgeleiteten Beobachtung)
* insert Translation(derivedFrom ^definition, en-US, Source of derived observation)
* insert Label(component.code, Komponenten-Code, Code der Komponente)
* insert Translation(component.code ^short, de-DE, Komponenten-Code)
* insert Translation(component.code ^short, en-US, Component code)
* insert Translation(component.code ^definition, de-DE, Code der Komponente)
* insert Translation(component.code ^definition, en-US, Code of component)
* insert Label(component.dataAbsentReason, Grund für fehlende Daten, Grund warum Komponentenwert fehlt)
* insert Translation(component.dataAbsentReason ^short, de-DE, Grund für fehlende Daten)
* insert Translation(component.dataAbsentReason ^short, en-US, Data absent reason)
* insert Translation(component.dataAbsentReason ^definition, de-DE, Grund warum Komponentenwert fehlt)
* insert Translation(component.dataAbsentReason ^definition, en-US, Reason why component value is missing)
* category contains section-type 1..1 MS
* insert Label(category[section-type], Abschnittstyp, Typ des pathologischen Abschnitts)
* insert Translation(category[section-type] ^short, de-DE, Abschnittstyp)
* insert Translation(category[section-type] ^short, en-US, Section type)
* insert Translation(category[section-type] ^definition, de-DE, Typ des pathologischen Abschnitts)
* insert Translation(category[section-type] ^definition, en-US, Type of pathological section)
* category[section-type] from mii-vs-patho-section-types-loinc (required)
* value[x] MS
* insert Label(value[x], Wert, Wert der Beobachtung)
* insert Translation(value[x] ^short, de-DE, Wert)
* insert Translation(value[x] ^short, en-US, Value)
* insert Translation(value[x] ^definition, de-DE, Wert der Beobachtung)
* insert Translation(value[x] ^definition, en-US, Value of the observation)
* value[x] only string or Quantity or CodeableConcept or Ratio or Range

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
//* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
//* code.extension.valueUrl = "#macro-a-tissue-length-key"
* valueQuantity.value = 1.2
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm 
//* valueQuantity.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
//* valueQuantity.extension.valueUrl = "#macro-a-tissue-length-value"
* specimen = Reference(Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample)
* derivedFrom[+] = Reference(mii-exa-patho-attached-image)

Instance: mii-exa-patho-biopsy-site-a
InstanceOf: mii-pr-patho-finding
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 
* status = #final
* code.coding = $LOINC#94738-2 "Biopsy site Patient"
//* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
//* code.extension.valueUrl = "#macro-a-biopsy-site-key"
* valueCodeableConcept = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
//* valueCodeableConcept.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
//* valueCodeableConcept.extension.valueUrl = "#macro-a-biopsy-site-value"
* specimen = Reference(Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample)
// Warum nicht specimen.bodysite?? Bei Pool-specimen fehlt die .bodysite!!

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
* code = $LOINC#101548-6 //"P63 protein [Interpretation] in Blood or Tissue Qualitative"
//* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
//* code.extension.valueUrl = "#micro-a-p63-key"
* valueCodeableConcept = $LOINC#LA11883-8 ///"Not detected"
* valueCodeableConcept.text = "Die Tumorzellen sind negativ für p63"
* specimen = Reference(Specimen/mii-exa-patho-prostate-biopsy-schnitt-p63)

Instance: mii-exa-patho-gleason-pattern-a
InstanceOf: mii-pr-patho-finding
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22635-7
* status = #final
* code = $LOINC#44641-9 //"Gleason pattern.primary in Prostate tumor"
//* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
//* code.extension.valueUrl = "#micro-a-gleason-pattern-key"
* valueCodeableConcept = $SCT#369772003 //"Gleason Pattern 3"
* specimen = Reference(Specimen/mii-exa-patho-prostate-biopsy-schnitt-HE)

// hier fehlt secondary Gleason Pattern - kann sein dass es bei drei redundant ist


Instance: mii-exa-patho-histologic-type-a
InstanceOf: mii-pr-patho-finding
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-finding"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22635-7
* status = #final
* code = $SCT#371441004 //"Histologic type" // z.B. LOINC Code "presence of Acinar adenocarcinoma"
//* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
//* code.extension.valueUrl = "#micro-a-histologic-type-key"
* valueCodeableConcept = $SCT#45410002 //"Acinar adenocarcinoma" // hier icd-0-3 morphology?
* specimen = Reference(Specimen/mii-exa-patho-prostate-biopsy-schnitt-HE)

// Negativbesipiel von unauffälliger Stanze!

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
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3
* status = #final
* code = $LOINC#59847-4 //"Histology and Behavior ICD-O-3 Cancer"
//* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink" 
//* code.extension.valueUrl = "#diagnostic-conclusion-icdo-3-key"
* valueCodeableConcept = $icd-o-3#8140/3 "Adenokarzinom o.n.A."


Instance: mii-exa-patho-diagnostic-conclusion-2
InstanceOf: mii-pr-patho-finding
Usage: #example
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3
* status = #final
* code = $LOINC#35266-6 //"Gleason score in Specimen Qualitative"
//* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
//* code.extension.valueUrl = "#diagnostic-conclusion-gleason-score-key"
* valueCodeableConcept = $SCT#84556003 // "Gleason grade score 6 out of 10 (finding)"

Instance: mii-exa-patho-diagnostic-conclusion-3
InstanceOf: mii-pr-patho-finding
Usage: #example
* category[laboratory-category].coding = $cs-obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3
* status = #final
* code = $LOINC#94734-1 //"Prostate cancer grade group [Score] in Prostate tumor Qualitative"
//* code.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
//* code.extension.valueUrl = "#diagnostic-conclusion-isup-grade-group-key"
* valueCodeableConcept = $LOINC#LA30794-4 "ISUP Grade (Grade Group) 1 (Gleason score <=6)"