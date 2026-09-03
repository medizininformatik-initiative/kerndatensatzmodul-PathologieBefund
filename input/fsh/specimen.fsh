Profile: MII_PR_Patho_Specimen
Parent: $mii-bio-specimencore
Id: mii-pr-patho-specimen
Title: "MII PR Patho Specimen"
Description: """
Dieses Profil erbt von [Profile - Specimen - Bioprobe - Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core)
Ihm liegt das Domänen-Analyse-Modell von HL7 (HL7_DAM_SPECIMEN_R2_INFORM_2019APR) zugrunde. Dieses berücksichtigt insbesondere für die Pathologie das Rollenmodell von Specimen, welche sowohl Gegenstand als auch Produkt von Laborprozessen sind. Das Rootelement(Sample) ist ein klinisch gewonnenes Probenmaterial von einem Patienten, entspricht im Pathologie-Workflow einem Part. Tochterelemente sind Blöcke und Schnitte bzw. ein zytologisches Präparat. Die Kinderproben (Blöcke und Schnitte) sollten stets und mindestens ihre direkte Elternprobe über das Element Specimen.parent referenzieren.

Proben werden in verschiedenen Profilen referenziert. Im "PathologieBefund" und in den "Einzelbeobachtungen" der Grouper für Makroskopie und Diagnostische Schlussfolgerungen sollten die Proben des Eingangs (Parts), in den "Einzelbeobachtungen" des Mikroskopie-Groupers die Proben der gefärbten Gewebsschnitt-Ebene referenziert werden.
"""
* insert PR_CS_VS_Version
* insert Publisher
* insert Translation(^title, de-DE, MII PR Patho Probe)
* insert Translation(^title, en-US, MII PR Patho Specimen)
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[+].url = "lang"
* ^description.extension[=].extension[=].valueCode = #en-US
* ^description.extension[=].extension[+].url = "content"
* ^description.extension[=].extension[=].valueString = """
This profile inherits from [Profile - Specimen - Bioprobe - Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core)
It is based on the HL7 Domain Analysis Model (HL7_DAM_SPECIMEN_R2_INFORM_2019APR). This model, in particular for pathology, accounts for the role model of specimens, which are both the subject and the product of laboratory processes. The root element (Sample) is clinically obtained specimen material from a patient and corresponds to a Part in the pathology workflow. Child elements are blocks and slides, or a cytological preparation. The child specimens (blocks and slides) should always reference at least their direct parent specimen via the Specimen.parent element.

Specimens are referenced in various profiles. In the "PathologyReport" and in the "individual observations" of the groupers for Macroscopy and Diagnostic Conclusions, the specimens of the accession (Parts) should be referenced; in the "individual observations" of the Microscopy grouper, the specimens of the stained tissue slide level should be referenced.
"""
* id MS
* meta.lastUpdated MS
* meta.profile MS
* text MS
// Identifikation - Auftrags-ID: Auftrags-ID des Auftraggebers (Placer) || Auftrags-ID des Auftragnehmers (Filler)
* identifier 1.. MS
* insert Label(identifier, Identifikator, Eindeutiger Identifikator der Probe)
* insert Translation(identifier ^short, de-DE, Identifikator)
* insert Translation(identifier ^short, en-US, Identifier)
* insert Translation(identifier ^definition, de-DE, Eindeutiger Identifikator der Probe)
* insert Translation(identifier ^definition, en-US, Unique identifier of the specimen)
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "$this.type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Contains slices for the request's placer- and filler IDs based on type.coding pattern"
* identifier contains Placer-ID 0..1 MS and Filler-ID 0..1 MS
* insert Label(identifier[Placer-ID], Auftraggeber-ID, Identifikator des Auftraggebers)
* insert Translation(identifier[Placer-ID] ^short, de-DE, Auftraggeber-ID)
* insert Translation(identifier[Placer-ID] ^short, en-US, Placer ID)
* insert Translation(identifier[Placer-ID] ^definition, de-DE, Identifikator des Auftraggebers)
* insert Translation(identifier[Placer-ID] ^definition, en-US, Identifier of the placer) 
                    
* insert Label(identifier[Filler-ID], Auftragnehmer-ID, Identifikator des Auftragnehmers)
* insert Translation(identifier[Filler-ID] ^short, de-DE, Auftragnehmer-ID)
* insert Translation(identifier[Filler-ID] ^short, en-US, Filler ID)
* insert Translation(identifier[Filler-ID] ^definition, de-DE, Identifikator des Auftragnehmers)
* insert Translation(identifier[Filler-ID] ^definition, en-US, Identifier of the filler)
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
* insert Label(accessionIdentifier, Labor-ID, Laborinterner Identifikator)
* insert Translation(accessionIdentifier ^short, de-DE, Labor-ID)
* insert Translation(accessionIdentifier ^short, en-US, Accession identifier)
* insert Translation(accessionIdentifier ^definition, de-DE, Laborinterner Identifikator)
* insert Translation(accessionIdentifier ^definition, en-US, Laboratory internal identifier)
* accessionIdentifier ^definition = "Laborinterner Identifikator, wird vergeben bei Eingang"
* collection
  * method 1.. MS
  * method from mii-vs-patho-collection-method-snomed-ct (extensible)
  * bodySite.extension contains $r5-specimen-collection-bodysite named bodyStructure 0..1 MS
  * bodySite.extension[bodyStructure].valueReference only Reference(BodyStructure)
  * insert Label(method, Entnahmemethode, Methode der Probenentnahme)
  * insert Translation(method ^short, de-DE, Entnahmemethode)
  * insert Translation(method ^short, en-US, Collection method)
  * insert Translation(method ^definition, de-DE, Methode der Probenentnahme)
  * insert Translation(method ^definition, en-US, Method of specimen collection)

  // R5 modelliert Specimen.collection.bodySite als CodeableReference. Die Cross-Version-Extension
  // traegt den Reference-Anteil auf BodyStructure; der codierte Anteil bleibt in bodySite selbst.
  * insert Label(bodySite.extension[bodyStructure], Koerperstruktur, Verweis auf eine BodyStructure-Ressource mit der detaillierten Lokalisation)
  * insert Translation(bodySite.extension[bodyStructure] ^short, de-DE, Koerperstruktur)
  * insert Translation(bodySite.extension[bodyStructure] ^short, en-US, Body structure)
  * insert Translation(bodySite.extension[bodyStructure] ^definition, de-DE, Verweis auf eine BodyStructure-Ressource mit der detaillierten Lokalisation)
  * insert Translation(bodySite.extension[bodyStructure] ^definition, en-US, Reference to a BodyStructure resource carrying the detailed location)
* request only Reference(mii-pr-patho-service-request)
* processing 
  * procedure from mii-vs-patho-processing-procedure-snomed-ct (extensible)
  * additive only Reference($mii-bio-additive)
* container MS
  * type from mii-vs-patho-container-type-snomed-ct (required)
* insert Label(container, Behälter, Probenbehälter)
* insert Translation(container ^short, de-DE, Behälter)
* insert Translation(container ^short, en-US, Container)
* insert Translation(container ^definition, de-DE, Probenbehälter)
* insert Translation(container ^definition, en-US, Specimen container)

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
* subject = Reference(Patient/mii-exa-patho-patient-12345)
* parent = Reference(Specimen/E12345_21)
* request = Reference(mii-exa-patho-request)
* collection
  * collector = Reference(Practitioner/mii-exa-patho-practitioner-2346545)
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
* subject = Reference(Patient/mii-exa-patho-patient-12345)
* parent = Reference(mii-exa-patho-prostate-tru-cut-biopsy-sample)
* request = Reference(mii-exa-patho-request)
* collection
  * collector = Reference(Practitioner/mii-exa-patho-practitioner-2346545)
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
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2027.0.0-ballot.rc1"
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
* subject = Reference(Patient/mii-exa-patho-patient-12345)
* request = Reference(mii-exa-patho-request)
* collection.collector = Reference(Practitioner/mii-exa-patho-practitioner-2346545)
* collection.collectedDateTime = "2021-01-29T06:15:00Z"
* collection.method = $SCT#301759007 "Tru-cut biopsy of prostate (procedure)"
* collection.bodySite = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* container.type = $SCT#434746001 "Specimen vial (physical object)"
* container.additiveReference = Reference(Substance/mii-exa-patho-neutral-buffered-formalin)
* extension[feature].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[feature].extension[type].valueCodeableConcept = $SCT#251597001 "Structure of right lateral lobe of prostate (body structure)"
* extension[feature].extension[type].url = "type"
* extension[feature].extension[description].valueString = "Marked by red ink"
* extension[feature].extension[description].url = "description"

Instance: mii-exa-patho-prostate-biopsy-block
InstanceOf: mii-pr-patho-specimen
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2027.0.0-ballot.rc1"
* status = #available
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Narrative skipped for better readability</b></p></div>"
* identifier.type = $v2-0203#FILL
* identifier.value = "E12345_21-A1"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E12345_21"
* accessionIdentifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* type = $SCT#1201985008 "Tissue block specimen (specimen)"
* subject = Reference(Patient/mii-exa-patho-patient-12345)
* parent = Reference(mii-exa-patho-prostate-tru-cut-biopsy-sample)
* request = Reference(mii-exa-patho-request)
* collection.collector = Reference(Practitioner/mii-exa-patho-practitioner-21234)
* collection.collectedDateTime = "2021-01-29T06:15:00Z"
* collection.method = $SCT#168126000 "Sample macroscopy (procedure)"
* collection.bodySite = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* processing.extension[temperaturbedingungen].valueRange.low = 0 'Cel' "°C"
* processing.extension[temperaturbedingungen].valueRange.high = 30 'Cel' "°C"
* processing.procedure.coding[sct] = $SCT#787376009 "Preparation of formalin fixed paraffin embedded tissue specimen (procedure)"
//* processing.procedure.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
//* processing.procedure.extension.valueUrl = "#bearbeitungsprozedur"
* container.type = $SCT#434464009 "Tissue cassette (physical object)"
* container.additiveReference = Reference(Substance/mii-exa-patho-paraffin)

Instance: mii-exa-patho-prostate-biopsy-schnitt-HE
InstanceOf: mii-pr-patho-specimen
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2027.0.0-ballot.rc1"
* status = #available
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Narrative skipped for better readability</b></p></div>"
* identifier.type = $v2-0203#FILL
* identifier.value = "E12345_21-A1-HE"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E12345_21"
* accessionIdentifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* type = $SCT#430856003 "Tissue section (specimen)"
* subject = Reference(Patient/mii-exa-patho-patient-12345)
* parent = Reference(mii-exa-patho-prostate-biopsy-block)
* request = Reference(mii-exa-patho-request)
* collection.collector = Reference(Practitioner/mii-exa-patho-practitioner-2346545)
* collection.collectedDateTime = "2021-01-29T06:15:00Z"
* collection.method = $SCT#40923002 "Tissue processing technique, routine, embed, cut and stain, per surgical specimen (procedure)"
* collection.bodySite = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* processing.extension[temperaturbedingungen].valueRange.low = 0 'Cel' "°C"
* processing.extension[temperaturbedingungen].valueRange.high = 30 'Cel' "°C"
* processing.procedure.coding[sct] = $SCT#104210008 "Hematoxylin and eosin stain method (procedure)"
//* processing.procedure.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
//* processing.procedure.extension.valueUrl = "#faerbung"
* processing.additive[0] = Reference(Substance/mii-exa-patho-hematoxylin-stain)
* processing.additive[+] = Reference(Substance/mii-exa-patho-eosin-y)
* container.type = $SCT#433466003 "Microscope slide (physical object)"
* container.additiveReference = Reference(Substance/mii-exa-patho-canadabalsam)

Instance: mii-exa-patho-prostate-biopsy-schnitt-p63
InstanceOf: mii-pr-patho-specimen
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2027.0.0-ballot.rc1"
* status = #available
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Narrative skipped for better readability</b></p></div>"
* identifier.type = $v2-0203#FILL
* identifier.value = "E12345_21-A1-p63"
* identifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* accessionIdentifier.value = "E12345_21"
* accessionIdentifier.system = "https://pathologie.klinikum-karlsruhe.de/fhir/fn/befundbericht"
* type = $SCT#430856003 "Tissue section (specimen)"
* subject = Reference(Patient/mii-exa-patho-patient-12345)
* parent = Reference(mii-exa-patho-prostate-biopsy-block)
* request = Reference(mii-exa-patho-request)
* collection.collector = Reference(Practitioner/mii-exa-patho-practitioner-1234)
* collection.collectedDateTime = "2021-01-29T06:15:00Z"
* collection.method = $SCT#40923002 "Tissue processing technique, routine, embed, cut and stain, per surgical specimen (procedure)"
* collection.bodySite = $SCT#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* processing.extension[temperaturbedingungen].valueRange.low = 0 'Cel' "°C"
* processing.extension[temperaturbedingungen].valueRange.high = 30 'Cel' "°C"
* processing.procedure.coding[sct] = $SCT#13269000 "Immunocytochemical stain (procedure)"
//* processing.procedure.extension.url = "http://hl7.org/fhir/StructureDefinition/narrativeLink"
//* processing.procedure.extension.valueUrl = "#immunfaerbung"
* processing.additive = Reference(Substance/mii-exa-patho-p63-immunostain)
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

Instance: mii-exa-patho-paraffin
InstanceOf: $mii-bio-additive
Usage: #example
Title: "EXA MII Patho Paraffin"
Description: "Paraffin wax (substance)"
* code.coding = $SCT#311731000 "Paraffin wax (substance)"

Instance: mii-exa-patho-canadabalsam
InstanceOf: $mii-bio-additive
Usage: #example
Title: "EXA MII Patho Canada Balsam"
Description: "Canada balsam (substance)"
* code.coding = $SCT#412582000 "Canada balsam (substance)"

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
// Radikalprostatektomie-Praeparat mit BodyStructure fuer die detaillierte Lokalisation
// (R5 includedStructure via Cross-Version-Extension). Codes analog ProstateCancerSpec IG.
Instance: mii-exa-patho-prostate-body-structure
InstanceOf: BodyStructure
Usage: #example
Title: "MII EXA Patho Prostate Body Structure"
Description: "Lokalisation im Prostatektomie-Praeparat: rechte apikale periphere Zone, posterior, 15 mm proximal des Apex"
* active = true
* patient = Reference(Patient/mii-exa-patho-patient-12345)
* location = $SCT#717007000 "Apical peripheral zone of prostate"
* locationQualifier[+] = $SCT#24028007 "Right (qualifier value)"
* description = "Rechte apikale periphere Zone der Prostata, posterior, 15 mm proximal des Apex"
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure"
* extension[0].extension[0].url = "structure"
* extension[0].extension[0].valueCodeableConcept = $SCT#717007000 "Apical peripheral zone of prostate"
* extension[0].extension[1].url = "laterality"
* extension[0].extension[1].valueCodeableConcept = $SCT#24028007 "Right (qualifier value)"
* extension[0].extension[2].url = "bodyLandmarkOrientation"
* extension[0].extension[2].extension[0].url = "landmarkDescription"
* extension[0].extension[2].extension[0].valueCodeableConcept = $SCT#68756004 "Structure of apex of prostate"
* extension[0].extension[2].extension[1].url = "surfaceOrientation"
* extension[0].extension[2].extension[1].valueCodeableConcept = $SCT#255551008 "Posterior"
* extension[0].extension[2].extension[2].url = "distanceFromLandmark"
* extension[0].extension[2].extension[2].extension[0].url = "value"
* extension[0].extension[2].extension[2].extension[0].valueQuantity = 15 'mm' "mm"

Instance: mii-exa-patho-prostate-resection-sample
InstanceOf: mii-pr-patho-specimen
Usage: #example
Title: "MII EXA Patho Prostate Resection Sample"
Description: "Radikalprostatektomie-Praeparat als Einsendeprobe (Part)"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2027.0.0-ballot.rc1"
* identifier[+]
  * type = $v2-0203#PLAC
  * system = "https://urologie.example-hospital.de/fhir/specimen/placer"
  * value = "OP25_311_A"
* identifier[+]
  * type = $v2-0203#FILL
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_311_A"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_311"
* status = #available
* type = $SCT#122725003 "Specimen from prostate obtained by radical prostatectomy (specimen)"
* subject = Reference(Patient/mii-exa-patho-patient-12345)
* collection
  * collector = Reference(Practitioner/mii-exa-patho-practitioner-2346545)
  * collectedDateTime = "2025-02-05T10:00:00+01:00"
  * method = $SCT#26294005 "Radical prostatectomy (procedure)"
  * bodySite = $SCT#41216001 "Prostate"
  * bodySite.extension[bodyStructure].valueReference = Reference(BodyStructure/mii-exa-patho-prostate-body-structure)
* container
  * type = $SCT#434746001 "Specimen vial (physical object)"
  * additiveReference = Reference(Substance/mii-exa-patho-neutral-buffered-formalin)
* note.text = "Radikalprostatektomie-Praeparat, Tumorregion rechte apikale periphere Zone (posterior) markiert. In Formalin fixiert."

// BET-Exzisionspraeparat der Mamma (Vorlage G. Haroske) mit BodyStructure (morphology +
// Landmark Mamille/Uhrzeit) und Specimen.feature (Markierungen) via R5-Cross-Version-Extensions.
Instance: mii-exa-patho-left-breast-body-structure
InstanceOf: BodyStructure
Usage: #example
Title: "MII EXA Patho Left Breast Body Structure"
Description: "Lokalisation im BET-Exzisionspraeparat: linke Mamma, unterer aeusserer Quadrant, 5 Uhr, 50 mm distal der Mamille"
* active = true
* patient = Reference(Patient/mii-exa-patho-patient-34545)
* morphology = $SCT#82711006 "Infiltrating duct carcinoma"
* morphology.text = "Bioptisch gesichertes invasives Karzinom"
* location = $SCT#110502005 "Lower outer quadrant of left breast"
* locationQualifier[+] = $SCT#7771000 "Left (qualifier value)"
* description = "5 x 3 x 3 cm, eine Draht- und eine Fadenmarkierung"
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure"
* extension[0].extension[0].url = "structure"
* extension[0].extension[0].valueCodeableConcept = $SCT#110502005 "Lower outer quadrant of left breast"
* extension[0].extension[1].url = "laterality"
* extension[0].extension[1].valueCodeableConcept = $SCT#7771000 "Left (qualifier value)"
* extension[0].extension[2].url = "bodyLandmarkOrientation"
* extension[0].extension[2].extension[0].url = "landmarkDescription"
* extension[0].extension[2].extension[0].valueCodeableConcept = $SCT#24142002 "Nipple structure"
* extension[0].extension[2].extension[1].url = "clockFacePosition"
* extension[0].extension[2].extension[1].valueCodeableConcept = $SCT#260335000 "5 o'clock position"
* extension[0].extension[2].extension[2].url = "surfaceOrientation"
* extension[0].extension[2].extension[2].valueCodeableConcept = $SCT#46053002 "Distal"
* extension[0].extension[2].extension[3].url = "distanceFromLandmark"
* extension[0].extension[2].extension[3].extension[0].url = "value"
* extension[0].extension[2].extension[3].extension[0].valueQuantity = 50 'mm' "mm"

Instance: mii-exa-patho-breast-resection-sample
InstanceOf: mii-pr-patho-specimen
Usage: #example
Title: "MII EXA Patho Breast Resection Sample"
Description: "BET-Exzisionspraeparat der linken Mamma als Einsendeprobe (Part), mit Draht- und Fadenmarkierungen"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|2027.0.0-ballot.rc1"
* identifier[+]
  * type = $v2-0203#PLAC
  * system = "https://senologie.example-hospital.de/fhir/specimen/placer"
  * value = "OP25_210_A"
* identifier[+]
  * type = $v2-0203#FILL
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210_A"
* accessionIdentifier
  * system = "https://pathologie.example-hospital.de/fhir/fn/befundbericht"
  * value = "E_25_210"
* status = #available
* type = $SCT#397199005 "Specimen from breast obtained by excision"
* subject = Reference(Patient/mii-exa-patho-patient-34545)
* request = Reference(mii-exa-patho-request)
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[0].extension[0].url = "type"
* extension[0].extension[0].valueCodeableConcept = $SCT#735083009 "Part of left breast"
* extension[0].extension[1].url = "description"
* extension[0].extension[1].valueString = "Praeoperative radiologische Drahtmarkierung der Biopsiestelle"
* extension[1].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[1].extension[0].url = "type"
* extension[1].extension[0].valueCodeableConcept = $SCT#3680001000004109 "Anterior surgical margin"
* extension[1].extension[1].url = "description"
* extension[1].extension[1].valueString = "Fadenmarkierung lang anterior"
* extension[2].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature"
* extension[2].extension[0].url = "type"
* extension[2].extension[0].valueCodeableConcept = $SCT#880001000004108 "Distal surgical margin"
* extension[2].extension[1].url = "description"
* extension[2].extension[1].valueString = "Fadenmarkierung 2x kurz distal"
* collection
  * collector = Reference(Practitioner/mii-exa-patho-practitioner-2346545)
  * collectedDateTime = "2025-02-05T10:00:00+01:00"
  * method = $SCT#237371007 "Wide local excision of breast lesion"
  * bodySite = $SCT#33564002 "Structure of lower outer quadrant of breast"
  * bodySite.extension[bodyStructure].valueReference = Reference(BodyStructure/mii-exa-patho-left-breast-body-structure)
* container
  * type = $SCT#434746001 "Specimen vial (physical object)"
  * additiveReference = Reference(Substance/mii-exa-patho-neutral-buffered-formalin)
* note.text = "BET-Exzisionspraeparat Mamma links, unterer aeusserer Quadrant, 5 Uhr, 50 mm von der Mamille. Drahthaekchen und zwei Fadenmarkierungen."
