//-----------------------------------------
// BasePathologyObservation
//-----------------------------------------
// Entweder neue Base Observation profilieren oder wenn passend Laboruntersuchung aus Modul Labor als Base Observation nehmen
Profile: BasePathologyObservation
Parent: Observation
Id: BasePathologyObservation
Title: "BasePathologyObservation"
Description: "Abstract Observation to define common features of a main pathology observation"
* insert RuleSet1
* ^abstract = true
* id MS
* identifier MS
* basedOn MS 
* basedOn only Reference(PathologyServiceRequest)
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
// Components fuer die Erfassung der Ergebnisse
* component 0.. 
  * code MS
  * value[x] only string or Quantity or CodeableConcept
  * dataAbsentReason MS

//-------------------------------------------
// PathologyFinding
//-------------------------------------------
Profile: PathologyFinding
Parent: BasePathologyObservation
Id: PathologyFinding
Title: "PathologyFinding"
Description: "Instantiable Observation to describe a generic pathology finding, based on IHE PaLM APSR - Additional Specified Observation Section"
* insert RuleSet1
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this.coding"
* category ^slicing.rules = #open
* category ^slicing.description = "Section type"
* category ^slicing.ordered = false
* category contains section-type 1..1 MS
* category[section-type].coding from SectionTypes (required)
* code.coding from $LOINC (preferred)
* value[x] MS
* value[x] only string or Quantity or CodeableConcept
// Moegliche Unterbeobachtungen
* hasMember MS
// Referenz - Eingebettetes Bild
* derivedFrom MS
* derivedFrom only Reference(AttachedImage)

//--------------------------------------------
// Grouper
//--------------------------------------------
Profile: PathologyGrouper
Parent: BasePathologyObservation
Id: PathologyGrouper
Title: "PathologyGrouper"
Description: "Grouper profile for pathological findings"
* insert RuleSet1
* code.coding from SectionTypes (required)
* hasMember 1.. 
* hasMember only Reference(PathologyFinding)

//--------------------------------------------
// IntraoperativeObservation
//--------------------------------------------
Profile: IntraoperativeObservation
Parent: PathologyGrouper
Id: IntraoperativeObservation
Title: "IntraoperativeObservation"
Description: "Based on IHE PaLM APSR - Intraoperative Observation Section"
* insert RuleSet1
* code ^fixedCodeableConcept = $LOINC##83321-0 "Pathology report intraoperative observation in Specimen Document"
// * code.coding ^slicing.discriminator.type = #pattern
// * code.coding ^slicing.discriminator.path = "$this"
// * code.coding ^slicing.rules = #open
// * code.coding contains intraoperative-obs 1..1 MS
// * code.coding[intraoperative-obs] ^patternCoding = $LOINC##83321-0 "Pathology report intraoperative observation in Specimen Document"

//--------------------------------------------
// Macroscopic Observation
//--------------------------------------------
Profile: MacroscopicObservation
Parent: PathologyGrouper
Id: MacroscopicObservation
Title: "MacroscopicObservation"
Description: "Based on IHE PaLM APSR - Macroscopic Observation Finding"
* insert RuleSet1
* code ^fixedCodeableConcept = $LOINC#22634-0 "Pathology report gross observation"
  // * coding ^slicing.discriminator.type = #pattern
  // * coding ^slicing.discriminator.path = "$this"
  // * coding ^slicing.rules = #open
  // * coding contains macroscopic-obs 1..1 MS
  // * coding[macroscopic-obs] ^patternCoding = $LOINC#22634-0 "Pathology report gross observation"

//-------------------------------------
// Microscopic Observation
//-------------------------------------
Profile: MicroscopicObservation
Parent: PathologyGrouper
Id: MicroscopicObservation
Title: "MicroscopicObservation"
Description: "Based on IHE PaLM APSR - Microscopic Observation Finding"
* insert RuleSet1
* code ^fixedCodeableConcept = $LOINC#22635-7 "Pathology report microscopic observation"
  // * coding ^slicing.discriminator.type = #pattern
  // * coding ^slicing.discriminator.path = "$this"
  // * coding ^slicing.rules = #open
  // * coding contains microscopic-obs 1..1 MS
  // * coding[microscopic-obs] ^patternCoding = $LOINC#22635-7 "Pathology report microscopic observation"

//-------------------------------------
// Additional Specified Observations
//-------------------------------------
Profile: AdditionalSpecifiedObservations
Parent: PathologyGrouper
Id: AdditionalSpecifiedObservations
Title: "AdditionalSpecifiedObservations"
Description: "Based on IHE PaLM APSR - Grouper for additional specified Observations"
* insert RuleSet1
* code ^fixedCodeableConcept = $LOINC#81317-0 "Additional pathological findings"  
  // * coding ^slicing.discriminator.type = #pattern
  // * coding ^slicing.discriminator.path = "$this"
  // * coding ^slicing.rules = #open
  // * coding contains additional-obs 1..1 MS
  // * coding[additional-obs] ^patternCoding = $LOINC#81317-0 "Additional pathological findings"

//--------------------------------
// Diagnostic Conclusion
//--------------------------------
Profile: DiagnosticConclusion
Parent: PathologyGrouper	
Id: DiagnosticConclusion
Title: "DiagnosticConclusion"
Description: "Grouper profile to collect Diagnostic Conclusion information"
* insert RuleSet1
* code ^fixedCodeableConcept = $LOINC#22637-3 "Pathology report diagnosis"
  // * coding ^slicing.discriminator.type = #pattern
  // * coding ^slicing.discriminator.path = "$this"
  // * coding ^slicing.rules = #open
  // * coding contains diagnostic-conclusion 1..1 MS
  // * coding[diagnostic-conclusion] ^patternCoding = $LOINC#22637-3 "Pathology report diagnosis"
// Observation the Diagnostic Conclusion derives from
* derivedFrom only Reference(IntraoperativeObservation or MacroscopicObservation or MicroscopicObservation or PathologyFinding)

//---------------------------------
// Examples
//---------------------------------
// Macroscopic Report
//---------------------------------
// Macro Specimen A
Instance: MacroObsBiopsySiteA
InstanceOf: PathologyFinding
Usage: #example
Title: "MacroObsBiopsySiteA"
Description: "Biopsy site of Specimen A (1st punch)"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#94738-2 "Biopsy site"
* valueCodeableConcept = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* derivedFrom[+] = Reference(AttachedImage)

Instance: MacroObsTissueLengthA
InstanceOf: PathologyFinding
Usage: #example
Title: "MacroObsTissueLengthA"
Description: "Tissue length of Specimen A (1st punch)"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#44619-5 "Length of tissue core(s)"
* valueQuantity.value = 1.2
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM 
* valueQuantity.code = #cm
* derivedFrom[+] = Reference(AttachedImage)

Instance: MacroGrouperA
InstanceOf: MacroscopicObservation
Usage: #example
Title: "MacroGrouperA"
Description: "Grouper for all Macroscopic Observations of Specimen A (1st punch)"
* status = #final
* code.coding = $LOINC#22634-0 "Pathology report gross observation"
* valueString = "Specimen A: Prostataseitenlappen rechts, lateral 1.2cm"
* hasMember[+] = Reference(MacroObsBiopsySiteA)
* hasMember[+] = Reference(MacroObsTissueLengthA)

// Macro Specimen B
Instance: MacroObsBiopsySiteB
InstanceOf: PathologyFinding
Usage: #example
Title: "MacroObsBiopsySiteB"
Description: "Biopsy site of Specimen B (2nd punch)"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#94738-2 "Biopsy site"
* valueCodeableConcept = $SCT#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"
* derivedFrom[+] = Reference(AttachedImage)

Instance: MacroObsTissueLengthB
InstanceOf: PathologyFinding
Usage: #example
Title: "MacroObsTissueLengthB"
Description: "Tissue length of Specimen B (2nd punch)"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#44619-5 "Length of tissue core(s)"
* valueQuantity.value = 1.5
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm 
* derivedFrom[+] = Reference(AttachedImage)

Instance: MacroGrouperB
InstanceOf: MacroscopicObservation
Usage: #example
Title: "MacroGrouperB"
Description: "Grouper for all Macroscopic Observations of Specimen B (2nd punch)"
* status = #final
* code.coding = $LOINC#22634-0 "Pathology report gross observation"
* valueString = "Specimen B: Prostataseitenlappen rechts, apikal 1.5cm"
* hasMember[+] = Reference(MacroObsBiopsySiteB)
* hasMember[+] = Reference(MacroObsTissueLengthB)

//-------------------------------
// Microscopic Report
//-------------------------------
// Micro Specimen A
Instance: MicroObsHistologicTypeA
InstanceOf: PathologyFinding
Usage: #example
Title: "MicroObsHistologicTypeA"
Description: "Histologic type of Specimen A"
* status = #final 
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22635-7 "Pathology report microscopic observation"
* code = $SCT#371441004 "Histologic type (observable entity)"
* valueCodeableConcept = $SCT#45410002 "Acinar adenocarcinoma (morphologic abnormality)"

Instance: MicroObsGleasonPatternA
InstanceOf: PathologyFinding
Usage: #example
Title: "MicroObsGleasonPatternA"
Description: "Gleason pattern.primary in prostate tumor for Specimen A"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22635-7 "Pathology report microscopic observation"
* code = $LOINC#44641-9 "Gleason pattern.primary in prostate tumor"
* valueCodeableConcept = $SCT#369772003 "Pattern 3 (staging scale)"

Instance: MicroGrouperA
InstanceOf: MicroscopicObservation
Usage: #example
Title: "MicroGrouperA"
Description: "Grouper for all Microscopic Observations of Specimen A"
* status = #final
* code.coding = $LOINC#22635-7 "Pathology report microscopic observation"
* valueString = "Specimen A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders..."
* hasMember[+] = Reference(MicroObsHistologicTypeA)
* hasMember[+] = Reference(MicroObsGleasonPatternA)

//-------------------------------
// Diagnostic Conclusion
//-------------------------------
Instance: DiagnosticConclusion1
InstanceOf: PathologyFinding
Usage: #example
Title: "DiagnosticConclusion1"
Description: "Example for a diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3 "Pathology report diagnosis"
* code = $LOINC#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* valueCodeableConcept = $icd-o-3#8140/3 "Adenokarzinom (azinär)"

Instance: DiagnosticConclusion2
InstanceOf: PathologyFinding
Usage: #example
Title: "DiagnosticConclusion2"
Description: "Example for diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3 "Pathology report diagnosis"
* code = $LOINC#35266-6 "Gleason score in Specimen Qualitative"
* valueCodeableConcept = $SCT#57403001 "Gleason grade 7 (staging scale)"

Instance: DiagnosticConclusion3
InstanceOf: PathologyFinding
Usage: #example
Title: "DiagnosticConclusion3"
Description: "Example for diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3 "Pathology report diagnosis"
* code = $LOINC#94734-1 "Prostate cancer grade group"
* valueCodeableConcept = $LOINC#LA9630-0 "Grade 2"

Instance: DiagnosticConclusionGrouper
InstanceOf: DiagnosticConclusion
Usage: #example
Title: "DiagnosticConclusionGrouper"
Description: "Example for a diagnostic conclusion"
* status = #final
* code.coding = $LOINC#22637-3 "Pathology report diagnosis"
* derivedFrom[+] = Reference(MacroGrouperA)
* derivedFrom[+] = Reference(MacroGrouperB)
* derivedFrom[+] = Reference(MicroGrouperA)
// * derivedFrom[+] = Reference(MicroGrouperB)
* hasMember[+] = Reference(DiagnosticConclusion1)
* hasMember[+] = Reference(DiagnosticConclusion2)
* hasMember[+] = Reference(DiagnosticConclusion3)
