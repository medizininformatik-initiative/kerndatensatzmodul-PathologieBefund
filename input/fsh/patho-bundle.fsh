Profile: MII_PR_Patho_Bundle
Parent: $isik-basis-bericht-bundle
Id: mii-pr-patho-bundle
Title: "MII PR Patho Bundle"
Description: "A Document-Bundle to wrap the composition and other patho-instances into one official document."
* id MS
* meta
  * lastUpdated MS
  * profile MS

* entry contains ServiceRequest  0..1 MS 
        //and Composition 1..1 MS 
        and Specimen 1..* MS 
        and DiagnosticReport 1..* MS 
        and Finding 1..* MS
// Patient 1..1 MS? Encounter?
// * entry[Composition]
* entry[ServiceRequest].resource only MII_PR_Patho_Service_Request 
* entry[Specimen].resource only MII_PR_Patho_Specimen 
* entry[DiagnosticReport].resource only MII_PR_Patho_Report
// * entry[Finding].resource only MII_PR_Patho_Finding

* signature 1..1 MS