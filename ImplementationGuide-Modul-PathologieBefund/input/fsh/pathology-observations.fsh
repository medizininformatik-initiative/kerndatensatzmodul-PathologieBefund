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
  * coding 1.. MS
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains laboratory-category 1..1 MS
  * coding[laboratory-category] = $obs-category#laboratory
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

//--------------------------------------------
// IntraoperativeObservation
//--------------------------------------------
Profile: IntraoperativeObservation
Parent: PathologyFinding
Id: IntraoperativeObservation
Title: "IntraoperativeObservation"
Description: "Based on IHE PaLM APSR - Intraoperative Observation Section"
* insert RuleSet1
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "category.coding"
* category ^slicing.rules = #open
* category ^slicing.description = "Section type"
* category ^slicing.ordered = false
  * coding contains intraoperative 1..1 MS
  * coding[intraoperative].code ^fixedCode = #83321-0
  * coding[intraoperative].system ^fixedUri = $LOINC
  * coding[intraoperative].display = "Pathology report intraoperative observation in Specimen Document"
// Grouper
* hasMember only Reference(IntraoperativeObservation)

//--------------------------------------------
// Macroscopic Observation
//--------------------------------------------
Profile: MacroscopicObservation
Parent: PathologyFinding
Id: MacroscopicObservation
Title: "MacroscopicObservation"
Description: "Based on IHE PaLM APSR - Macroscopic Observation Finding"
* insert RuleSet1
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "category.coding"
* category ^slicing.rules = #open
* category ^slicing.description = "Section type"
* category ^slicing.ordered = false
  * coding contains macroscopic 1..1 MS
  * coding[macroscopic].code ^fixedCode = #22634-0
  * coding[macroscopic].system ^fixedUri = $LOINC
  * coding[macroscopic].display = "Pathology report gross observation"
// Grouper
* hasMember only Reference(MacroscopicObservation)

//-------------------------------------
// Microscopic Observation
//-------------------------------------
Profile: MicroscopicObservation
Parent: PathologyFinding
Id: MicroscopicObservation
Title: "MicroscopicObservation"
Description: "Based on IHE PaLM APSR - Microscopic Observation Finding"
* insert RuleSet1
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "category.coding"
* category ^slicing.rules = #open
* category ^slicing.description = "Section type"
* category ^slicing.ordered = false
  * coding contains microscopic 1..1 MS
  * coding[microscopic].code ^fixedCode = #22635-7
  * coding[microscopic].system ^fixedUri = $LOINC
  * coding[microscopic].display = "Pathology report microscopic observation"
// Grouper
* hasMember only Reference(MicroscopicObservation)

//--------------------------------
// Diagnostic Conclusion
//--------------------------------
Profile: DiagnosticConclusion
Parent: BasePathologyObservation	
Id: DiagnosticConclusion
Title: "DiagnosticConclusion"
Description: "Grouper profile to collect Diagnostic Conclusion information"
* insert RuleSet1
* code.coding
  * code ^fixedCode = #22637-3
  * system ^fixedUri = $LOINC
  * display ^fixedString = "Pathology report diagnosis"
// Observation the Diagnostic Conclusion derives from
* derivedFrom only Reference(IntraoperativeObservation or MacroscopicObservation or MicroscopicObservation or PathologyFinding or PathologyGrouper)

//---------------------------------
// Examples
//---------------------------------
// Macroscopic Report
//---------------------------------
// Macro Specimen A
Instance: MacroObsBiopsySiteA
InstanceOf: MacroscopicObservation
Usage: #example
Title: "MacroObsBiopsySiteA"
Description: "Biopsy site of Specimen A (1st punch)"
* status = #final
* category[+].coding[macroscopic] = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#94738-2 "Biopsy site"
* valueCodeableConcept = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* derivedFrom[+] = Reference(AttachedImage)

Instance: MacroObsTissueLengthA
InstanceOf: MacroscopicObservation
Usage: #example
Title: "MacroObsTissueLengthA"
Description: "Tissue length of Specimen A (1st punch)"
* status = #final
* category[+].coding[macroscopic] = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#44619-5 "Length of tissue core(s)"
* valueQuantity.value = 1.2
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM 
* valueQuantity.code = #cm
* derivedFrom[+] = Reference(AttachedImage)

Instance: MacroGrouperA
InstanceOf: PathologyGrouper
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
InstanceOf: MacroscopicObservation
Usage: #example
Title: "MacroObsBiopsySiteB"
Description: "Biopsy site of Specimen B (2nd punch)"
* status = #final
* category[+].coding[macroscopic] = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#94738-2 "Biopsy site"
* valueCodeableConcept = $SCT#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"
* derivedFrom[+] = Reference(AttachedImage)

Instance: MacroObsTissueLengthB
InstanceOf: MacroscopicObservation
Usage: #example
Title: "MacroObsTissueLengthB"
Description: "Tissue length of Specimen B (2nd punch)"
* status = #final
* category[+].coding[macroscopic] = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#44619-5 "Length of tissue core(s)"
* valueQuantity.value = 1.5
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm 
* derivedFrom[+] = Reference(AttachedImage)

Instance: MacroGrouperB
InstanceOf: PathologyGrouper
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
InstanceOf: MicroscopicObservation
Usage: #example
Title: "MicroObsHistologicTypeA"
Description: "Histologic type of Specimen A"
* status = #final 
* category[+].coding[microscopic] = $LOINC#22635-7 "Pathology report microscopic observation"
* code = $SCT#371441004 "Histologic type (observable entity)"
* valueCodeableConcept = $SCT#45410002 "Acinar adenocarcinoma (morphologic abnormality)"

Instance: MicroObsGleasonPatternA
InstanceOf: MicroscopicObservation
Usage: #example
Title: "MicroObsGleasonPatternA"
Description: "Gleason pattern.primary in prostate tumor for Specimen A"
* status = #final
* category[+].coding[microscopic] = $LOINC#22635-7 "Pathology report microscopic observation"
* code = $LOINC#44641-9 "Gleason pattern.primary in prostate tumor"
* valueCodeableConcept = $SCT#369772003 "Pattern 3 (staging scale)"

Instance: MicroGrouperA
InstanceOf: PathologyGrouper
Usage: #example
Title: "MicroGrouperA"
Description: "Grouper for all Microscopic Observations of Specimen A"
* status = #final
* code.coding = $LOINC#22635-7 "Pathology report microscopic observation"
* valueString = "Specimen A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders..."
* hasMember[+] = Reference(MicroObsHistologicTypeA)
* hasMember[+] = Reference(MicroObsGleasonPatternA)

// Micro Specimen B
// Instance: MicroGrouperB
// InstanceOf: PathologyGrouper
// Usage: #example
// Title: "MicroGrouperB"
// Description: "Grouper for all Microscopic Observations of Specimen B"
// * status = #final 
// * code.coding = $LOINC#22635-7 "Pathology report microscopic observation"
// * valueString = "Specimen B: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär  und k (Gleason-Muster 3 und 4 (10%)), die sich zwischen ortständige Drüsen schieben und ca. 70% der Schnittfläche des Zylinders (1 von Nervenscheiden und herdförmig kapselüberschreitendes Wachstum mit Infiltration des periprostatischen Fettgewebes."

//-------------------------------
// Diagnostic Conclusion
//-------------------------------
Instance: DiagnosticConclusionExample
InstanceOf: DiagnosticConclusion
Usage: #example
Title: "DiagnosticConclusionExample"
Description: "Example for a diagnostic conclusion"
* status = #final
* code.coding = $LOINC#22637-3 "Pathology report diagnosis"
* derivedFrom[+] = Reference(MacroGrouperA)
* derivedFrom[+] = Reference(MacroGrouperB)
* derivedFrom[+] = Reference(MicroGrouperA)
// * derivedFrom[+] = Reference(MicroGrouperB)
* component[+].code = $SCT#35917007 "Adenocarcinoma, no subtype (morphologic abnormality)"
* component[=].valueString = "Fokal zirkumfentiell wachsenden und stenosierenden Adenocarcinom"
