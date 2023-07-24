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
// ID
* id MS
* meta
  * lastUpdated MS
  * profile MS
* text MS
// Extension for parent report
* extension contains $fhir-workflow-related-artifact named related-report 0..* MS
// Identifikator
* identifier 1.. MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this.type"
  * ^slicing.rules = #open
* identifier contains Set-ID 1..1 MS
* identifier[Set-ID] 
  * type 1.. MS
  * type = $v2-0203#ACSN "Accession ID"
  * value 1.. MS
  * system 1.. MS
// Referenz zum Untersuchungsauftrag
* basedOn 1.. MS
* basedOn only Reference(mii-pr-patho-service-request)
* basedOn ^short = "Reference to respective MII_PR_Patho_Service_Request"
// Status
* status MS
* category MS 
* category from mii-vs-patho-report-category-hl7 (extensible)
// Code
* code MS
* code ^short = "Pathology report code"
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains pathology-report 1..1 MS
  * coding[pathology-report] = $LOINC#60568-3 
    * system 1.. MS 
    * code 1.. MS
// Referenz zu Patient:in
* subject 1.. MS
* subject only Reference(Patient)
// Referenz zu Fall 
* encounter MS
// Dokumentationsdatum
* effective[x] only dateTime
* effectiveDateTime MS
// Autor 
* performer 1.. MS
// Referenz zur Probe
* specimen 1.. MS
// Beobachtungsabschnitte bzw. Beobachtungen
* result 1.. MS
// * result only Reference(PathologyGrouper)
* result ^slicing.discriminator[+].type = #value
* result ^slicing.discriminator[=].path = "resolve().code"
* result ^slicing.rules = #closed
* result ^slicing.ordered = true
* result contains 
      intraoperative-observations 0..* MS
      and macroscopic-observations 0..* MS
      and microscopic-observations 0..* MS
      and additional-observations 0..* MS
      and diagnostic-conclusion 1..* MS
* result[intraoperative-observations] only Reference(mii-pr-patho-intraoperative-grouper)
  * reference 1.. MS
  * ^short = "Reference to intraoperative Observation grouper(s)"
* result[macroscopic-observations] only Reference(mii-pr-patho-macroscopic-grouper)
  * reference 1.. MS
  * ^short = "Reference to macroscopic Observation grouper(s)"
* result[microscopic-observations] only Reference(mii-pr-patho-microscopic-grouper)
  * reference 1.. MS
  * ^short = "Reference to microscopic Observation grouper(s)"
* result[additional-observations] only Reference(mii-pr-patho-additional-specified-grouper)     
  * reference 1.. MS
  * ^short = "Reference to any additional Observation grouper(s)"
* result[diagnostic-conclusion] only Reference(mii-pr-patho-diagnostic-conclusion-grouper) 
  * reference 1.. MS
  * ^short = "Reference to the 'Diagnostic Conclusion' grouper(s)"
// Referenz zu angehaengten Bildern inkl. Informationen dazu (Bsp. DICOM) 
* imagingStudy MS
// Referenz zu angehaengten Bildern
* media MS
* media ^short = "Reference to single attached images"
  * link MS
  * link only Reference(mii-pr-patho-attached-image)
// zugehoeriges Dokument
* presentedForm MS
// Diagnostische Schlussfolgerung
* conclusionCode MS

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
* meta.lastUpdated MS
* meta.profile MS
* extension contains $fhir-version-number named document-version 0..1 MS
* identifier 1.. MS
  * type 1.. MS
  * type.coding = $v2-0203#ACSN "Accession ID"
* type
  * coding contains LOINC-patho 1.. MS
  * coding[LOINC-patho] from mii-vs-patho-composition-type-loinc (extensible)  
  * coding[LOINC-patho] ^patternCoding.system = $LOINC
    * system 1.. MS
    * code 1.. MS
* category 
  * coding contains HL7-patho ..1 MS
  * coding[HL7-patho] from mii-vs-patho-report-category-hl7 (extensible)
* encounter 1..
* author only Reference($isik-person-im-gesundheitsberuf or Organization)
* author ^short = "Author can only be of type Practitioner or Organization"
* attester 1.. MS
* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "$this.mode"
* attester ^slicing.rules = #open
* attester ^slicing.ordered = false
* attester contains legal 1.. MS 
                and content-validator 0..* MS
* attester[legal]
  * mode = #legal (exactly)
  * party 1.. MS
  * party only Reference(Practitioner or Organization)
* attester[content-validator]
  * mode = #professional (exactly)
  * party 1.. MS
  * party only Reference(Practitioner or Organization)
* custodian 1.. MS
* relatesTo MS 
  * code MS
  * targetReference MS
* event 1.. MS
// Entry referenziert nur auf MII_PR_Patho_Report
* section 
  * code 1.. MS
    * coding 1.. MS
    * coding from mii-vs-patho-all-loinc (required)
  * entry 1.. MS
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "$this.code.coding"
* section ^slicing.rules = #open
* section contains patho-diagnostic-report 1..* MS
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
