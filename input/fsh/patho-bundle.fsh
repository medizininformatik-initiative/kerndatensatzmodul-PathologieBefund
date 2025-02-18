Profile: MII_PR_Patho_Bundle
Parent: $isik-basis-bericht-bundle
Id: mii-pr-patho-bundle
Title: "MII PR Patho Bundle"
Description: "A Document-Bundle to wrap the composition and other patho-instances into an official document."
* id MS
* meta
  * lastUpdated MS
  * profile MS

* identifier ^comment = "Already mandatory in the parent profile isik-basis-bericht-bundle"
* type ^comment = "Already defined in the parent profile isik-basis-bericht-bundle - fixed value on #document"
* timestamp ^comment = "Already mandatory in the parent profile isik-basis-bericht-bundle"

* entry contains ServiceRequest  0..1 MS 
        and Specimen 1..* MS 
        and DiagnosticReport 1..* MS 
        and Observations 1..* MS
        and Patient 0..1 MS // Mehr als ein Patient? TODO - Definition/Comment 

* entry[Composition] ^comment = "Already defined in the parent profile isik-basis-bericht-bundle - mandatory 1..1"
* entry[Composition].resource ^definition = "Contraint on isik-basis-bericht-subsysteme"
* entry[ServiceRequest].resource only MII_PR_Patho_Service_Request 
* entry[Specimen].resource only MII_PR_Patho_Specimen 
* entry[DiagnosticReport].resource only MII_PR_Patho_Report
* entry[Observations].resource only MII_PR_Patho_Base_Observation
* entry[Observations] ^definition = "For Patho-Grouper and -Findings"
* entry[Patient] ^comment = "To attach a patient is optional"

* signature 1..1 MS

// Profil für ein "Startbundle"?