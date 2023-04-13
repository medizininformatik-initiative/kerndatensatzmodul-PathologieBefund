//-----------------------------------------
// MII_PR_Patho_Base_Observation
//-----------------------------------------
// Entweder neue Base Observation profilieren oder wenn passend Laboruntersuchung aus Modul Labor als Base Observation nehmen
Profile: MII_PR_Patho_Base_Observation
Parent: Observation
Id: mii-pr-patho-base-observation
Title: "MII PR Patho Base Observation"
Description: "Abstract Observation to define common features of a main pathology observation"
* ^abstract = true
* id MS
* meta.lastUpdated MS
* meta.profile MS
* identifier MS
* basedOn MS 
* basedOn only Reference(ServiceRequest)
* status MS
* category 1.. MS 
  * coding 1.. MS
    * system 1.. MS 
    * code 1.. MS
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
// Referenz - Patient:in
* subject MS
* subject only Reference(Patient)
// Befundzeit
* effective[x] only dateTime
* effectiveDateTime MS
// Koerperstelle
* bodySite MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 0..1 MS
  * coding[sct] from $bio-bodystructure (required)
    * ^patternIdentifier.system = $SCT
    * system 1.. MS
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
* derivedFrom[attached-image] only Reference(mii-pr-patho-attached-image)
* derivedFrom[dicom-image] only Reference(ImagingStudy)
* hasMember MS
// Components fuer die Erfassung der Ergebnisse
* component 0.. 
  * code MS
  * value[x] only string or Quantity or CodeableConcept or Ratio
  * dataAbsentReason MS

//--------------------------------------------
// Grouper
//--------------------------------------------
Profile: MII_PR_Patho_Section_Grouper
Parent: mii-pr-patho-base-observation
Id: mii-pr-patho-section-grouper
Title: "MII PR Patho Section Grouper"
Description: "Grouper profile for pathological findings"
* ^abstract = true
* text MS
* hasMember ^slicing.discriminator.type = #type
* hasMember ^slicing.discriminator.path = "$this.resolve()"
* hasMember ^slicing.rules = #open
* hasMember ^slicing.description = "Reference to pathology findings"
* hasMember ^slicing.ordered = false
* hasMember contains pathology-finding 0..* MS
* hasMember[pathology-finding] only Reference(mii-pr-patho-finding)

