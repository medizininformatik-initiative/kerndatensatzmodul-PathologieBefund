//-----------------------------------------
// SD_MII_Patho_Base_Observation
//-----------------------------------------
// Entweder neue Base Observation profilieren oder wenn passend Laboruntersuchung aus Modul Labor als Base Observation nehmen
Profile: SD_MII_Patho_Base_Observation
Parent: Observation
Id: sd-mii-patho-base-observation
Title: "SD MII Patho Base Observation"
Description: "Abstract Observation to define common features of a main pathology observation"
* insert RuleSet1
* ^abstract = true
* id MS
* identifier MS
* basedOn MS 
* basedOn only Reference(SD_MII_Patho_Service_Request)
* status MS
* category 1.. MS 
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[0].path = "$this"
* category ^slicing.rules = #open
* category contains laboratory-category 1..1 MS
* category[laboratory-category] = $obs-category#laboratory
  * coding 1.. MS
    * system 1.. MS 
    * system ^fixedString = $obs-category
    * code 1.. MS
    * code ^fixedCode = #laboratory
    * display MS
// Code
* code MS
  * coding 1.. MS
    * code 1.. MS
    * system 1.. MS
    * display MS
  * extension contains $fhir-original-text named original-text 0..1 MS
    * ^short = "Links to original text that may have been used to retrieve coding"
// Referenz - Patient:in
* subject MS
* subject only Reference(Patient)
// Befundzeit
* effective[x] MS
* effective[x] only dateTime
// Koerperstelle
* bodySite MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 0..1 MS
  * coding[sct] from $bio-bodystructure (required)
    * system 1.. MS
    * system = $SCT
// Untersuchungsmethode
* method MS
// Referenz - Probe
* specimen MS
* derivedFrom MS
* derivedFrom ^slicing.discriminator.type = #type
* derivedFrom ^slicing.discriminator.path = "$this.resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "tbd"
* derivedFrom ^slicing.ordered = false
* derivedFrom contains attached-image 0..* MS 
                   and dicom-image 0..* MS
* derivedFrom[attached-image] only Reference(SD_MII_Patho_Attached_Image)
* derivedFrom[dicom-image] only Reference(ImagingStudy)
// Components fuer die Erfassung der Ergebnisse
* component 0.. 
  * code MS
    * extension contains $fhir-original-text named original-text 0..1 MS
      * ^short = "Links to original text that may have been used to retrieve coding"
  * value[x] only string or Quantity or CodeableConcept or Ratio // was hat MolGen hier? Stimmt es ueberein? 
  * valueString
    * extension contains $fhir-original-text named original-text 0..1 MS
      * ^short = "Links to original text that may have been used to retrieve value" 
  * valueQuantity
    * extension contains $fhir-original-text named original-text 0..1 MS
      * ^short = "Links to original text that may have been used to retrieve value"
  * valueCodeableConcept
    * extension contains $fhir-original-text named original-text 0..1 MS
      * ^short = "Links to original text that may have been used to retrieve value"
  * valueRatio
    * extension contains $fhir-original-text named original-text 0..1 MS
      * ^short = "Links to original text that may have been used to retrieve value"
  * dataAbsentReason MS

//-------------------------------------------
// SD_MII_Patho_Finding
//-------------------------------------------
Profile: SD_MII_Patho_Finding
Parent: SD_MII_Patho_Base_Observation
Id: sd-mii-patho-finding
Title: "SD MII Patho Finding"
Description: "Instantiable Observation to describe a generic pathology finding"
* insert RuleSet1
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this.coding"
* category ^slicing.rules = #open
* category ^slicing.description = "Section type"
* category ^slicing.ordered = false
* category contains section-type 1..1 MS
* category[section-type].coding from SectionTypes (required)
* code.coding from $LOINC (preferred)
* value[x] MS
* value[x] only string or Quantity or CodeableConcept or Ratio
* valueQuantity
  * extension contains $fhir-original-text named original-text 0..1 MS
    * ^short = "Links to original text that may have been used to retrieve value"
* valueString	
  * extension contains $fhir-original-text named original-text 0..1 MS
    * ^short = "Links to original text that may have been used to retrieve value"
* valueCodeableConcept
  * extension contains $fhir-original-text named original-text 0..1 MS
    * ^short = "Links to original text that may have been used to retrieve value"
* valueRatio
  * extension contains $fhir-original-text named original-text 0..1 MS
    * ^short = "Links to original text that may have been used to retrieve value"
// Moegliche Unterbeobachtungen
* hasMember MS
// Referenz - Eingebettetes Bild
// * derivedFrom MS
// * derivedFrom ^slicing.discriminator.type = #type
// * derivedFrom ^slicing.discriminator.path = "$this.resolve()"
// * derivedFrom ^slicing.rules = #open
// * derivedFrom ^slicing.description = "tbd"
// * derivedFrom ^slicing.ordered = false
// * derivedFrom contains attached-image 0..* MS 
//                    and dicom-image 0..* MS
// * derivedFrom[attached-image] only Reference(SD_MII_Patho_Attached_Image)
// * derivedFrom[dicom-image] only Reference(ImagingStudy)
// * derivedFrom only Reference(SD_MII_Patho_Attached_Image or ImagingStudy)

//--------------------------------------------
// Grouper
//--------------------------------------------
Profile: SD_MII_Patho_Grouper
Parent: SD_MII_Patho_Base_Observation
Id: sd-mii-patho-grouper
Title: "SD MII Patho Grouper"
Description: "Grouper profile for pathological findings"
* insert RuleSet1
* ^abstract = true
// * code.coding from SectionTypes (required)
* hasMember ^slicing.discriminator.type = #type
* hasMember ^slicing.discriminator.path = "$this"
* hasMember ^slicing.rules = #open
* hasMember ^slicing.description = "Reference to pathology findings"
* hasMember ^slicing.ordered = false
* hasMember contains pathology-finding 0..* MS
* hasMember[pathology-finding] only Reference(SD_MII_Patho_Finding)


//--------------------------------------------
// IntraoperativeObservation
//--------------------------------------------
Profile: SD_MII_Patho_Intraoperative_Grouper
Parent: SD_MII_Patho_Grouper
Id: sd-mii-patho-intraoperative-grouper
Title: "SD MII Patho Intraoperative Grouper"
Description: "Based on IHE PaLM APSR - Intraoperative Observation Section"
* insert RuleSet1
* code ^fixedCodeableConcept = $LOINC#83321-0 "Pathology report intraoperative observation in Specimen Document"


//--------------------------------------------
// Macroscopic Observation
//--------------------------------------------
Profile: SD_MII_Patho_Macroscopic_Grouper
Parent: SD_MII_Patho_Grouper
Id: sd-mii-patho-macroscopic-grouper
Title: "SD MII Patho Macroscopic Grouper"
Description: "Based on IHE PaLM APSR - Macroscopic Observation Finding"
* insert RuleSet1
* code ^fixedCodeableConcept = $LOINC#22634-0 "Pathology report gross observation"


//-------------------------------------
// Microscopic Observation
//-------------------------------------
Profile: SD_MII_Patho_Microscopic_Grouper
Parent: SD_MII_Patho_Grouper
Id: sd-mii-patho-microscopic-grouper
Title: "SD MII Patho Microscopic Grouper"
Description: "Based on IHE PaLM APSR - Microscopic Observation Finding"
* insert RuleSet1
* code ^fixedCodeableConcept = $LOINC#22635-7 "Pathology report microscopic observation"


//-------------------------------------
// Additional Specified Observations
//-------------------------------------
Profile: SD_MII_Patho_Additional_Specified_Grouper
Parent: SD_MII_Patho_Grouper
Id: sd-mii-patho-additional-specified-grouper
Title: "SD MII Patho Additional Specified Grouper"
Description: "Based on IHE PaLM APSR - Grouper for additional specified Observations"
* insert RuleSet1
* code ^fixedCodeableConcept = $LOINC#77599-9 "Additional documentation"  


//--------------------------------
// Diagnostic Conclusion
//--------------------------------
Profile: SD_MII_Patho_Diagnostic_Conclusion_Grouper
Parent: SD_MII_Patho_Grouper	
Id: sd-mii-patho-diagnostic-conclusion-grouper
Title: "SD MII Patho Diagnostic Conclusion Grouper"
Description: "Grouper profile to collect Diagnostic Conclusion information"
* insert RuleSet1
* code ^fixedCodeableConcept = $LOINC#22637-3 "Pathology report diagnosis"
// Observation the Diagnostic Conclusion derives from
* derivedFrom MS
* derivedFrom ^slicing.discriminator.type = #type
* derivedFrom ^slicing.discriminator.path = "$this.resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "tbd"
* derivedFrom ^slicing.ordered = false
* derivedFrom contains grouper-observation 0..* MS
                   and questionnaire-response 0..* MS
* derivedFrom[grouper-observation] only Reference(SD_MII_Patho_Intraoperative_Grouper or SD_MII_Patho_Macroscopic_Grouper or SD_MII_Patho_Microscopic_Grouper or SD_MII_Patho_Additional_Specified_Grouper)
* derivedFrom[questionnaire-response] only Reference(QuestionnaireResponse)
// * derivedFrom only Reference(SD_MII_Patho_Intraoperative_Grouper or SD_MII_Patho_Macroscopic_Grouper or SD_MII_Patho_Microscopic_Grouper or SD_MII_Patho_Additional_Specified_Grouper or QuestionnaireResponse)
* note MS

//---------------------------------
// Examples
//---------------------------------
// Macroscopic Report
//---------------------------------
// Macro Specimen A
Instance: MacroObsBiopsySiteA
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "MacroObsBiopsySiteA"
Description: "Biopsy site of Specimen A (1st punch)"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#94738-2 "Biopsy site"
* valueCodeableConcept = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* derivedFrom[+] = Reference(AttachedImage)

Instance: MacroObsTissueLengthA
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "MacroObsTissueLengthA"
Description: "Tissue length of Specimen A (1st punch)"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#44619-5 "Length of tissue core(s)"
* code.extension[original-text].valueString = "#tissueLengthA"
* valueQuantity.value = 1.2
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM 
* valueQuantity.code = #cm
* derivedFrom[+] = Reference(AttachedImage)

Instance: MacroGrouperA
InstanceOf: SD_MII_Patho_Macroscopic_Grouper
Usage: #example
Title: "MacroGrouperA"
Description: "Grouper for all Macroscopic Observations of Specimen A (1st punch)"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The <span id=\"tissueLengthA\">tissue length of Specimen A</span></div>"
* status = #final
* code.coding = $LOINC#22634-0 "Pathology report gross observation"
* valueString = "Specimen A: Prostataseitenlappen rechts, lateral 1.2cm"
* hasMember[+] = Reference(MacroObsBiopsySiteA)
* hasMember[+] = Reference(MacroObsTissueLengthA)

// Macro Specimen B
Instance: MacroObsBiopsySiteB
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "MacroObsBiopsySiteB"
Description: "Biopsy site of Specimen B (2nd punch)"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#94738-2 "Biopsy site"
* valueCodeableConcept = $SCT#716934008 "Structure of apical part of peripheral zone of right half prostate (body structure)"
* derivedFrom[+] = Reference(AttachedImage)

Instance: MacroObsTissueLengthB
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "MacroObsTissueLengthB"
Description: "Tissue length of Specimen B (2nd punch)"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22634-0 "Pathology report gross observation"
* code.coding = $LOINC#44619-5 "Length of tissue core(s)"
* valueQuantity.value = 1.5
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm 
* derivedFrom[+] = Reference(AttachedImage)

Instance: MacroGrouperB
InstanceOf: SD_MII_Patho_Macroscopic_Grouper
Usage: #example
Title: "MacroGrouperB"
Description: "Grouper for all Macroscopic Observations of Specimen B (2nd punch)"
* status = #final
* code.coding = $LOINC#22634-0 "Pathology report gross observation"
* valueString = "Specimen B: Prostataseitenlappen rechts, apikal 1.5cm"
* hasMember[+] = Reference(MacroObsBiopsySiteB)
* hasMember[+] = Reference(MacroObsTissueLengthB)

//-------------------------------
// Microscopic Report
//-------------------------------
// Micro Specimen A
Instance: MicroObsHistologicTypeA
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "MicroObsHistologicTypeA"
Description: "Histologic type of Specimen A"
* status = #final 
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22635-7 "Pathology report microscopic observation"
* code = $SCT#371441004 "Histologic type (observable entity)"
* valueCodeableConcept = $SCT#45410002 "Acinar adenocarcinoma (morphologic abnormality)"

Instance: MicroObsGleasonPatternA
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "MicroObsGleasonPatternA"
Description: "Gleason pattern.primary in prostate tumor for Specimen A"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22635-7 "Pathology report microscopic observation"
* code = $LOINC#44641-9 "Gleason pattern.primary in prostate tumor"
* valueCodeableConcept = $SCT#369772003 "Pattern 3 (staging scale)"

Instance: MicroGrouperA
InstanceOf: SD_MII_Patho_Microscopic_Grouper
Usage: #example
Title: "MicroGrouperA"
Description: "Grouper for all Microscopic Observations of Specimen A"
* status = #final
* code.coding = $LOINC#22635-7 "Pathology report microscopic observation"
* valueString = "Specimen A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders..."
* hasMember[+] = Reference(MicroObsHistologicTypeA)
* hasMember[+] = Reference(MicroObsGleasonPatternA)

//-------------------------------
// Diagnostic Conclusion
//-------------------------------
Instance: DiagnosticConclusion1
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "DiagnosticConclusion1"
Description: "Example for a diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3 "Pathology report diagnosis"
* code = $LOINC#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* valueCodeableConcept = $icd-o-3#8140/3 "Adenokarzinom (azinär)"

Instance: DiagnosticConclusion2
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "DiagnosticConclusion2"
Description: "Example for diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3 "Pathology report diagnosis"
* code = $LOINC#35266-6 "Gleason score in Specimen Qualitative"
* valueCodeableConcept = $SCT#57403001 "Gleason grade 7 (staging scale)"

Instance: DiagnosticConclusion3
InstanceOf: SD_MII_Patho_Finding
Usage: #example
Title: "DiagnosticConclusion3"
Description: "Example for diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $obs-category#laboratory
* category[section-type].coding = $LOINC#22637-3 "Pathology report diagnosis"
* code = $LOINC#94734-1 "Prostate cancer grade group"
* valueCodeableConcept = $LOINC#LA9630-0 "Grade 2"

Instance: DiagnosticConclusionGrouper
InstanceOf: SD_MII_Patho_Diagnostic_Conclusion_Grouper
Usage: #example
Title: "Diagnostic Conclusion Grouper Example"
Description: "Example for a diagnostic conclusion"
* status = #final
* code.coding = $LOINC#22637-3 "Pathology report diagnosis"
* derivedFrom[+] = Reference(MacroGrouperA)
* derivedFrom[+] = Reference(MacroGrouperB)
* derivedFrom[+] = Reference(MicroGrouperA)
// * derivedFrom[+] = Reference(MicroGrouperB)
* hasMember[+] = Reference(DiagnosticConclusion1)
* hasMember[+] = Reference(DiagnosticConclusion2)
* hasMember[+] = Reference(DiagnosticConclusion3)

//-------------------------------------------
// German Examples
//-------------------------------------------
/*
Instance: DE_PathologyReportProstatastanzen
InstanceOf: SD_MII_Patho_Report
Usage: #example
Title: "DE_PathologyReportProstatastanzen"
Description: "tbd"
* text.status = #additional
* text.div = "<div xmlns="http://www.w3.org/1999/xhtml">
            <p>
                <b>
                    Pathologisch-anatomische Begutachtung
                </b>
            </p>
            <p>
                <b>
                    id
                </b>
                : E12345_21.1
            </p>
            <p>
                <b>
                    Eingangsnummer
                </b>
                : E12345_21
            </p>
            <p>
                <b>
                    status
                </b>
                : final
            </p>
            <p>
                <b>
                    Patient
                </b>
                :
                <a>
                    Patient/12345
                </a>
            </p>
            <p>
                <b>
                    effective
                </b>
                : 2021-06-01
            </p>
            <p>
                <b>
                    issued
                </b>
                : 2021-06-01
            </p>
            <p>
                <b>
                    performer
                </b>
                :
                <a>
                    Practitioner/2346545
                </a>
            </p>
            <p>
                <b>
                    Technische Bearbeitung
                </b>
                :
            </p>
            <table>
                <thead>
                    <tr>
                        <th>
                            <b/>
                        </th>
                        <th>
                            <b>
                                Entnahmeart
                            </b>
                        </th>
                        <th>
                            <b>
                                Bearbeitungsprozedur
                            </b>
                        </th>
                        <th>
                            <b>
                                Fixation
                            </b>
                        </th>
                        <th>
                            <b>
                                Färbung
                            </b>
                        </th>
                    </tr>
                </thead>
                <tr>
                    <td>
                        A
                    </td>
                    <td>
                        transrektale Stanzbiopsie
                    </td>
                    <td>
                        Einbetten, schneiden, färben
                    </td>
                    <td>
                        4% gepuffertes Formalin
                    </td>
                    <td>
                        HE
                    </td>
                </tr>
                <tr>
                    <td>
                        B
                    </td>
                    <td>
                        transrektale Stanzbiopsie
                    </td>
                    <td>
                        Einbetten, schneiden, färben
                    </td>
                    <td>
                        4% gepuffertes Formalin
                    </td>
                    <td>
                        HE
                    </td>
                </tr>
            </table>
            <p>
                <b>
                    Makroskopie
                </b>
            </p>
            <table>
                <tr>
                    <th>
                        <b/>
                    </th>
                    <th>
                        <b>
                            Entnahmeort
                        </b>
                    </th>
                    <th>
                        <b>
                            Stanzzylinderlänge
                        </b>
                    </th>
                </tr>
                <tr>
                    <td>
                        A
                    </td>
                    <td>
                        Prostataseitenlappen rechts, lateral
                    </td>
                    <td>
                        1,2 cm
                    </td>
                </tr>
                <tr>
                    <td>
                        B
                    </td>
                    <td>
                        Prostataseitenlappen rechts, apikal
                    </td>
                    <td>
                        1,5 cm
                    </td>
                </tr>
            </table>
            <p>
                <b>
                    Mikroskopie
                </b>
            </p>
            <p>
                A. Verbände eines kleintubulär wachsenden epithelialen Tumors (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben 
                und ca. 30% der Schnittfläche des Zylinders (4 mm der Zylinderlänge) einnehmen.
            </p>
            <p>
                B. Verbände eines kleintubulär  und kribriform wachsenden epithelialen Tumors (Gleason-Muster 3 und 4 (10%)), die sich zwischen ortständige Drüsen schieben 
                und ca. 70% der Schnittfläche des Zylinders (10 mm der Zylinderlänge) einnehmen. Herdförmige Infiltration von Nervenscheiden und herdförmig 
                kapselüberschreitendes Wachstum mit Infiltration des periprostatischen Fettgewebes.
            </p>
            <p>
                <b>
                    Zusammenfassende Beurteilung
                </b>
            </p>
            <p>
                Mäßig differenziertes azinäres Adenokarzinom der Prostata.
                <table>
                    <tr>
                        <td>
                            ICD-O-3, 2.Rev.:
                        </td>
                        <td>
                            M8140/3
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gleason-Score:
                        </td>
                        <td>
                            3+4=7a
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gradinggruppe nach ISUP:
                        </td>
                        <td>
                            II
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Anzahl positiver Stanzen:
                        </td>
                        <td>
                            2
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Prozentualer Tumoranteil:
                        </td>
                        <td>
                            50 %
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gesamtlänge der Stanzzylinder:
                        </td>
                        <td>
                            3,7 cm
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Lokalisation der extraprostatischen Ausbreitung:
                        </td>
                        <td>
                            apical rechts
                        </td>
                    </tr>
                </table>
            </p>
        </div>"

        */
