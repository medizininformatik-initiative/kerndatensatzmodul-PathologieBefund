// SD_MII_Patho_Attached_Image
// Allgemeines Profil für die eingebetteten Bilder
Profile: SD_MII_Patho_Attached_Image
Parent: Media
Id: sd-mii-patho-attached-image
Title: "SD MII Patho Attached Image"
Description: "Profile for attached images"
* insert RuleSet1
* id MS
* meta.lastUpdated MS
* meta.profile MS
* text MS
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
* subject only Reference(sd-mii-patho-specimen)
* content MS

//Example
Instance: ex-mii-patho-attached-image
InstanceOf: SD_MII_Patho_Attached_Image
Usage: #example
Title: "EX MII Patho Attached Image"
Description: "Example for Attached Image"
* status = #completed
* subject = Reference(ex-mii-patho-prostate-tru-cut-biopsy-sample)
* content.contentType = #image/png
* content.url = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/image"