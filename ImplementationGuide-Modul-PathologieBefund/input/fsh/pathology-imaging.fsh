// SD_MII_Patho_Attached_Image
// Allgemeines Profil für die eingebetteten Bilder
Profile: SD_MII_Patho_Attached_Image
Parent: Media
Id: sd-mii-patho-attached-image
Title: "SD MII Patho Attached Image"
Description: "Profile for attached images"
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
InstanceOf: SD_MII_Patho_Attached_Image
Usage: #example
Title: "ImageExample"
Description: "Exemplarischer Befundbericht - 3"
* status = #completed
* content.contentType = #image/png
* content.url = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/image"