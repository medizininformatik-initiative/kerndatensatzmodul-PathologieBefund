Profile: PathologySpecimen
Parent: $mii-bio-specimencore
Id: PathologySpecimen
Title: "Pathology Specimen"
Description: "tmp"
* insert RuleSet1
* collection
  * method 1.. MS
  * method from Entnahmemethode (extensible)
* request only Reference(PathologyServiceRequest)

Instance: SpecimenExample
InstanceOf: PathologySpecimen
Usage: #example
Title: "SpecimenExample"
Description: "Example for PathologySpecimen"
* status = #available
* identifier
  * type = $v2-0203#FILL "Filler Order Number"
  * value = "E12345_21-A"
* type = $SCT#309134005 " Prostate tru-cut biopsy sample (specimen)"
* subject.reference = "Patient/12345"
* collection
  * collector.reference = "Practitioner/36765"
  * collectedDateTime = "2021-01-29T06:15:00Z"
  * method = $SCT#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
