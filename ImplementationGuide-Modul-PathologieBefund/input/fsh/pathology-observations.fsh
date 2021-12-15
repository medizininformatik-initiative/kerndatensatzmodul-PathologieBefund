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
* component 1.. 
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
Description: "Concrete Observation to describe a generic pathology finding, based on IHE PaLM APSR - Additional Specified Observation Section"
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
  * display ^fixedString = "Pathology report gross observation Narrative"
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
  * display ^fixedString = "Pathology report microscopic observation Narrative Other stain"
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
Instance: MacroTumorSizeDim1
InstanceOf: MacroscopicObservation
Usage: #example
Title: "MacroTumorSizeDim1"
Description: "Example for a macroscopic Observation - first dimension of tumor size"
* status = #final
* code.coding = $LOINC#22634-0 "Pathology report gross observation Narrative"
* derivedFrom[+] = Reference(AttachedImage)
* component[+].code = $SCT#372299002 "Tumor size, dimension 1"
* component[=].valueQuantity.value = 25
* component[=].valueQuantity.unit = "mm"
* component[=].valueQuantity.system = $UCUM
* component[=].valueQuantity.code = #mm

Instance: MacroTumorSizeDim2
InstanceOf: MacroscopicObservation
Usage: #example
Title: "MacroTumorSizeDim2"
Description: "Example for a macroscopic Observation - second dimension of tumor size"
* status = #final
* code.coding = $LOINC#22634-0 "Pathology report gross observation Narrative"
* derivedFrom[+] = Reference(AttachedImage)
* component[+].code = $SCT#372300005 "Tumor size, dimension 2"
* component[=].valueQuantity.value = 30
* component[=].valueQuantity.unit = "mm"
* component[=].valueQuantity.system = $UCUM
* component[=].valueQuantity.code = #mm

Instance: MacroTumorSizeDim3
InstanceOf: MacroscopicObservation
Usage: #example
Title: "MacroTumorSizeDim3"
Description: "Example for a macroscopic Observation - third dimension of tumor size"
* status = #final
* code.coding = $LOINC#22634-0 "Pathology report gross observation Narrative"
* derivedFrom[+] = Reference(AttachedImage)
* component[+].code = $SCT#372301009 "Tumor size, dimension 3"
* component[=].valueQuantity.value = 7
* component[=].valueQuantity.unit = "mm"
* component[=].valueQuantity.system = $UCUM
* component[=].valueQuantity.code = #mm

Instance: DiagnosticConclusion1
InstanceOf: DiagnosticConclusion
Usage: #example
Title: "DiagnosticConclusion1"
Description: "Example for a diagnostic conclusion"
* status = #final
* code.coding = $LOINC#22637-3 "Pathology report diagnosis"
* derivedFrom[+] = Reference(MacroTumorSizeDim1)
* derivedFrom[+] = Reference(MacroTumorSizeDim2)
* derivedFrom[+] = Reference(MacroTumorSizeDim3)
* component[+].code = $SCT#35917007 "Adenocarcinoma, no subtype (morphologic abnormality)"
* component[=].valueString = "Fokal zirkumfentiell wachsenden und stenosierenden Adenocarcinom"
