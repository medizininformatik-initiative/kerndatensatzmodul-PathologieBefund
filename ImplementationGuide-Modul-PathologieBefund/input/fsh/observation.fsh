Alias:   SCT = http://snomed.info/sct
Alias:   LNC = http://loinc.org

Profile: GenerischeBeobachtung
Parent: Observation
Id: generische-beobachtung
Title: "Generische Beobachtung"
Description: "Ressource zur Darstellung der Beobachtungen"
* ^status = #draft

// TODO: soll id oder identifier verpflichtend sein? 
* id MS
* identifier MS

//Status
* status 1..1 MS

// Kategorie auch als Abschnittstyp? 
* category 1..* MS
* category.coding MS
* category.coding ^slicing.discriminator[0].type = #pattern
* category.coding ^slicing.discriminator[0].path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains pathology-observation 1..1
* category.coding[pathology-observation] = LNC#24419-4 "Pathology report gross observation"

// Kodierte Beobachtung
* code 1.. MS

// Befundzeit
* effective[x] 1.. MS
* effective[x] only dateTime or Period

// kodierte Untersuchungsmethode
* method MS

// Referenz zur Probe - TODO: Referenz zum MII Profil ergaenzen
* specimen 1.. MS

// Wert
* value[x] MS
* value[x] only Quantity

//Bodysite
* bodySite MS

// Text - TODO: zu klaeren ob Begrenzung auf Kardinalitaet von Text noetig
* note 0..1 MS

// Referenz eingebettetes Bild - TODO: wird ImagingStudy wirklich benoetigt? 
* derivedFrom MS
* derivedFrom only Reference(Media or ImagingStudy) 

// Referenz zum Untersuchungsauftrag
* basedOn 1..1 MS
* basedOn only Reference(ServiceRequest)

/*

Priorität - Was wird angegeben und womit? E-Mail an Prof. Haroske
            Mit Team nochmal besprechen

*/