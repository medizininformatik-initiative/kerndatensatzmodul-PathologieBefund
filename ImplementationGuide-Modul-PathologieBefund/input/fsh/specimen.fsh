Profile: SD_MII_Patho_Specimen
// Parent: $mii-bio-specimencore
Parent: SpecimenCore
Id: sd-mii-patho-specimen
Title: "SD MII Patho Specimen"
Description: "Pathology specimen"
* insert RuleSet1
* id MS
* meta.lastUpdated MS
* meta.profile MS
* text MS
* accessionIdentifier 1.. MS
* collection
  * method 1.. MS
  * method from VS_MII_Patho_Collection_Method_SNOMED_CT (extensible)
* request only Reference(SD_MII_Patho_Service_Request)
* processing 
  * procedure from vs-mii-patho-processing-procedure-snomed-ct (extensible)
  * additive only Reference($mii-bio-additive)
* container MS
  * type from VS_MII_Patho_Container_Type_SNOMED (required)

// Examples
Instance: ex-mii-patho-prostate-tru-cut-biopsy-sample
InstanceOf: sd-mii-patho-specimen
Usage: #example
Title: "ex-mii-patho-prostate-tru-cut-biopsy sample"
Description: "Prostate tru-cut biopsy sample (specimen)"
* status = #available
* text.status = #additional
* text.div = "
<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <div id=\"specimen-a-title\"><b>Probe A</b></div>
  <table>
    <tr>
      <td>Entnahmeart</td>
      <td>transrektale Stanzbiopsie</td>
    </tr>
  </table>
</div>
"
* identifier
  * type = $v2-0203#FILL
  * value = "E12345_21-A1"
  * system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* accessionIdentifier
  * value = "E12345_21"
  * system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* type = $SCT#309134005 "Prostate tru-cut biopsy sample (specimen)"
* subject.reference = "Patient/12345"
* request = Reference(ex-mii-patho-request)
* collection
  * collector.reference = "Practitioner/2346545"
  * collectedDateTime = "2021-01-29T06:15:00Z"
  * method = $SCT#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* container[+] 
  * type = $SCT#434746001 "Specimen vial (physical object)"
  * additiveReference = Reference(ex-mii-patho-neutral-buffered-formalin)

Instance: ex-mii-patho-he-stained-slide-prostate
InstanceOf: SD_MII_Patho_Specimen
Usage: #example
Title: "EX MII Patho HE-stained slide from Prostate tru-cut biopsy sample"
Description: "HE-stained slide from Prostate tru-cut biopsy sample (specimen)"
* status = #available
* text.status = #additional
* text.div = "
<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <div id=\"specimen-a-title\"><b>Probe A</b></div>
  <table>
    <tr>
      <td>Entnahmeart</td>
      <td>transrektale Stanzbiopsie</td>
    </tr>
    <tr id=\"bearbeitungsprozedur\">
      <td id=\"bearbeitungsprozedur-key\">Bearbeitungsprozedur</td>
      <td id=\"bearbeitungsprozedur-value\">Einbetten, schneiden, färben</td>
    </tr>
    <tr>
      <td>Färbung</td>
      <td>4% gepuffertes Formalin HE</td>
    </tr>
  </table>
</div>
"
* identifier
  * type = $v2-0203#FILL
  * value = "E12345_21-A1-1HE"
  * system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht" 
* accessionIdentifier
  * value = "E12345_21"
  * system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* type = $SCT#787150001 "Stained slide of tissue section (specimen)"
* subject.reference = "Patient/12345"
* parent = Reference(ex-mii-patho-prostate-tru-cut-biopsy-sample)
* request = Reference(ex-mii-patho-request)
* collection
  * collector.reference = "Practitioner/2346545"
  * collectedDateTime = "2021-01-29T06:15:00Z"
  * method = $SCT#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* processing[+].extension[temperaturbedingungen].valueRange
  * low
    * unit = "°C"
    * system = $UCUM
    * code = #Cel
    * value = 0
  * high 
    * unit = "°C"
    * system = $UCUM
    * code = #Cel
    * value = 30
* processing[=].procedure.coding[sct] = $SCT#40923002 "Tissue processing technique, routine, embed, cut and stain, per surgical specimen (procedure)"
* processing[=].procedure.extension.url = $fhir-narrative-link
* processing[=].procedure.extension.valueUrl = "#bearbeitungsprozedur"
* processing[+].extension[temperaturbedingungen].valueRange
  * low
    * unit = "°C"
    * system = $UCUM
    * code = #Cel
    * value = 0
  * high 
    * unit = "°C"
    * system = $UCUM
    * code = #Cel
    * value = 30
* processing[=].procedure.coding[sct] = $SCT#104210008 "Hematoxylin and eosin stain method (procedure)"
* processing[=].procedure.extension.url = $fhir-narrative-link
* processing[=].procedure.extension.valueUrl = "#faerbung"
* processing[=].additive[+] = Reference(ex-mii-patho-hematoxylin-stain)
* processing[=].additive[+] = Reference(ex-mii-patho-eosin-y)
* container[+] 
  * type = $SCT#433466003 "Microscope slide (physical object)"
  * additiveReference = Reference(ex-mii-patho-microscope-slide-mounting-medium)
* container[+]
  * type = $SCT#433472003 "Microscope slide coverslip (physical object)"
  * additiveReference = Reference(ex-mii-patho-microscope-slide-mounting-medium)


Instance: ex-mii-patho-hematoxylin-stain
InstanceOf: $mii-bio-additive
Usage: #example
Title: "EX MII Patho Hematoxylin-stain"
Description: "Hematoxylin stain (substance)"
* code.coding = $SCT#12710003 "Hematoxylin stain (substance)"

Instance: ex-mii-patho-eosin-y
InstanceOf: $mii-bio-additive
Usage: #example
Title: "EX MII Patho Eosin Y"
Description: "Eosin Y (substance)"
* code.coding = $SCT#763042003 "Eosin Y (substance)"

Instance: ex-mii-patho-neutral-buffered-formalin
InstanceOf: $mii-bio-additive
Usage: #example
Title: "EX MII Patho Neutral Buffered Formalin"
Description: "Neutral buffered formalin (substance)"
* code.coding = $SCT#434162003 "Neutral buffered formalin (substance)"

Instance: ex-mii-patho-microscope-slide-mounting-medium
InstanceOf: $mii-bio-additive
Usage: #example
Title: "EX MII Patho Microscope Slide Mounting Medium"
Description: "Microscope slide mounting medium (substance)"
* code.coding = $SCT#430862008 "Microscope slide mounting medium (substance)"

// Example Biobank
Instance: MusterprobeFluessig
// InstanceOf: $mii-bio-specimencore
InstanceOf: SpecimenCore
Title: "Musterprobe flüssig"
Usage: #example

* identifier.system = "https://biobank.uk-musterstadt.de/fhir/sid/proben"
* identifier.value = "12345"
* status = #available
* type = http://snomed.info/sct#122555007 "Venous blood specimen (specimen)"
* subject.reference = "Patient/12345"
* collection.collectedDateTime = "2018-06-07T15:54:00+01:00"
* collection.fastingStatusCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0916#NG "Not Given - Patient was not asked at the time of the procedure."

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].procedure =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T15:54:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T16:27:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].procedure.coding =  $SCT#73373003 //"Specimen centrifugation (procedure)"
* processing[=].timePeriod.start = "2018-06-07T16:27:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T16:37:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = 15
* processing[=].extension[temperaturbedingungen].valueRange.high.value = 25
* processing[=].procedure =  $SCT#1186936003 "Storage of specimen (procedure)"
* processing[=].timePeriod.start = "2018-06-07T16:37:00+01:00"
* processing[=].timePeriod.end = "2018-06-07T16:51:00+01:00"

* processing[+].extension[temperaturbedingungen].valueRange.low.value = -85
* processing[=].extension[temperaturbedingungen].valueRange.high.value = -60
* processing[=].procedure.coding[sct] =  $SCT#1186936003 //"Storage of specimen (procedure)"
* processing[=].procedure.coding[sct] =  $SCT#27872000 //"Specimen freezing (procedure)"
* processing[=].timePeriod.start = "2018-06-07T16:51:00+01:00"
