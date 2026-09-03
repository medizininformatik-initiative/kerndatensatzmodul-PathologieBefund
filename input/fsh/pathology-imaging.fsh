// MII_PR_Patho_Attached_Image
// Allgemeines Profil für die eingebetteten Bilder
Profile: MII_PR_Patho_Attached_Image
Parent: Media
Id: mii-pr-patho-attached-image
Title: "MII PR Patho Attached Image"
Description: """
Mit dem Profil **MII PR Patho Attached Image** der Ressource Media wird  die Beschreibung von in den Befund, d.h. den [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html), eingebetteten Bildern vorgenommen. Um Bilder in [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) einzubinden, muss auf eine Referenz zu einer ImagingStudy zurückgegriffen werden. Das vorliegende Profil sollte vorzugsweise nur zur "Illustration" eines Pathologiebefundberichts verwendet werden.
"""
* insert PR_CS_VS_Version
* insert Publisher
* insert Translation(^title, de-DE, MII PR Patho Angefügtes Bild)
* insert Translation(^title, en-US, MII PR Patho Attached Image)
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[+].url = "lang"
* ^description.extension[=].extension[=].valueCode = #en-US
* ^description.extension[=].extension[+].url = "content"
* ^description.extension[=].extension[=].valueString = """
The **MII PR Patho Attached Image** profile of the Media resource is used to describe images embedded in the report, i.e. the [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html). To include images in [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html), a reference to an ImagingStudy must be used. The present profile should preferably only be used for the "illustration" of a pathology report.
"""
* id MS
* meta.lastUpdated MS
* meta.profile MS
* text MS
* partOf MS
* insert Label(partOf, Teil von, Verweis auf übergeordnetes Medium)
* insert Translation(partOf ^short, de-DE, Teil von)
* insert Translation(partOf ^short, en-US, Part of)
* insert Translation(partOf ^definition, de-DE, Verweis auf übergeordnetes Medium)
* insert Translation(partOf ^definition, en-US, Reference to parent medium)
* partOf only Reference(Media)
* status MS
* insert Label(status, Status, Status des Mediums)
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, Status)
* insert Translation(status ^definition, de-DE, Status des Mediums)
* insert Translation(status ^definition, en-US, Status of the medium)
* type 1.. MS
  * coding 1..
  * coding ^slicing.discriminator[0].type = #value
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains image 1..1
  * coding[image] = $media-type#image 
* insert Label(type, Typ, Typ des Mediums)
* insert Translation(type ^short, de-DE, Typ)
* insert Translation(type ^short, en-US, Type)
* insert Translation(type ^definition, de-DE, Typ des Mediums)
* insert Translation(type ^definition, en-US, Type of medium)

// Referenz kann auch weg, weil die Observations schon drauf verweisen ueber .derivedFrom
* modality MS
* insert Label(modality, Modalität, Bildgebungsmodalität)
* insert Translation(modality ^short, de-DE, Modalität)
* insert Translation(modality ^short, en-US, Modality)
* insert Translation(modality ^definition, de-DE, Bildgebungsmodalität)
* insert Translation(modality ^definition, en-US, Imaging modality)
* modality from mii-vs-patho-media-modality-snomed-ct (extensible)
* subject MS
* insert Label(subject, Gegenstand, Verweis auf die abgebildete Probe)
* insert Translation(subject ^short, de-DE, Gegenstand)
* insert Translation(subject ^short, en-US, Subject)
* insert Translation(subject ^definition, de-DE, Verweis auf die abgebildete Probe)
* insert Translation(subject ^definition, en-US, Reference to the depicted specimen) 
* subject only Reference(mii-pr-patho-specimen)
* content MS
* insert Label(content, Inhalt, Daten des Bildes)
* insert Translation(content ^short, de-DE, Inhalt)
* insert Translation(content ^short, en-US, Content)
* insert Translation(content ^definition, de-DE, Daten des Bildes)
* insert Translation(content ^definition, en-US, Data of the image)

//Example
Instance: mii-exa-patho-attached-image
InstanceOf: mii-pr-patho-attached-image
Usage: #example
Title: "MII EXA Patho Attached Image"
Description: "Example for Attached Image"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-attached-image|2027.0.0-ballot.rc1"
* status = #completed
* subject = Reference(mii-exa-patho-prostate-tru-cut-biopsy-sample)
* content.url = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/image"