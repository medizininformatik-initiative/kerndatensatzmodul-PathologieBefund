Profile: MII_PR_Patho_Specimen
Parent: $mii-bio-specimencore
Id: mii-pr-patho-specimen
Title: "MII PR Patho Specimen"
Description: "Pathology specimen (based on Biobank module)"
* insert PR_CS_VS_Version
* insert Publisher
* id MS
* meta.lastUpdated MS
* meta.profile MS
* text MS
// Identifikation - Auftrags-ID: Auftrags-ID des Auftraggebers (Placer) || Auftrags-ID des Auftragnehmers (Filler)
* identifier 1.. MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "$this.type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Contains slices for the request's placer- and filler IDs based on type.coding pattern"
* identifier contains Placer-ID 0..1 MS 
                    and Filler-ID 0..1 MS
* identifier[Placer-ID] ^short = "Placer identifier"
* identifier[Placer-ID] ^definition = "Identifier for the placer of the pathology request"
  * value 1.. MS
  * system 1.. MS
  * type 1.. MS
  * type = $v2-0203#PLAC
    * coding MS
      * system 1..1 MS
      * code 1..1 MS
* identifier[Filler-ID] ^short = "Filler Identifier"
* identifier[Filler-ID] ^definition = "Identifier for the filler of the pathology request"
  * value 1.. MS
  * system 1.. MS
  * type 1.. MS
  * type = $v2-0203#FILL
    * coding MS
      * system 1..1 MS
      * code 1..1 MS
* accessionIdentifier 0..1 MS
* accessionIdentifier ^definition = "Laborinterner Identifikator, wird vergeben bei Eingang"
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
/*
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
* parent.reference = "Specimen/E12345_21"
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
*/

Instance: mii-exa-patho-prostate-tru-cut-biopsy-sample
InstanceOf: mii-pr-patho-specimen
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen"
* status = #available
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Narrative skipped for better readability</b></p></div>"
* identifier[0].type = $v2-0203#PLAC
* identifier[=].value = "KHXX_ENDO_18.123451_A"
* identifier[=].system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/untersuchungsauftrag"
* identifier[+].type = $v2-0203#FILL
* identifier[=].value = "E12345_21-A"
* identifier[=].system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht" //  (Typ nicht zu verwenden im Untersuchungsauftrag) - angehangen
* accessionIdentifier.value = "E12345_21"
* accessionIdentifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht" // (Accession identifier nicht zu verwenden im Untersuchungsauftrag) - angehangen
* type = $SCT#309134005 "Prostate tru-cut biopsy sample"
* subject.reference = "Patient/12345"
* request = Reference(mii-exa-patho-request)
* collection.collector.reference = "Practitioner/2346545"
* collection.collectedDateTime = "2021-01-29T06:15:00Z"
* collection.method = $SCT#301759007 "Tru-cut biopsy of prostate (procedure)"
* collection.bodySite = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* container.type = $SCT#434746001 "Specimen vial (physical object)"
* container.additiveReference = Reference(Substance/mii-exa-patho-neutral-buffered-formalin)

Instance: mii-exa-patho-prostate-biopsy-block
InstanceOf: mii-pr-patho-specimen
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen"
* status = #available
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Narrative skipped for better readability</b></p></div>"
* identifier.type = $v2-0203#FILL
* identifier.value = "E12345_21-A1"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E12345_21"
* accessionIdentifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* type = $SCT#1201985008 "Tissue block specimen (specimen)"
* subject.reference = "Patient/12345"
* parent = Reference(mii-exa-patho-prostate-tru-cut-biopsy-sample)
* request = Reference(mii-exa-patho-request)
* collection.collector.reference = "Practitioner/21234"
* collection.collectedDateTime = "2021-01-29T06:15:00Z"
* collection.method = $SCT#168126000 "Sample macroscopy (procedure)"
* collection.bodySite = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* processing.extension[temperaturbedingungen].valueRange.low = 0 'Cel' "°C"
* processing.extension[temperaturbedingungen].valueRange.high = 30 'Cel' "°C"
* processing.procedure.coding[sct] = $SCT#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
* processing.procedure.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
* processing.procedure.extension.valueUrl = "#bearbeitungsprozedur"
* container.type = $SCT#434464009 "Tissue cassette (physical object)"
* container.additiveReference = Reference(Substance/mii-exa-patho-paraffin)

Instance: mii-exa-patho-prostate-biopsy-schnitt-HE
InstanceOf: mii-pr-patho-specimen
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen"
* status = #available
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Narrative skipped for better readability</b></p></div>"
* identifier.type = $v2-0203#FILL
* identifier.value = "E12345_21-A1-HE"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E12345_21"
* accessionIdentifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* type = $SCT#430856003 "Tissue section (specimen)"
* subject.reference = "Patient/12345"
* parent = Reference(mii-exa-patho-prostate-biopsy-block)
* request = Reference(mii-exa-patho-request)
* collection.collector.reference = "Practitioner/2346545"
* collection.collectedDateTime = "2021-01-29T06:15:00Z"
* collection.method = $SCT#40923002 "Tissue processing technique, routine, embed, cut and stain, per surgical specimen (procedure)"
* collection.bodySite = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* processing.extension[temperaturbedingungen].valueRange.low = 0 'Cel' "°C"
* processing.extension[temperaturbedingungen].valueRange.high = 30 'Cel' "°C"
* processing.procedure.coding[sct] = $SCT#104210008 "Hematoxylin and eosin stain method (procedure)"
* processing.procedure.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
* processing.procedure.extension.valueUrl = "#faerbung"
* processing.additive[0] = Reference(Substance/mii-exa-patho-hematoxylin-stain)
* processing.additive[+] = Reference(Substance/mii-exa-patho-eosin-y)
* container.type = $SCT#433466003 "Microscope slide (physical object)"
* container.additiveReference = Reference(Substance/mii-exa-patho-canadabalsam)

Instance: mii-exa-patho-prostate-biopsy-schnitt-p63
InstanceOf: mii-pr-patho-specimen
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen"
* status = #available
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Narrative skipped for better readability</b></p></div>"
* identifier.type = $v2-0203#FILL
* identifier.value = "E12345_21-A1-p63"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E12345_21"
* accessionIdentifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* type = $SCT#430856003 "Tissue section (specimen)"
* subject.reference = "Patient/12345"
* parent = Reference(mii-exa-patho-prostate-biopsy-block)
* request = Reference(mii-exa-patho-request)
* collection.collector.reference = "Practitioner/1234"
* collection.collectedDateTime = "2021-01-29T06:15:00Z"
* collection.method = $SCT#40923002 "Tissue processing technique, routine, embed, cut and stain, per surgical specimen (procedure)"
* collection.bodySite = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* processing.extension[temperaturbedingungen].valueRange.low = 0 'Cel' "°C"
* processing.extension[temperaturbedingungen].valueRange.high = 30 'Cel' "°C"
* processing.procedure.coding[sct] = $SCT#13269000 "Immunocytochemical stain (procedure)"
* processing.procedure.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
* processing.procedure.extension.valueUrl = "#immunfaerbung"
* processing.additive = Reference(Substance/mii-exa-patho-p63-stain)
* container.type = $SCT#433466003 "Microscope slide (physical object)"
* container.additiveReference = Reference(Substance/mii-exa-patho-canadabalsam)

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

Instance: mii-exa-patho-p63-immunostain
InstanceOf: $mii-bio-additive
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance"
* identifier.type = $v2-0203#LI "Labor and industries number"
* identifier.value = "p63"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* status = #active
* category = $substance-category#material "Material"
* code = $befundbericht#p63 "p63 immunostain" 
Alias: $befundbericht = https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht // Korrekt?