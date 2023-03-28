Profile: MII_PR_Patho_Specimen
Parent: $mii-bio-specimencore
Id: mii-pr-patho-specimen
Title: "PR MII Patho Specimen"
Description: "Pathology specimen"
* id MS
* meta.lastUpdated MS
* meta.profile MS
* text MS
* accessionIdentifier 1.. MS
* collection
  * method 1.. MS
  * method from mii-vs-patho-collection-method-snomed-ct (extensible)
  * bodySite.extension contains $us-mcode-body-location-qualifier named locationQualifier 0..* MS
                       and $us-mcode-laterality-qualifier named lateralityQualifier 0..1 MS
* request only Reference(mii-pr-patho-service-request)
* processing 
  * procedure from mii-vs-patho-processing-procedure-snomed-ct (extensible)
  * additive only Reference($mii-bio-additive)
* container MS
  * type from mii-vs-patho-container-type-snomed-ct (required)

// Examples
Instance: mii-exa-patho-prostate-tru-cut-biopsy-sample
InstanceOf: mii-pr-patho-specimen
Usage: #example
Title: "EXA MII Patho Prostate Tru-cut Biopsy Sample"
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
* type = $SCT#309134005 "Prostate tru-cut biopsy sample"
* subject.reference = "Patient/12345"
* request = Reference(mii-exa-patho-request)
* collection
  * collector.reference = "Practitioner/2346545"
  * collectedDateTime = "2021-01-29T06:15:00Z"
  * method = $SCT#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* container[+] 
  * type = $SCT#434746001 "Specimen vial (physical object)"
  * additiveReference = Reference(mii-exa-patho-neutral-buffered-formalin)

Instance: mii-exa-patho-he-stained-slide-prostate
InstanceOf: mii-pr-patho-specimen
Usage: #example
Title: "EXA MII Patho HE-stained slide from Prostate tru-cut biopsy sample"
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
* parent = Reference(mii-exa-patho-prostate-tru-cut-biopsy-sample)
* request = Reference(mii-exa-patho-request)
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
* processing[=].additive[+] = Reference(mii-exa-patho-hematoxylin-stain)
* processing[=].additive[+] = Reference(mii-exa-patho-eosin-y)
* container[+] 
  * type = $SCT#433466003 "Microscope slide (physical object)"
  * additiveReference = Reference(mii-exa-patho-microscope-slide-mounting-medium)
* container[+]
  * type = $SCT#433472003 "Microscope slide coverslip (physical object)"
  * additiveReference = Reference(mii-exa-patho-microscope-slide-mounting-medium)


Instance: mii-exa-patho-hematoxylin-stain
InstanceOf: $mii-bio-additive
Usage: #example
Title: "EXA MII Patho Hematoxylin-stain"
Description: "Hematoxylin stain (substance)"
* code.coding = $SCT#12710003 "Hematoxylin stain (substance)"

Instance: mii-exa-patho-eosin-y
InstanceOf: $mii-bio-additive
Usage: #example
Title: "EXA MII Patho Eosin Y"
Description: "Eosin Y (substance)"
* code.coding = $SCT#763042003 "Eosin Y (substance)"

Instance: mii-exa-patho-neutral-buffered-formalin
InstanceOf: $mii-bio-additive
Usage: #example
Title: "EXA MII Patho Neutral Buffered Formalin"
Description: "Neutral buffered formalin (substance)"
* code.coding = $SCT#434162003 "Neutral buffered formalin (substance)"

Instance: mii-exa-patho-microscope-slide-mounting-medium
InstanceOf: $mii-bio-additive
Usage: #example
Title: "EXA MII Patho Microscope Slide Mounting Medium"
Description: "Microscope slide mounting medium (substance)"
* code.coding = $SCT#430862008 "Microscope slide mounting medium (substance)"
