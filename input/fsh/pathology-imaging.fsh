// MII_PR_Patho_Attached_Image
// Allgemeines Profil für die eingebetteten Bilder
Profile: MII_PR_Patho_Attached_Image
Parent: Media
Id: mii-pr-patho-attached-image
Title: "MII PR Patho Attached Image"
Description: "Profile for attached images"
* id MS
* meta.lastUpdated MS
* meta.profile MS
* text MS
* partOf MS
* partOf only Reference(Media)
* status MS
* type 1.. MS
  * coding 1..
  * coding ^slicing.discriminator[0].type = #value
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains image 1..1
  * coding[image] = $media-type#image 
// Referenz kann auch weg, weil die Observations schon drauf verweisen ueber .derivedFrom
* modality MS
* modality from mii-vs-patho-media-modality-snomed-ct (extensible)
* subject MS 
* subject only Reference(mii-pr-patho-specimen)
* content MS

//Example
Instance: mii-exa-patho-attached-image
InstanceOf: mii-pr-patho-attached-image
Usage: #example
Title: "MII EXA Patho Attached Image"
Description: "Example for Attached Image"
* status = #completed
* subject = Reference(mii-exa-patho-prostate-tru-cut-biopsy-sample)
* content.contentType = #image/png
* content.url = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/image"