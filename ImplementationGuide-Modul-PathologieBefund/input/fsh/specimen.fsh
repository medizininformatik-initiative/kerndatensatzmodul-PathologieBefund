Profile: SD_MII_Patho_Specimen
Parent: $mii-bio-specimencore
Id: sd-mii-patho-specimen
Title: "SD MII Patho Specimen"
Description: "Pathology specimen"
* insert RuleSet1
* text MS
* accessionIdentifier 1.. MS
* collection
  * method 1.. MS
  * method from VS_MII_Patho_Collection_Method_SNOMED_CT (extensible)
* request only Reference(SD_MII_Patho_Service_Request)
* processing.procedure 
  * extension contains $fhir-original-text named original-text 0..1 MS
* container MS
  * type from VS_MII_Patho_Container_Type_SNOMED_DICOM (required)

Instance: ex-mii-patho-specimen-a
InstanceOf: SD_MII_Patho_Specimen
Usage: #example
Title: "EX MII Patho Specimen A"
Description: "Example for SD_MII_Patho_Specimen - Specimen A"
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
  * type = $v2-0203#FILL "Filler Order Number"
  * value = "E12345_21-A"
* accessionIdentifier
  * value = "test"
* type = $SCT#309134005 "Prostate tru-cut biopsy sample (specimen)"
* subject.reference = "Patient/12345"
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
* processing[=].procedure.extension[original-text].valueString = "#bearbeitungsprozedur"
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
* processing[=].procedure.extension[original-text].valueString = "#faerbung"
* processing[=].additive = Reference(ex-mii-patho-neutral-buffered-formalin)

Instance: ex-mii-patho-neutral-buffered-formalin
InstanceOf: $mii-bio-additive
Usage: #example
Title: "EX MII Patho Neutral Buffered Formalin"
Description: "tbd"
* code.coding = $SCT#434162003 "Neutral buffered formalin (substance)"
* ingredient[+].quantity
  * numerator
    * value = 100
    * system = $UCUM
    * code = #mL
    * unit = "ml"
  * denominator 
    * value = 1
* ingredient[=].substanceCodeableConcept = $SCT#111095003 "Formaldehyde (substance)"
* ingredient[+].quantity
  * numerator
    * value = 900
    * system = $UCUM
    * code = #mL
    * unit = "ml"
  * denominator 
    * value = 1
* ingredient[=].substanceCodeableConcept = $SCT#444883009 "Distilled water (substance)"
* ingredient[+].quantity
  * numerator
    * value = 4
    * system = $UCUM
    * code = #g
    * unit = "g"
  * denominator 
    * value = 1
* ingredient[=].substanceCodeableConcept = $SCT#116124008 "Monobasic sodium phosphate (substance)"
* ingredient[+].quantity
  * numerator
    * value = 6.5
    * system = $UCUM
    * code = #g
    * unit = "g"
  * denominator 
    * value = 1
* ingredient[=].substanceCodeableConcept = $SCT#768971002 "Monobasic sodium phosphate anhydrous (substance)"

