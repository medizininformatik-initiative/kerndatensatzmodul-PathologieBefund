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
// Code
* code MS
  * coding 1.. MS
    * code 1.. MS
    * system 1.. MS
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
    * system 1.. 
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
// Moegliche Unterbeobachtungen
* hasMember MS
// Referenz - Eingebettetes Bild
* derivedFrom MS
* derivedFrom only Reference(AttachedImage)

//--------------------------------------------
// IntraoperativeObservation
//--------------------------------------------
Profile: IntraoperativeObservation
Parent: PathologyFinding
Id: IntraoperativeObservation
Title: "IntraoperativeObservation"
Description: "Based on IHE PaLM APSR - Intraoperative Observation Section"
* insert RuleSet1
* code.coding 
  * code ^fixedCode = #83321-0 
  * system ^fixedUri = $LOINC
  * display = "Pathology report intraoperative observation in Specimen Document"
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
* code.coding
  * code ^fixedCode = #22634-0
  * system ^fixedUri = $LOINC
  * display ^fixedString = "Pathology report gross observation"
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
* code.coding
  * code ^fixedCode = #22635-7
  * system ^fixedUri = $LOINC
  * display ^fixedString = "Pathology report microscopic observation"
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
* derivedFrom only Reference(IntraoperativeObservation or MacroscopicObservation or MicroscopicObservation or PathologyFinding)

//---------------------------------
// Examples
//---------------------------------

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
* code.coding = $LOINC#22634-0 "Pathology report gross observation"
* derivedFrom[+] = Reference(AttachedImage)
* component[+].code = $LOINC#94738-2 "Biopsy site"
* component[=].valueCodeableConcept = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"

Instance: MacroObsTissueLengthA
InstanceOf: MacroscopicObservation
Usage: #example
Title: "MacroObsTissueLengthA"
Description: "Tissue length of Specimen A (1st punch)"
* status = #final
* code.coding = $LOINC#22634-0 "Pathology report gross observation"
* derivedFrom[+] = Reference(AttachedImage)
* component[+].code = $LOINC#44619-5 "Length of tissue core(s)"
* component[=].valueQuantity.value = 1.2
* component[=].valueQuantity.unit = "cm"
* component[=].valueQuantity.system = $UCUM
* component[=].valueQuantity.code = #cm

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
InstanceOf: MacroscopicObservation
Usage: #example
Title: "MacroObsBiopsySiteB"
Description: "Biopsy site of Specimen B (2nd punch)"
* status = #final
* code.coding = $LOINC#22634-0 "Pathology report gross observation"
* derivedFrom[+] = Reference(AttachedImage)
* component[+].code = $LOINC#94738-2 "Biopsy site"
* component[=].valueCodeableConcept = $SCT#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"

Instance: MacroObsTissueLengthB
InstanceOf: MacroscopicObservation
Usage: #example
Title: "MacroObsTissueLengthB"
Description: "Tissue length of Specimen B (2nd punch)"
* status = #final
* code.coding = $LOINC#22634-0 "Pathology report gross observation"
* derivedFrom[+] = Reference(AttachedImage)
* component[+].code = $LOINC#44619-5 "Length of tissue core(s)"
* component[=].valueQuantity.value = 1.5
* component[=].valueQuantity.unit = "cm"
* component[=].valueQuantity.system = $UCUM
* component[=].valueQuantity.code = #cm

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
InstanceOf: MicroscopicObservation
Usage: #example
Title: "MicroObsHistologicTypeA"
Description: "Histologic type of Specimen A"
* status = #final 
* code.coding = $LOINC#22635-7 "Pathology report microscopic observation"
* component[+].code = $SCT#371441004 "Histologic type (observable entity)"
* component[=].valueCodeableConcept = $SCT#45410002 "Acinar adenocarcinoma (morphologic abnormality)"

Instance: MicroObsGleasonPatternA
InstanceOf: MicroscopicObservation
Usage: #example
Title: "MicroObsGleasonPatternA"
Description: "Gleason pattern.primary in prostate tumor for Specimen A"
* status = #final
* code.coding = $LOINC#22635-7 "Pathology report microscopic observation"
* component[+].code = $LOINC#44641-9 "Gleason pattern.primary in prostate tumor"
* component[=].valueCodeableConcept = $SCT#369772003 "Pattern 3 (staging scale)"

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

Instance: MicroGrouperB
InstanceOf: MicroscopicObservation
Usage: #example
Title: "MicroGrouperB"
Description: "Grouper for all Microscopic Observations of Specimen B"
* status = #final 
* code.coding = $LOINC#22635-7 "Pathology report microscopic observation"
* valueString = "Specimen B: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär  und k (Gleason-Muster 3 und 4 (10%)), die sich zwischen ortständige Drüsen schieben und ca. 70% der Schnittfläche des Zylinders (1 von Nervenscheiden und herdförmig kapselüberschreitendes Wachstum mit Infiltration des periprostatischen Fettgewebes."

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
* derivedFrom[+] = Reference(MicroGrouperB)
* component[+].code = $SCT#35917007 "Adenocarcinoma, no subtype (morphologic abnormality)"
* component[=].valueString = "Fokal zirkumfentiell wachsenden und stenosierenden Adenocarcinom"
