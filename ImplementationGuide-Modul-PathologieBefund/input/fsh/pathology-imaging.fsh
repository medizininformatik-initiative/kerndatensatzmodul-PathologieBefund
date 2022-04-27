// AttachedImage
// Allgemeines Profil für die eingebetteten Bilder
Profile: AttachedImage
Parent: Media
Id: AttachedImage
Title: "AttachedImage"
Description: "Allgemeines Profil für eingebettetes Bild"
* insert RuleSet1
* id MS
* partOf MS
* partOf only Reference(Media)
* status MS
* type 1.. MS
  * coding 1.. MS
  * coding ^slicing.discriminator[0].type = #value
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains image 1..1 MS
  * coding[image] = $media-type#image 
// Referenz kann auch weg, weil die Observations schon drauf verweisen ueber .derivedFrom
* subject MS 
* subject only Reference(SD_MII_Patho_Specimen)
* content MS

//Example
Instance: ImageExample
InstanceOf: AttachedImage
Usage: #example
Title: "ImageExample"
Description: "Exemplarischer Befundbericht - 3"
* status = #completed
* content.contentType = #image/png
* content.url = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/image"