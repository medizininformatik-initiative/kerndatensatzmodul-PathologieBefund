Profile: PathologySpecimen
//Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore
Parent: Specimen
Id: PathologySpecimen
Title: "PathologySpecimen - Temporary"
Description: "tmp"
* insert RuleSet1
// features from Biobank SpecimenCore
* identifier MS
* status 1.. MS // in Patho nicht verpflichtend..
* type 1.. MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..* 
  * coding[sct] from $bio-probenart (extensible)
    * system = $SCT
* subject 1.. MS
* subject only Reference(Patient)
* parent MS
// COLLECTION
* collection 1.. 
// extension nachtraeglich hinzufuegen
/*
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "$this"
  * extension ^slicing.rules = #open
  * extension contains https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Entnahmeprozedur named entnahmeprozedur 0..1 MS
*/
  * collected[x] 1.. MS
  * bodySite 1.. MS // TODO: add constraint
    * coding ^slicing.discriminator.type = #pattern
    * coding ^slicing.discriminator.path = "$this"
    * coding ^slicing.rules = #open
    * coding contains sct 0..1 MS
    * coding[sct] from $bio-bodystructure (required)
      * system 1.. 
      * system = $SCT
    * coding contains icd-o-3 0..1 MS
    * coding[icd-o-3] from $bio-icd-o-3 (required)
      * system 1..
      * system = $icd-o-3
  * fastingStatusCodeableConcept 0..1 MS 
  * fastingStatusCodeableConcept from $v2-0916 (required)
  // aus Patho
  * method 1.. MS
  * method from Entnahmemethode (extensible)
// PROCESSING
* processing MS
  // aus Patho
  * description MS
  * procedure 1.. MS
    * coding ^slicing.discriminator.type = #pattern 
    * coding ^slicing.discriminator.path = "$this"
    * coding ^slicing.rules = #open
  // Extension $bio-temperaturbedingungen nachtraeglich hinzufuegen
    * coding contains sct 0..* 
    * coding[sct] from Bearbeitungsprozedur (extensible)
  * additive MS 
  //* additive only Reference($mii-bio-additive)
  * timePeriod 0..1 MS
    * start 1.. MS
    * end MS
// CONTAINER
* container 1.. MS
  * capacity MS
  * specimenQuantity MS
  * additive[x] MS
  // * addtive only Reference($mii-bio-additive)
// NOTE
* note MS 
// Direkt aus Patho
* request MS 
* request only Reference(PathologyServiceRequest)
