Profile: MII_PR_Patho_Bundle
Parent: $isik-basis-bericht-bundle
Id: mii-pr-patho-bundle
Title: "MII PR Patho Bundle"
Description: "A Document-Bundle to wrap the composition and other patho-instances into an official document."
* insert PR_CS_VS_Version
* insert Publisher
* insert Translation(^title, de-DE, MII PR Patho Bundle)
* insert Translation(^title, en-US, MII PR Patho Bundle)
* insert Translation(^description, de-DE, Dokumenten-Bundle zum Zusammenfügen der Composition und anderer Pathologie-Instanzen in ein offizielles Dokument)
* insert Translation(^description, en-US, A Document-Bundle to wrap the composition and other patho-instances into an official document)
* id MS
* meta
  * lastUpdated MS
  * profile MS

* identifier ^comment = "Already mandatory in the parent profile isik-basis-bericht-bundle"
* insert Label(identifier, Identifikator, Eindeutiger Identifikator des Bundles)
* insert Translation(identifier ^short, de-DE, Identifikator)
* insert Translation(identifier ^short, en-US, Identifier)
* insert Translation(identifier ^definition, de-DE, Eindeutiger Identifikator des Bundles)
* insert Translation(identifier ^definition, en-US, Unique identifier of the bundle)
* type ^comment = "Already defined in the parent profile isik-basis-bericht-bundle - fixed value on #document"
* insert Label(type, Art des Bundles, festgelegt auf den Wert document)
* insert Translation(type ^short, de-DE, Art des Bundles)
* insert Translation(type ^short, en-US, fixed value on #document)
* insert Translation(type ^definition, de-DE, festgelegt auf den Wert document)
* insert Translation(type ^definition, en-US, fixed value on #document)
* timestamp ^comment = "Already mandatory in the parent profile isik-basis-bericht-bundle"
* insert Label(timestamp, Zeitstempel, Erstellungszeitpunkt des Bundles)
* insert Translation(timestamp ^short, de-DE, Zeitstempel)
* insert Translation(timestamp ^short, en-US, Timestamp)
* insert Translation(timestamp ^definition, de-DE, Erstellungszeitpunkt des Bundles)
* insert Translation(timestamp ^definition, en-US, Creation time of the bundle)

* entry[Patient] ^comment = "Already mandatory in the parent profile isik-basis-bericht-bundle"
* insert Label(entry[Patient], Slice für Patient, Slice zur Hinterlegung der zugehörigen Patient-Instanz)
* insert Translation(entry[Patient] ^short, de-DE, Slice für Patient)
* insert Translation(entry[Patient] ^short, en-US, Patient entry)
* insert Translation(entry[Patient] ^definition, de-DE, Slice zur Hinterlegung der zugehörigen Patient-Instanz)
* insert Translation(entry[Patient] ^definition, en-US, Entry for the patient)
* entry contains ServiceRequest  0..1 MS and Specimen 1..* MS and DiagnosticReport 1..* MS and Observations 1..* MS
* insert Label(entry[ServiceRequest], Slice für ServiceRequest, Slice zur Hinterlegung der zugehörigen ServiceRequest-Instanz)
* insert Translation(entry[ServiceRequest] ^short, de-DE, Slice für ServiceRequest)
* insert Translation(entry[ServiceRequest] ^short, en-US, ServiceRequest entry)
* insert Translation(entry[ServiceRequest] ^definition, de-DE, Slice zur Hinterlegung der zugehörigen ServiceRequest-Instanz)
* insert Translation(entry[ServiceRequest] ^definition, en-US, Entry for the examination request) 

* insert Label(entry[Specimen], Slice für Specimen, Slice zur Hinterlegung der zugehörigen Specimen-Instanz)
* insert Translation(entry[Specimen] ^short, de-DE, Slice für Specimen)
* insert Translation(entry[Specimen] ^short, en-US, Specimen entry)
* insert Translation(entry[Specimen] ^definition, de-DE, Slice zur Hinterlegung der zugehörigen Specimen-Instanz)
* insert Translation(entry[Specimen] ^definition, en-US, Entry for the specimens) 

* insert Label(entry[DiagnosticReport], Slice für DiagnosticReport, Slice zur Hinterlegung der zugehörigen DiagnosticReport-Instanz)
* insert Translation(entry[DiagnosticReport] ^short, de-DE, Slice für DiagnosticReport)
* insert Translation(entry[DiagnosticReport] ^short, en-US, DiagnosticReport entry)
* insert Translation(entry[DiagnosticReport] ^definition, de-DE, Slice zur Hinterlegung der zugehörigen DiagnosticReport-Instanz)
* insert Translation(entry[DiagnosticReport] ^definition, en-US, Entry for the diagnostic report) 

* insert Label(entry[Observations], Slice für Observations, Slice zur Hinterlegung der zugehörigen Observation-Instanzen)
* insert Translation(entry[Observations] ^short, de-DE, Slice für Observations)
* insert Translation(entry[Observations] ^short, en-US, Observations entry)
* insert Translation(entry[Observations] ^definition, de-DE, Slice zur Hinterlegung der zugehörigen Observation-Instanzen)
* insert Translation(entry[Observations] ^definition, en-US, Entry for the observations)

* entry[Composition] ^comment = "Already defined in the parent profile isik-basis-bericht-bundle - mandatory 1..1"
* insert Label(entry[Composition], Slice für Composition, Slice zur Hinterlegung der zugehörigen Composition-Instanz)
* insert Translation(entry[Composition] ^short, de-DE, Slice für Composition)
* insert Translation(entry[Composition] ^short, en-US, Composition entry)
* insert Translation(entry[Composition] ^definition, de-DE, Slice zur Hinterlegung der zugehörigen Composition-Instanz)
* insert Translation(entry[Composition] ^definition, en-US, Entry for the composition)
* entry[Composition].resource ^definition = "Contraint on isik-basis-bericht-subsysteme"
* entry[ServiceRequest].resource only MII_PR_Patho_Service_Request 
* entry[Specimen].resource only MII_PR_Patho_Specimen 
* entry[DiagnosticReport].resource only MII_PR_Patho_Report
* entry[Observations].resource only MII_PR_Patho_Base_Observation
* entry[Observations] ^definition = "For Patho-Grouper and -Findings"

* signature 1..1 MS
* insert Label(signature, Signatur, Digitale Signatur des Bundles)
* insert Translation(signature ^short, de-DE, Signatur)
* insert Translation(signature ^short, en-US, Signature)
* insert Translation(signature ^definition, de-DE, Digitale Signatur des Bundles)
* insert Translation(signature ^definition, en-US, Digital signature of the bundle)