// -------------------------
// DiagnosticReport
// -------------------------
Profile: SD_MII_Patho_Report
Parent: DiagnosticReport
Id: sd-mii-patho-report
Title: "SD MII Patho Report"
Description: "Defines the general pathology report structure for German hospitals with the defined terms by the Medical Informatics Initiative"
* insert RuleSet1
// ID
* id MS
* meta.lastUpdated MS
* meta.profile MS
* text MS
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
// Versionsnummer der Ressourceninstanz - Entpricht nicht der Version des Befundes!!
* meta MS
// Weitere MS Elemente aus Metadata
* meta.source MS
* meta.profile MS 
// Referenz zum Untersuchungsauftrag
* basedOn 1.. MS
* basedOn only Reference(SD_MII_Patho_Service_Request)
* basedOn ^short = "Reference to respective SD_MII_Patho_Service_Request"
// Status
* status MS
* category MS 
* category from vs-mii-patho-report-category-hl7 (extensible)
// Code
* code MS
* code ^short = "Pathology report code"
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains pathology-report 1..1 MS
  * coding[pathology-report] = $LOINC#60568-3 "Pathology Synoptic report"
    * system 1.. MS 
    * code 1.. MS
    * display MS  
// Referenz zu Patient:in
* subject 1.. MS
* subject only Reference(Patient)
// Referenz zu Fall 
* encounter MS
// Dokumentationsdatum
* effective[x] MS
* effective[x] only dateTime
* issued MS // nur fuer maschinell erstellte Zeitstempel, fuer manuell eingetragene Zeiten effective[x] dateTime nutzen
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
* result[intraoperative-observations] only Reference(SD_MII_Patho_Intraoperative_Grouper)
  * reference 1.. MS
  * ^short = "Reference to intraoperative Observations"
* result[macroscopic-observations] only Reference(SD_MII_Patho_Macroscopic_Grouper)
  * reference 1.. MS
  * ^short = "Reference to macroscopic Observations"
* result[microscopic-observations] only Reference(SD_MII_Patho_Microscopic_Grouper)
  * reference 1.. MS
  * ^short = "Reference to microscopic Observations"
* result[additional-observations] only Reference(SD_MII_Patho_Additional_Specified_Grouper)     
  * reference 1.. MS
  * ^short = "Reference to any additional Observation"
* result[diagnostic-conclusion] only Reference(SD_MII_Patho_Diagnostic_Conclusion_Grouper) 
  * reference 1.. MS
  * ^short = "Reference to the 'Diagnostic Conclusion' grouper(s)"
// Referenz zu angehaengten Bildern inkl. Informationen dazu (Bsp. DICOM) 
* imagingStudy MS
// Referenz zu angehaengten Bildern
* media MS
* media ^short = "Reference to single attached images"
  * comment MS
  * link MS
  * link only Reference(SD_MII_Patho_Attached_Image)
// zugehoeriges Dokument
* presentedForm MS
// Diagnostische Schlussfolgerung
* conclusion MS
* conclusionCode MS

// -------------------------
// Composition
// -------------------------
Profile: SD_MII_Patho_Composition
Parent: $isik-basis-bericht-subsysteme
Id: sd-mii-patho-composition
Title: "SD MII Patho Composition"
Description: "Composition as a template for pathology report as a FHIR-Document"
* insert RuleSet1
// * id MS
* meta.lastUpdated MS
* meta.profile MS
// * text 1.. MS
  // * status MS
  // * status = #extensions (exactly)
  // * div MS
* extension contains $fhir-version-number named document-version 0..1 MS
// * status MS
// * status = #final (exactly)
* identifier 1.. MS
  * type 1.. MS
  * type.coding = $v2-0203#ACSN "Accession ID"
  // * value 1.. MS
  // * system 1.. MS
// * type MS
* type
  * coding contains LOINC-patho 1.. MS
  * coding[LOINC-patho] from vs-mii-patho-composition-type-loinc (extensible)  
  * coding[LOINC-patho] ^patternCoding.system = $LOINC
  // * coding 1.. MS
  // * coding from vs-mii-patho-composition-type-loinc (extensible)
  // * coding = $LOINC#11526-1 "Pathology study"
    * system 1.. MS
    * code 1.. MS
* category 
  * coding contains HL7-patho ..1 MS
  * coding[HL7-patho] from vs-mii-patho-report-category-hl7 (extensible)
// * subject 1.. MS
// * subject only Reference(Patient)
* encounter 1..
// * date MS
// Autor
// * author 1.. MS
* author only Reference($isik-person-im-gesundheitsberuf or Organization)
* author ^short = "Author can only be of type Practitioner or Organization"
  // * display 1.. MS
// Titel
// * title 1.. MS
// Legaler Authentikator 
* attester 1.. MS
* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "$this.mode"
* attester ^slicing.rules = #open
// * attester ^slicing.description = "tbd"
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
// Entry referenziert nur auf SD_MII_Patho_Report
// * section 1.. MS
* section 
  * code 1.. MS
    * coding 1.. MS
    * coding from vs-mii-patho-all-loinc (required)
  * entry 1.. MS
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "$this.code.coding"
* section ^slicing.rules = #open
* section contains patho-diagnostic-report 1..* MS
          // and additional-diagnostic-report 0..* MS
* section[patho-diagnostic-report]
  // * title 1.. MS 
  * code 1.. MS
    * coding 1.. MS
    * coding = $LOINC#60567-5
  // * text 1.. MS
  * entry 1.. MS
  * entry only Reference (sd-mii-patho-report)
  // * section MS
// * section[additional-diagnostic-report]
//   // * title 1.. MS
//   * code 1.. MS
//     * coding 1.. MS
//     * coding from vs-mii-patho-all-loinc (required)
//   // * text 1.. MS
//   * entry 1.. MS
//   // * section MS


//--------------------------------
// Example
//--------------------------------
Instance: ex-mii-patho-report
InstanceOf: sd-mii-patho-report
Usage: #example
Title: "Pathology Report Example"
Description: "Example for SD_MII_Patho_Report"
* identifier[Set-ID].value = "E21.12345"
* identifier[Set-ID].system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* identifier[Set-ID].type = $v2-0203#ACSN "Accession ID"
* identifier[Set-ID].extension.url = $fhir-narrative-link
* identifier[Set-ID].extension.valueUrl = "#befund-eingangsnummer"
* basedOn = Reference(ex-mii-patho-request)
* status = #final
* code.coding[pathology-report] = $LOINC#60568-3 "Pathology Synoptic report"
* subject.reference = "Patient/12345"
* performer.reference = "Practitioner/2346545"
* specimen = Reference(ex-mii-patho-prostate-tru-cut-biopsy-sample)
* encounter.reference = "Encounter/12345"
* result[macroscopic-observations] = Reference(ex-mii-patho-macro-grouper-a)
* result[macroscopic-observations] = Reference(ex-mii-patho-macro-grouper-b)
* result[microscopic-observations] = Reference(ex-mii-patho-micro-grouper-a)
* result[diagnostic-conclusion] = Reference(ex-mii-patho-diagnostic-conclusion-grouper)
* conclusion = "Mäßig differenziertes azinäres Adenokarzinom der Prostata, ISUP-Gradgruppe 2"
* conclusionCode = $SCT#399490008  
* effectiveDateTime = "2021-06-01"
// * issued = "2021-06-02T13:28:17.239+02:00"
* media.link = Reference(ex-mii-patho-attached-image)
* media.comment = "HE-Schnitt einer Prostatastanze, infiltriert durch Karzinomverbände, fotodokumentiert"

Instance: ex-mii-patho-composition
InstanceOf: sd-mii-patho-composition
Usage: #example
Title: "EX MII Patho Composition"
Description: "Example for an SD_MII_Patho_Composition"
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
// * type.coding[LOINC-patho] = $LOINC#11526-1 "Pathology study"
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
  * entry = Reference(ex-mii-patho-report)



/*
//---------------------------------------------
// Patho-Omics Examples
//---------------------------------------------
Instance: example-mii-patho-stanzengroesse-dim1
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "Macroscopic Observation - Stanzengroesse Dim 1"
Description: "tbd"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $SCT#371476002 " Specimen size, dimension 1 (observable entity)"
* valueQuantity.value = 5.3
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM 
* valueQuantity.code = #cm
* derivedFrom[+] = Reference(AttachedImage)
* specimen = Reference(example-mii-patho-LungeOLStanze)

Instance: example-mii-patho-stanzengroesse-dim2
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "Macroscopic Observation - Stanzengroesse Dim 2"
Description: "tbd"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $SCT#371477006 " Specimen size, dimension 2 (observable entity)"
* valueQuantity.value = 0.2
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM 
* valueQuantity.code = #cm
* derivedFrom[+] = Reference(AttachedImage)
* specimen = Reference(example-mii-patho-LungeOLStanze)

Instance: example-mii-patho-LungeOLStanze
InstanceOf: SD_MII_Patho_Specimen
Usage: #example
Title: "LungeOLStanze"
Description: "tbd"
* status = #available
* identifier
  * type = $v2-0203#FILL "Filler Order Number"
  * value = "E12345_21-A"
* accessionIdentifier
  * value = "test"
* type = $SCT#122610009 "Specimen from lung obtained by biopsy (specimen)"
* subject.reference = "Patient/12345"
* collection
  * collector.reference = "Practitioner/36765"
  * collectedDateTime = "2021-01-29T06:15:00Z"
  * method = $SCT#78603008 "Biopsy of lung (procedure)"
  * bodySite = $SCT#245521007 "Structure of segment of upper lobe of left lung (body structure)"

Instance: example-mii-patho-MacroGrouperLung
InstanceOf: SD_MII_Patho_Macroscopic_Grouper
Usage: #example
Title: "MacroGrouperLung"
Description: "tbd"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* code.coding = $LOINC#22634-0 "Pathology report gross observation"
* hasMember[+] = Reference(example-mii-patho-stanzengroesse-dim1)
* hasMember[+] = Reference(example-mii-patho-stanzengroesse-dim2)
* specimen = Reference(example-mii-patho-LungeOLStanze)

Instance: example-mii-patho-DiagnosticConclusion-Condition
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "DiagnosticConclusion - Condition"
Description: "Example for a diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3 "Pathology report diagnosis"
* code = $LOINC#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* valueCodeableConcept = $icd-o-3#8140/3 "Adenokarzinom (azinär)"
* specimen = Reference(example-mii-patho-LungeOLStanze)

Instance: example-mii-patho-DiagnosticConclusion-Grading
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "DiagnosticConclusion - Grading"
Description: "Example for diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3 "Pathology report diagnosis"
* code = $LOINC#21858-6 "Grade Cancer"
* valueCodeableConcept = $LOINC#LA3992-0 "Grade II"
* specimen = Reference(example-mii-patho-LungeOLStanze)

Instance: example-mii-patho-DiagnosticConclusionGrouper
InstanceOf: SD_MII_Patho_Diagnostic_Conclusion_Grouper
Usage: #example
Title: "Diagnostic Conclusion Grouper Example"
Description: "Example for a diagnostic conclusion"
* status = #final
* code.coding = $LOINC#22637-3 "Pathology report diagnosis"
* derivedFrom[+] = Reference(example-mii-patho-MacroGrouperLung)
// * derivedFrom[+] = Reference(MicroGrouperB)
* hasMember[+] = Reference(example-mii-patho-DiagnosticConclusion-Condition)
* hasMember[+] = Reference(example-mii-patho-DiagnosticConclusion-Grading)

Instance: example-mii-patho-report
InstanceOf: SD_MII_Patho_Report
Usage: #example
Title: "example-mii-patho-report"
Description: "tbd"
* identifier[+].value = "H2021.14456"
* identifier[=].system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* identifier[=].type = $v2-0203#ACSN "Accession ID"
// * identifier[=].type = $LOINC#11526-1
* basedOn = Reference(ex-mii-patho-request)
* status = #final
* code.coding[pathology-report] = $LOINC#60568-3 "Pathology Synoptic report"
* subject.reference = "Patient/12345"
* performer.reference = "Practitioner/2346545"
* specimen = Reference(example-mii-patho-LungeOLStanze)
* encounter.reference = "Encounter/12345"
* result[macroscopic-observations] = Reference(example-mii-patho-MacroGrouperLung)
//* result[macroscopic-observations] = Reference(MacroGrouperB)
//* result[microscopic-observations] = Reference(MicroGrouperA)
* result[diagnostic-conclusion] = Reference(example-mii-patho-DiagnosticConclusionGrouper)
* conclusion = "Ausgedehnte Infiltrate eines acinär, lipidisch und fokal papillär wachsenden, mäßig differenzierten pulmonalen Adenocarcinoms in Stanzen vom linken Oberlappen im Bereich einer zellarmen Narbe."
* conclusionCode = $SCT#1078901000119100 "Primary adenocarcinoma of upper lobe of left lung (disorder)"  
* effectiveDateTime = "2021-05-28"
* issued = "2021-05-20T13:28:17.239+02:00"
* media.link = Reference(ex-mii-patho-attached-image)
* media.comment = "HE-Schnitt einer Lungenstanze, infiltriert durch Karzinomverbände, fotodokumentiert"

Instance: example-mii-molgen-variante-3
InstanceOf: Observation
Usage: #example
* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante"
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* code = $LOINC#69548-6 "Genetic variant assessment"
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* component[0].code = $LOINC#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = http://www.genenames.org/geneId#HGNC:3236 "EGFR"
* component[+].code = $LOINC#47999-8 "DNA region name [Identifier]"
* component[=].valueString = "Exon #19"
* component[+].code = $LOINC#48019-4 "DNA change type"
* component[=].valueCodeableConcept = http://sequenceontology.org#SO:1000008 "point_mutation"
* basedOn = Reference(ServiceRequest/example-mii-molgen-anforderung-3)
* status = #final
* subject = Reference(Patient/example-mii-molgen-patient)
* valueCodeableConcept = $LOINC#LA9633-4 "Present"
* method = $LOINC#LA26419-4 "qPCR (real-time PCR)"
* specimen = Reference(example-mii-molgen-specimen)
* device = Reference(Device/example-mii-molgen-device-qPCR-kit)
* derivedFrom = Reference(Observation/example-mii-molgen-untersuchte-region-3)

Instance: example-mii-molgen-molekulargenetischer-befundbericht-3
InstanceOf: DiagnosticReport
Usage: #example
* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulargenetischer-befundbericht"
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-report"
* category = http://terminology.hl7.org/CodeSystem/v2-0074#GE "Genetics"
* basedOn = Reference(ServiceRequest/example-mii-molgen-anforderung-3)
* status = #final
* code = $LOINC#51969-4 "Genetic analysis report"
* subject = Reference(Patient/example-mii-molgen-patient)
* performer = Reference(Practitioner/example-mii-molgen-practitioner-lab)
* specimen = Reference(example-mii-patho-LungeOLStanze)
* result[0] = Reference(Observation/example-mii-molgen-gruppierung-beobachtungen-3)
* result[+] = Reference(Observation/example-mii-molgen-diagnostische-implikation-3)
* result[+] = Reference(Observation/example-mii-molgen-therapeutische-implikation-3)
* result[+] = Reference(Observation/example-mii-molgen-variante-3)
* result[+] = Reference(Observation/example-mii-molgen-untersuchte-region-3)
* conclusion = "EGFR Variante mit Exon 19 Deletion liegt vor. Therapieoption mit Tyrosinkinase Inhibitoren."

Instance: example-mii-patho-Composition
InstanceOf: SD_MII_Patho_Composition
Usage: #example
Title: "Composition Example"
Description: "Example for a SD_MII_Patho_Composition"
* extension[document-version].valueString = "2"
* status = #final
* identifier.value = "H2021.14456"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* identifier.type = $v2-0203#ACSN "Accession ID"
* type = $LOINC#11526-1 "Pathology study"
* subject.reference = "Patient/34545"
* date = "2021-06-08"
* author[+].reference = "Practitioner/45756"
* title = "Pathologie Befundbericht"
* custodian.reference = "Organization/12345"
* attester[legal].mode = #legal
* attester[legal].party.reference = "Practitioner/765879"
* event.period.start = "2021-05-20"
* event.period.end = "2021-05-28"
* section[patho-diagnostic-report].title = "Pathology Diagnostic Report"
* section[patho-diagnostic-report].code = $LOINC#60567-5 "Comprehensive pathology report panel"
* section[patho-diagnostic-report].entry = Reference(example-mii-patho-report) 
* section[additional-diagnostic-report].title = "Genetic Diagnostic Report"
* section[additional-diagnostic-report].code = $LOINC#51969-4 "Genetic analysis report"
* section[additional-diagnostic-report].entry = Reference(example-mii-molgen-molekulargenetischer-befundbericht-3)
*/