// BasePathologyObservation
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


// PathologyFinding
Profile: PathologyFinding
Parent: BasePathologyObservation
Id: PathologyFinding
Title: "PathologyFinding"
Description: "Concrete Observation to describe a generic pathology finding, based on IHE PaLM APSR - Additional Specified Observation Section"
* insert RuleSet1
// tmp - later custom VS (extensible)
* code.coding from $LOINC (preferred)
// Wert
* value[x] MS
* value[x] only Quantity or CodeableConcept or string
// Moegliche Unterbeobachtungen
* hasMember MS
// Referenz - Eingebettetes Bild
* derivedFrom MS
* derivedFrom only Reference(AttachedImage)

// IntraoperativeObservation
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
* derivedFrom only Reference(AttachedImage)

// Macroscopic Observation
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
// Makro-Bild
* derivedFrom ^slicing.discriminator[0].type = #pattern
* derivedFrom ^slicing.discriminator[0].path = "$this"
* derivedFrom ^slicing.rules = #open
* derivedFrom contains macroscopic-image 0..1 MS
* derivedFrom[macroscopic-image] only Reference(AttachedImage)
// Skizze
* derivedFrom ^slicing.discriminator[1].type = #pattern
* derivedFrom ^slicing.discriminator[1].path = "$this"
* derivedFrom ^slicing.rules = #open
* derivedFrom contains macroscopic-sketch 0..1 MS
* derivedFrom[macroscopic-sketch] only Reference(AttachedImage)

// Microscopic Observation
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
// Mikro-Bild
* derivedFrom ^slicing.discriminator[0].type = #pattern
* derivedFrom ^slicing.discriminator[0].path = "$this"
* derivedFrom ^slicing.rules = #open
* derivedFrom contains microscopic-image 0..1 MS
* derivedFrom[microscopic-image] only Reference(AttachedImage)
// ROI
* derivedFrom ^slicing.discriminator[1].type = #pattern
* derivedFrom ^slicing.discriminator[1].path = "$this"
* derivedFrom ^slicing.rules = #open
* derivedFrom contains microscopic-ROI 0..1 MS
* derivedFrom[microscopic-ROI] only Reference(AttachedImage)

// Diagnostic Conclusion
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



// Examples

Instance: MacroExample
InstanceOf: MacroscopicObservation
Usage: #example
Title: "MacroExample"
Description: "Exemplarischer Befundbericht - 3"
* status = #final
* code.coding = $LOINC#22634-0 "Pathology report gross observation Narrative"
* derivedFrom[macroscopic-image] = Reference(AttachedImage)