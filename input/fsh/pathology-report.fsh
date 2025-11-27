// -------------------------
// DiagnosticReport
// -------------------------
Profile: MII_PR_Patho_Report
Parent: DiagnosticReport
Id: mii-pr-patho-report
Title: "MII PR Patho Report"
Description: "Defines the general pathology report structure for German hospitals with the defined terms by the Medical Informatics Initiative"
* insert PR_CS_VS_Version
* insert Publisher
* insert Translation(^title, de-DE, MII PR Patho Bericht)
* insert Translation(^title, en-US, MII PR Patho Report)
* insert Translation(^description, de-DE, Definiert die allgemeine Struktur des Pathologie-Berichts für deutsche Krankenhäuser mit den von der Medizininformatik-Initiative definierten Begriffen)
* insert Translation(^description, en-US, Defines the general pathology report structure for German hospitals with the defined terms by the Medical Informatics Initiative)
// ID
* id MS
* meta
  * lastUpdated MS
  * profile MS
* text MS
// Extension for parent report
* extension contains $fhir-workflow-related-artifact named related-report 0..* MS
* insert Label(extension[related-report], Verwandter Bericht, Verweis auf Vorbefunde)
* insert Translation(extension[related-report] ^short, de-DE, Verwandter Bericht)
* insert Translation(extension[related-report] ^short, en-US, Related report)
* insert Translation(extension[related-report] ^definition, de-DE, Verweis auf Vorbefunde)
* insert Translation(extension[related-report] ^definition, en-US, Reference to related reports)
// Identifikator
* identifier 1.. MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this.type"
  * ^slicing.rules = #open
* identifier contains Set-ID 1..1 MS
* insert Label(identifier[Set-ID], Set-ID, Befundnummer (Eingangsnummer, Fallnummer, Filler order number, Accession number))
* insert Translation(identifier[Set-ID] ^short, de-DE, Set-ID)
* insert Translation(identifier[Set-ID] ^short, en-US, Set-ID)
* insert Translation(identifier[Set-ID] ^definition, de-DE, Befundnummer (Eingangsnummer, Fallnummer, Filler order number, Accession number))
* insert Translation(identifier[Set-ID] ^definition, en-US, Accession number of the report)
* identifier[Set-ID] 
  * type 1.. MS
  * type = $v2-0203#ACSN "Accession ID"
  * value 1.. MS
  * system 1.. MS
// Referenz zum Untersuchungsauftrag
* basedOn 1.. MS
* insert Label(basedOn, Untersuchungsauftrag, Verweis auf den zugehörigen Untersuchungsauftrag)
* insert Translation(basedOn ^short, de-DE, Untersuchungsauftrag)
* insert Translation(basedOn ^short, en-US, Request)
* insert Translation(basedOn ^definition, de-DE, Verweis auf den zugehörigen Untersuchungsauftrag)
* insert Translation(basedOn ^definition, en-US, Reference to the respective examination request)
* basedOn only Reference(mii-pr-patho-service-request)
* basedOn ^short = "Reference to respective MII_PR_Patho_Service_Request"
// Status
* status MS
* insert Label(status, Status, Status des Befundes)
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, Status)
* insert Translation(status ^definition, de-DE, Status des Befundes)
* insert Translation(status ^definition, en-US, Status of the report)
* category MS
* insert Label(category, Kategorie, Kategorisierung des Befundes)
* insert Translation(category ^short, de-DE, Kategorie)
* insert Translation(category ^short, en-US, Category)
* insert Translation(category ^definition, de-DE, Kategorisierung des Befundes)
* insert Translation(category ^definition, en-US, Categorization of the report) 
* category from mii-vs-patho-report-category-hl7 (extensible)
// Code
* code MS
* insert Label(code, Code, Code des Pathologie-Befundes)
* insert Translation(code ^short, de-DE, Code)
* insert Translation(code ^short, en-US, Code)
* insert Translation(code ^definition, de-DE, Code des Pathologie-Befundes)
* insert Translation(code ^definition, en-US, Code of the pathology report)
* code ^short = "Pathology report code"
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains pathology-report 1..1 MS
  * insert Label(coding[pathology-report], Pathologie-Befund Code, Spezifischer Code für Pathologie-Befunde)
  * insert Translation(coding[pathology-report] ^short, de-DE, Pathologie-Befund Code)
  * insert Translation(coding[pathology-report] ^short, en-US, Pathology report code)
  * insert Translation(coding[pathology-report] ^definition, de-DE, Spezifischer Code für Pathologie-Befunde)
  * insert Translation(coding[pathology-report] ^definition, en-US, Specific code for pathology report)
  * coding[pathology-report] = $LOINC#60568-3 
    * system 1.. MS 
    * code 1.. MS
// Referenz zu Patient:in
* subject 1.. MS
* insert Label(subject, Patient, Verweis auf den Patienten)
* insert Translation(subject ^short, de-DE, Patient)
* insert Translation(subject ^short, en-US, Subject)
* insert Translation(subject ^definition, de-DE, Verweis auf den Patienten)
* insert Translation(subject ^definition, en-US, Reference to the patient)
* subject only Reference(Patient)
// Referenz zu Fall 
* encounter MS
* insert Label(encounter, Fall, Verweis auf den Fall)
* insert Translation(encounter ^short, de-DE, Fall)
* insert Translation(encounter ^short, en-US, Encounter)
* insert Translation(encounter ^definition, de-DE, Verweis auf den Fall)
* insert Translation(encounter ^definition, en-US, Reference to the encounter)
// Dokumentationsdatum
* effective[x] only dateTime
* effectiveDateTime MS
* insert Label(effectiveDateTime, Dokumentationsdatum, Zeitpunkt der Befunderstellung)
* insert Translation(effectiveDateTime ^short, de-DE, Dokumentationsdatum)
* insert Translation(effectiveDateTime ^short, en-US, Effective date)
* insert Translation(effectiveDateTime ^definition, de-DE, Zeitpunkt der Befunderstellung)
* insert Translation(effectiveDateTime ^definition, en-US, Time of report creation)
// Autor 
* performer 1.. MS
* insert Label(performer, Autor, Ersteller des Befundes)
* insert Translation(performer ^short, de-DE, Autor)
* insert Translation(performer ^short, en-US, Performer)
* insert Translation(performer ^definition, de-DE, Ersteller des Befundes)
* insert Translation(performer ^definition, en-US, Creator of the report)
// Referenz zur Probe
* specimen 1.. MS
* insert Label(specimen, Probe, Verweis auf die untersuchte Probe)
* insert Translation(specimen ^short, de-DE, Probe)
* insert Translation(specimen ^short, en-US, Specimen)
* insert Translation(specimen ^definition, de-DE, Verweis auf die untersuchte Probe)
* insert Translation(specimen ^definition, en-US, Reference to the examined specimen)
// Beobachtungsabschnitte bzw. Beobachtungen
* result 1.. MS
* insert Label(result, Ergebnis, Referenz auf Beobachtungsberichtsabschnitte mit Einzelbeobachtungen)
* insert Translation(result ^short, de-DE, Ergebnis)
* insert Translation(result ^short, en-US, Result)
* insert Translation(result ^definition, de-DE, Referenz auf Beobachtungsberichtsabschnitte mit Einzelbeobachtungen)
* insert Translation(result ^definition, en-US, References to grouper with the findings)
// * result only Reference(PathologyGrouper)
* result ^slicing.discriminator[+].type = #value
* result ^slicing.discriminator[=].path = "resolve().code"
* result ^slicing.rules = #closed
* result ^slicing.ordered = true
* result contains 
      intraoperative-observations 0..1 MS
      and macroscopic-observations 0..1 MS
      and microscopic-observations 0..1 MS
      and additional-observations 0..1 MS
      and diagnostic-conclusion 1..1 MS
* insert Label(result[intraoperative-observations], Intraoperative Beobachtungen, Verweis auf intraoperative Beobachtungen)
* insert Translation(result[intraoperative-observations] ^short, de-DE, Intraoperative Beobachtungen)
* insert Translation(result[intraoperative-observations] ^short, en-US, Intraoperative observations)
* insert Translation(result[intraoperative-observations] ^definition, de-DE, Verweis auf intraoperative Beobachtungen)
* insert Translation(result[intraoperative-observations] ^definition, en-US, Reference to intraoperative observations)
* insert Label(result[macroscopic-observations], Makroskopische Beobachtungen, Verweis auf makroskopische Beobachtungen)
* insert Translation(result[macroscopic-observations] ^short, de-DE, Makroskopische Beobachtungen)
* insert Translation(result[macroscopic-observations] ^short, en-US, Macroscopic observations)
* insert Translation(result[macroscopic-observations] ^definition, de-DE, Verweis auf makroskopische Beobachtungen)
* insert Translation(result[macroscopic-observations] ^definition, en-US, Reference to macroscopic observations)
* insert Label(result[microscopic-observations], Mikroskopische Beobachtungen, Verweis auf mikroskopische Beobachtungen)
* insert Translation(result[microscopic-observations] ^short, de-DE, Mikroskopische Beobachtungen)
* insert Translation(result[microscopic-observations] ^short, en-US, Microscopic observations)
* insert Translation(result[microscopic-observations] ^definition, de-DE, Verweis auf mikroskopische Beobachtungen)
* insert Translation(result[microscopic-observations] ^definition, en-US, Reference to microscopic observations)
* insert Label(result[additional-observations], Zusätzliche Beobachtungen, Verweis auf zusätzliche Beobachtungen)
* insert Translation(result[additional-observations] ^short, de-DE, Zusätzliche Beobachtungen)
* insert Translation(result[additional-observations] ^short, en-US, Additional observations)
* insert Translation(result[additional-observations] ^definition, de-DE, Verweis auf zusätzliche Beobachtungen)
* insert Translation(result[additional-observations] ^definition, en-US, Reference to additional observations)
* insert Label(result[diagnostic-conclusion], Diagnostische Schlussfolgerung, Verweis auf die diagnostische Schlussfolgerung)
* insert Translation(result[diagnostic-conclusion] ^short, de-DE, Diagnostische Schlussfolgerung)
* insert Translation(result[diagnostic-conclusion] ^short, en-US, Diagnostic conclusion)
* insert Translation(result[diagnostic-conclusion] ^definition, de-DE, Verweis auf die diagnostische Schlussfolgerung)
* insert Translation(result[diagnostic-conclusion] ^definition, en-US, Reference to the diagnostic conclusion)
* result[intraoperative-observations] only Reference(mii-pr-patho-intraoperative-grouper)
  * reference 1..1 MS
  * ^short = "Reference to intraoperative Observation grouper(s)"
* result[macroscopic-observations] only Reference(mii-pr-patho-macroscopic-grouper)
  * reference 1..1 MS
  * ^short = "Reference to macroscopic Observation grouper(s)"
* result[microscopic-observations] only Reference(mii-pr-patho-microscopic-grouper)
  * reference 1..1 MS
  * ^short = "Reference to microscopic Observation grouper(s)"
* result[additional-observations] only Reference(mii-pr-patho-additional-specified-grouper)     
  * reference 1..1 MS
  * ^short = "Reference to any additional Observation grouper(s)"
* result[diagnostic-conclusion] only Reference(mii-pr-patho-diagnostic-conclusion-grouper) 
  * reference 1..1 MS
  * ^short = "Reference to the 'Diagnostic Conclusion' grouper(s)"
// Referenz zu angehaengten Bildern inkl. Informationen dazu (Bsp. DICOM) 
* imagingStudy MS
* insert Label(imagingStudy, Bildinformationen, Verweis auf Bildinformationen)
* insert Translation(imagingStudy ^short, de-DE, Bildinformationen)
* insert Translation(imagingStudy ^short, en-US, Imaging study)
* insert Translation(imagingStudy ^definition, de-DE, Verweis auf Bildinformationen)
* insert Translation(imagingStudy ^definition, en-US, Reference to imaging studies)
// Referenz zu angehaengten Bildern
* media MS
* insert Label(media, Medien, Verweis auf angehängte Bilder)
* insert Translation(media ^short, de-DE, Medien)
* insert Translation(media ^short, en-US, Media)
* insert Translation(media ^definition, de-DE, Verweis auf angehängte Bilder)
* insert Translation(media ^definition, en-US, Reference to attached images)
* media ^short = "Reference to single attached images"
  * link MS
  * link only Reference(mii-pr-patho-attached-image)
// zugehoeriges Dokument
* presentedForm MS
* insert Label(presentedForm, Menschenlesbare Form, PDF-Dokument)
* insert Translation(presentedForm ^short, de-DE, Menschenlesbare Form)
* insert Translation(presentedForm ^short, en-US, Presented form)
* insert Translation(presentedForm ^definition, de-DE, PDF-Dokument)
* insert Translation(presentedForm ^definition, en-US, pdf document)
// Diagnostische Schlussfolgerung
* conclusionCode MS
* insert Label(conclusionCode, Schlussfolgerungscode, Kodierung für abschließende diagnostische Schlussfolgerung)
* insert Translation(conclusionCode ^short, de-DE, Schlussfolgerungscode)
* insert Translation(conclusionCode ^short, en-US, Conclusion code)
* insert Translation(conclusionCode ^definition, de-DE, Kodierung für abschließende diagnostische Schlussfolgerung)
* insert Translation(conclusionCode ^definition, en-US, Coded diagnostic conclusion)

// -------------------------
// Composition
// -------------------------
Profile: MII_PR_Patho_Composition
Parent: $isik-basis-bericht-subsysteme
Id: mii-pr-patho-composition
Title: "MII PR Patho Composition"
Description: "Composition as a template for pathology report as a FHIR-Document"
* insert PR_CS_VS_Version
* insert Publisher
* insert Translation(^title, de-DE, MII PR Patho Zusammenstellung)
* insert Translation(^title, en-US, MII PR Patho Composition)
* insert Translation(^description, de-DE, Zusammenstellung als Vorlage für Pathologie-Berichte als FHIR-Dokument)
* insert Translation(^description, en-US, Composition as a template for pathology report as a FHIR-Document)
* text ^short = "Header-Informationen"
* meta.lastUpdated MS
* meta.profile MS
* extension contains $fhir-version-number named document-version 0..1 MS
* insert Label(extension[document-version], Dokumentversion, Versionsnummer des Dokuments)
* insert Translation(extension[document-version] ^short, de-DE, Dokumentversion)
* insert Translation(extension[document-version] ^short, en-US, Document version)
* insert Translation(extension[document-version] ^definition, de-DE, Versionsnummer des Dokuments)
* insert Translation(extension[document-version] ^definition, en-US, Version number of the document)
* identifier 1.. MS
* insert Label(identifier, Identifikator, Eindeutiger Identifikator)
* insert Translation(identifier ^short, de-DE, Identifikator)
* insert Translation(identifier ^short, en-US, Identifier)
* insert Translation(identifier ^definition, de-DE, Eindeutiger Identifikator)
* insert Translation(identifier ^definition, en-US, Unique identifier)
  * type 1.. MS
  * type.coding = $v2-0203#ACSN "Accession ID"

* type.coding contains 
    sct 0..1 MS
* insert Label(type.coding[sct], SNOMED CT Typ, SNOMED CT Kodierung für Dokumenttyp)
* insert Translation(type.coding[sct] ^short, de-DE, SNOMED CT Typ)
* insert Translation(type.coding[sct] ^short, en-US, SNOMED CT type)
* insert Translation(type.coding[sct] ^definition, de-DE, SNOMED CT Kodierung für Dokumenttyp)
* insert Translation(type.coding[sct] ^definition, en-US, SNOMED CT coding for document type)

* type.coding[sct].system 1.. MS
* type.coding[sct].system ^pattern = $SCT
* type.coding[sct] from mii-vs-patho-composition-type-snomed-ct (extensible)
* type.coding[sct].code 1.. MS

// IHE Slice ist bereits vererbt, nur Code setzen
* type.coding[XDS].code = #PATH (exactly)

// KDL Slice  
* type.coding[KDL] from mii-vs-patho-composition-type-kdl (extensible)

* status ^comment = "Bereits in Subsysteme auf 1..1 & Fixed Value auf final"

// KORREKTE CATEGORY SLICING DEFINITION
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system" 
* category.coding ^slicing.rules = #open
* category.coding contains sct 0..1 MS
* insert Label(category.coding[sct], SNOMED CT Kategorie, SNOMED CT Kodierung für Dokumentkategorie)
* insert Translation(category.coding[sct] ^short, de-DE, SNOMED CT Kategorie)
* insert Translation(category.coding[sct] ^short, en-US, SNOMED CT category)
* insert Translation(category.coding[sct] ^definition, de-DE, SNOMED CT Kodierung für Dokumentkategorie)
* insert Translation(category.coding[sct] ^definition, en-US, SNOMED CT coding for document category)

// SCT Slice für Category
* category.coding[sct].system = $SCT (exactly)
* category.coding[sct] from mii-vs-patho-composition-type-snomed-ct (extensible)

// IHE Slice ist bereits vererbt, nur Code setzen  
* category.coding[IHE].code = #BEF (exactly)
* encounter 1..
* author only Reference($isik-person-im-gesundheitsberuf or Organization)
* author ^short = "Author can only be of type Practitioner or Organization"
* attester 1.. MS
* insert Label(attester, Bestätiger, Person die den Bericht bestätigt)
* insert Translation(attester ^short, de-DE, Bestätiger)
* insert Translation(attester ^short, en-US, Attester)
* insert Translation(attester ^definition, de-DE, Person die den Bericht bestätigt)
* insert Translation(attester ^definition, en-US, Person who attests the report)
* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "$this.mode"
* attester ^slicing.rules = #open
* attester ^slicing.ordered = false
* attester contains legal 1.. MS
* insert Label(attester[legal], Rechtlicher Bestätiger, Rechtliche Bestätigung des Berichts)
* insert Translation(attester[legal] ^short, de-DE, Rechtlicher Bestätiger)
* insert Translation(attester[legal] ^short, en-US, Legal attester)
* insert Translation(attester[legal] ^definition, de-DE, Rechtliche Bestätigung des Berichts)
* insert Translation(attester[legal] ^definition, en-US, Legal attestation of the report) 
                and content-validator 0..* MS
* insert Label(attester[content-validator], Inhaltssprüfer, Inhaltliche Prüfung des Berichts)
* insert Translation(attester[content-validator] ^short, de-DE, Inhaltssprüfer)
* insert Translation(attester[content-validator] ^short, en-US, Content validator)
* insert Translation(attester[content-validator] ^definition, de-DE, Inhaltliche Prüfung des Berichts)
* insert Translation(attester[content-validator] ^definition, en-US, Content validation of the report)
* attester[legal]
  * mode = #legal (exactly)
  * party 1.. MS
  * insert Label(party, Partei, Bestätigende Person oder Organisation)
  * insert Translation(party ^short, de-DE, Partei)
  * insert Translation(party ^short, en-US, Party)
  * insert Translation(party ^definition, de-DE, Bestätigende Person oder Organisation)
  * insert Translation(party ^definition, en-US, Attesting person or organization)
  * party only Reference(Practitioner or Organization)
* attester[content-validator]
  * mode = #professional (exactly)
  * party 1.. MS
  * insert Label(party, Partei, Prüfende Person oder Organisation)
  * insert Translation(party ^short, de-DE, Partei)
  * insert Translation(party ^short, en-US, Party)
  * insert Translation(party ^definition, de-DE, Prüfende Person oder Organisation)
  * insert Translation(party ^definition, en-US, Validating person or organization)
  * party only Reference(Practitioner or Organization)
* custodian 1.. MS
* insert Label(custodian, Verwalter, Verwaltende Organisation)
* insert Translation(custodian ^short, de-DE, Verwalter)
* insert Translation(custodian ^short, en-US, Custodian)
* insert Translation(custodian ^definition, de-DE, Verwaltende Organisation)
* insert Translation(custodian ^definition, en-US, Managing organization)
* relatesTo MS
* insert Label(relatesTo, Bezieht sich auf, Beziehung zu anderen Dokumenten z.B. Vor-, Zusatz-, und/oder Korrekturbefunde)
* insert Translation(relatesTo ^short, de-DE, Bezieht sich auf)
* insert Translation(relatesTo ^short, en-US, Relates to)
* insert Translation(relatesTo ^definition, de-DE, Beziehung zu anderen Dokumenten z.B. Vor-, Zusatz-, und/oder Korrekturbefunde)
* insert Translation(relatesTo ^definition, en-US, Relationship to other documents) 
  * code MS
  * targetReference MS
* event 1.. MS
* insert Label(event, Referenz auf Untersuchungsauftrag, Referenz auf den auslösenden Untersuchungsauftrag)
* insert Translation(event ^short, de-DE, Ereignis)
* insert Translation(event ^short, en-US, Event)
* insert Translation(event ^definition, de-DE, Referenz auf den auslösenden Untersuchungsauftrag)
* insert Translation(event ^definition, en-US, Documentation event)
// Entry referenziert nur auf MII_PR_Patho_Report
* section 
  * code 1.. MS
  * insert Label(code, Code, Abschnittscode)
  * insert Translation(code ^short, de-DE, Code)
  * insert Translation(code ^short, en-US, Code)
  * insert Translation(code ^definition, de-DE, Abschnittscode)
  * insert Translation(code ^definition, en-US, Section code)
    * coding 1.. MS
    * insert Label(coding, Kodierung, Abschnitts-Kodierung)
    * insert Translation(coding ^short, de-DE, Kodierung)
    * insert Translation(coding ^short, en-US, Coding)
    * insert Translation(coding ^definition, de-DE, Abschnitts-Kodierung)
    * insert Translation(coding ^definition, en-US, Section coding)
    * coding from mii-vs-patho-all-loinc (required)
  * entry 1.. MS
  * insert Label(entry, Eintrag, Abschnittseintrag)
  * insert Translation(entry ^short, de-DE, Eintrag)
  * insert Translation(entry ^short, en-US, Entry)
  * insert Translation(entry ^definition, de-DE, Abschnittseintrag)
  * insert Translation(entry ^definition, en-US, Section entry)
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "$this.code.coding"
* section ^slicing.rules = #open
* section contains patho-diagnostic-report 1..* MS
* insert Label(section[patho-diagnostic-report], Pathologie-Diagnostikbericht, Pathologie-Diagnostikbericht)
* insert Translation(section[patho-diagnostic-report] ^short, de-DE, Pathologie-Diagnostikbericht)
* insert Translation(section[patho-diagnostic-report] ^short, en-US, Pathology diagnostic report)
* insert Translation(section[patho-diagnostic-report] ^definition, de-DE, Pathologie-Diagnostikbericht)
* insert Translation(section[patho-diagnostic-report] ^definition, en-US, Pathology diagnostic report)
          // and additional-diagnostic-report 0..* MS
* section[patho-diagnostic-report]
  * code 1.. MS
    * coding 1.. MS
    * coding = $LOINC#60567-5
  * entry 1.. MS
  * entry only Reference (mii-pr-patho-report)


//--------------------------------
// Example
//--------------------------------
/*
Instance: mii-exa-patho-report
InstanceOf: mii-pr-patho-report
Usage: #example
Title: "MII EXA Patho Report"
Description: "Example for MII_PR_Patho_Report"
* identifier[Set-ID].value = "E21.12345"
* identifier[Set-ID].system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* identifier[Set-ID].type = $v2-0203#ACSN "Accession ID"
* identifier[Set-ID].extension.url = $fhir-narrative-link
* identifier[Set-ID].extension.valueUrl = "#befund-eingangsnummer"
* basedOn = Reference(mii-exa-patho-request)
* status = #final
* code.coding[pathology-report] = $LOINC#60568-3 "Pathology Synoptic report"
* subject.reference = "Patient/12345"
* performer.reference = "Practitioner/2346545"
* specimen = Reference(mii-exa-patho-prostate-tru-cut-biopsy-sample)
* encounter.reference = "Encounter/12345"
* result[macroscopic-observations] = Reference(mii-exa-patho-macro-grouper-a)
* result[macroscopic-observations] = Reference(mii-exa-patho-macro-grouper-b)
* result[microscopic-observations] = Reference(mii-exa-patho-micro-grouper-a)
* result[diagnostic-conclusion] = Reference(mii-exa-patho-diagnostic-conclusion-grouper)
* conclusion = "Mäßig differenziertes azinäres Adenokarzinom der Prostata, ISUP-Gradgruppe 2"
* conclusionCode = $SCT#399490008  
* effectiveDateTime = "2021-06-01"
// * issued = "2021-06-02T13:28:17.239+02:00"
* media.link = Reference(mii-exa-patho-attached-image)
* media.comment = "HE-Schnitt einer Prostatastanze, infiltriert durch Karzinomverbände, fotodokumentiert"
*/

Instance: mii-exa-patho-report
InstanceOf: mii-pr-patho-report
Usage: #example
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report"
* identifier[Set-ID].type = $v2-0203#ACSN "Accession ID"
* identifier[Set-ID].value = "E21.12345"
* identifier[Set-ID].system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
//* identifier[Set-ID].extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
//* identifier[Set-ID].extension.valueUrl = "#befund-eingangsnummer"
* code.coding[pathology-report] = $LOINC#60568-3 "Pathology synoptic report"
* basedOn = Reference(ServiceRequest/mii-exa-patho-request)
* status = #final
* subject.reference = "Patient/12345"
* performer.reference = "Practitioner/2346545"
* specimen = Reference(Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample)
* encounter.reference = "Encounter/12345"
* result[macroscopic-observations] = Reference(Observation/mii-exa-patho-macro-grouper-a)
* result[microscopic-observations] = Reference(Observation/mii-exa-patho-micro-grouper-a)
* result[diagnostic-conclusion] = Reference(Observation/mii-exa-patho-diagnostic-conclusion-grouper)
* conclusion = "Gut differenziertes azinäres Adenokarzinom der Prostata, ISUP-Gradgruppe 1"
* conclusionCode = $SCT#1525761000004109
* effectiveDateTime = "2021-06-01"
* media.link = Reference(Media/mii-exa-patho-attached-image)
* media.comment = "HE-Schnitt einer Prostatastanze, infiltriert durch Karzinomverbände, fotodokumentiert"

/*
Instance: mii-exa-patho-composition
InstanceOf: mii-pr-patho-composition
Usage: #example
Title: "MII EXA Patho Composition"
Description: "Example for an MII_PR_Patho_Composition"
* text.div = "
<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <div id=\"befund-titel\">
    <b>Pathologisch-anatomisch Begutachtung</b>
  </div> 
  <table>
    <tr id=\"befund-identifikator\">
      <td>id</td>
      <td>E12345_21.1</td>
    </tr>
    <tr id=\"befund-eingangsnummer\">
      <td>Eingangsnummer</td>
      <td>E12345_21</td>
    </tr>
    <tr id=\"befund-status\">
      <td>Status</td>
      <td>final</td>
    </tr>
    <tr id=\"befund-patient\">
      <td>Patient</td>
      <td>Patient/12345</td>
    </tr>
    <tr id=\"befund-effective\">
      <td>Effective</td>
      <td>2021-06-01</td>
    </tr>
    <tr id=\"befund-issued\">
      <td>Issued</td>
      <td>2021-06-01</td>
    </tr>
    <tr id=\"befund-performer\">
      <td>Performer</td>
      <td>Practitioner/2346545</td>
    </tr>
  </table>
</div>"
* extension[document-version].valueString = "1"
* status = #final
* identifier.value = "E21.12345"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* identifier.type = $v2-0203#ACSN "Accession ID"
* identifier.extension.url = $fhir-narrative-link
* identifier.extension.valueUrl = "#befund-eingangsnummer"
* type = $LOINC#11526-1 "Pathology study"
* type.text = "Pathologie-Befundbericht"
* subject.reference = "Patient/34545"
* encounter.reference = "Encounter/34555"
* date = "2021-06-08"
* author[+].reference = "Practitioner/2346545"
* author[=].display = "Dr. Name"
* title = "Pathologie Befundbericht"
* custodian.reference = "Organization/12345"
* attester[legal].mode = #legal
* attester[legal].party.reference = "Practitioner/765879"
* event.period.start = "2021-06-05"
* event.period.end = "2021-06-08"
* section[patho-diagnostic-report]
  * title = "Pathology Diagnostic Report"
  * code = $LOINC#60567-5 "Comprehensive pathology report panel"
  * text.status = #additional	
  * text.div = "
  <div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div id=\"macro-a-title\"><b>Makroskopie A</b></div>
    <table>
      <tr id=\"macro-a-biosy-site\">
        <td id=\"macro-a-biosy-site-key\">Entnahmeort lt. klin. Angabe</td>
        <td id=\"macro-a-biosy-site-value\">Prostataseitenlappen rechts, lateral</td>
      </tr>
      <tr id=\"macro-a-tissue-length\">
        <td id=\"macro-a-tissue-length-key\">Stanzzylinderlänge</td>
        <td id=\"macro-a-tissue-length-value\">1,2 cm</td>
      </tr>
    </table>
  </div>"
  * entry = Reference(mii-exa-patho-report)
*/

Instance: mii-exa-patho-composition
InstanceOf: mii-pr-patho-composition
Usage: #example
* text.div = "
<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <div id=\"befund-titel\">
    <b>Pathologisch-anatomisch Begutachtung</b>
  </div> 
  <table>
    <tr id=\"befund-identifikator\">
      <td>id</td>
      <td>E12345_21.1</td>
    </tr>
    <tr id=\"befund-eingangsnummer\">
      <td>Eingangsnummer</td>
      <td>E12345_21</td>
    </tr>
    <tr id=\"befund-status\">
      <td>Status</td>
      <td>final</td>
    </tr>
    <tr id=\"befund-patient\">
      <td>Patient</td>
      <td>Patient/12345</td>
    </tr>
    <tr id=\"befund-effective\">
      <td>Effective</td>
      <td>2021-06-01</td>
    </tr>
    <tr id=\"befund-issued\">
      <td>Issued</td>
      <td>2021-06-01</td>
    </tr>
    <tr id=\"befund-performer\">
      <td>Performer</td>
      <td>Practitioner/2346545</td>
    </tr>
  </table>
</div>"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition"
* extension[document-version].valueString = "1"
* status = #final
* type = $LOINC#11526-1 "Pathology study"
* type.text = "Pathologie-Befundbericht"
* attester[legal].mode = #legal
* attester[legal].party.reference = "Practitioner/765879"
* section[patho-diagnostic-report].code = $LOINC#60567-5 "Comprehensive pathology report panel"
* section[patho-diagnostic-report].title = "Pathology Diagnostic Report"
* section[patho-diagnostic-report].text.status = #additional
* section[patho-diagnostic-report].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Gesamter Textkörper des Befundberichts, z.B. beginnend mit Makroskopie:</b></p><div id=\"macro-a-title\"><b>Makroskopie A</b></div><table><tr id=\"macro-a-biosy-site\"><td id=\"macro-a-biosy-site-key\">Entnahmeort lt. klin. Angabe</td><td id=\"macro-a-biosy-site-value\">Prostataseitenlappen rechts, lateral</td></tr><tr id=\"macro-a-tissue-length\"><td id=\"macro-a-tissue-length-key\">Stanzzylinderlänge</td><td id=\"macro-a-tissue-length-value\">1,2 cm</td></tr></table></div>"
* section[patho-diagnostic-report].entry = Reference(DiagnosticReport/mii-exa-patho-report)
* identifier.value = "E21.12345"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* identifier.type = $v2-0203#ACSN "Accession ID"
//* identifier.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
//* identifier.extension.valueUrl = "#befund-eingangsnummer"
* subject.reference = "Patient/34545"
* encounter.reference = "Encounter/34555"
* date = "2021-06-08"
* author[+].reference = "Practitioner/2346545"
* author[=].display = "Dr. Name"
* title = "Pathologie Befundbericht"
* custodian.reference = "Organization/12345"
* event.period.start = "2021-06-05"
* event.period.end = "2021-06-08"