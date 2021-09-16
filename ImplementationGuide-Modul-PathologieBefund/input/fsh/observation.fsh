Alias:   SCT = http://snomed.info/sct
Alias:   LNC = http://loinc.org

Profile: GenerischeBeobachtung
Parent: Observation
Id: generische-beobachtung
Title: "Generische Beobachtung"
Description: "?"
* ^status = #draft

* id MS
* identifier 1.. MS

//Status
* status 1..1 MS

// Befundzeit
* effective[x] 1..
* effective[x] only dateTime or Period

// Untersuchungsmethode
* method 0..1

// Referenz zur Probe
* specimen 1.. MS
* specimen only Reference(Specimen)

// Wert
* value[x] 0..1 MS
* value[x] only Quantity

//Bodysite
* bodySite 0..1

// Text
* note 0..1


// Referenz eingebettetes Bild
* derivedFrom 0..* MS
* derivedFrom only Reference(Media or ImagingStudy) 

* derivedFrom ^slicing.discriminator.type = #type
* derivedFrom ^slicing.discriminator[0].path = "Media"
* derivedFrom ^slicing.discriminator[1].path = "ImagingStudy"
* derivedFrom ^slicing.discriminator[2].path = "Observation"
* derivedFrom ^slicing.rules = #open
* derivedFrom contains 
    Media 0..* and
    ImagingStudy 0..* and
    Observation 0..*  

//* derivedFrom[Media] contains //noch zu klären
    //Was brauchen wir alles von Media?

//* derivedFrom[ImagingStudy] contains //noch zu klären
    //...

* basedOn 1..1 MS
* basedOn only Reference(ServiceRequest)
    

* code 1.. MS
* code.coding.system and 
    code.coding.code and 
    code.coding.display MS

* code ^slicing.discriminator[0].type = #pattern
* code ^slicing.discriminator[0].path = "$this"
* code ^slicing.rules = #open
* code contains pathology-observation 1..1
* code[pathology-observation] = LNC#24419-4 "Pathology report gross observation"

* category 1..1
// category from

/*

Priorität - Was wird angegeben und womit? E-Mail an Prof. Haroske
            Mit Team nochmal besprechen, Grundlage ist die Email von Prof. Haroske

*/