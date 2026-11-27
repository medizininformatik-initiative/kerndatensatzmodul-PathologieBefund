//--------------------------------------------
// IntraoperativeObservation
//--------------------------------------------
Profile: MII_PR_Patho_Intraoperative_Grouper
Parent: mii-pr-patho-section-grouper
Id: mii-pr-patho-intraoperative-grouper
Title: "MII PR Patho Intraoperative Grouper"
Description: """
Das Profil **MII PR Patho Intraoperative Grouper** der Resource Observation stellt als `DiagnosticReport.result:intraoperative-grouper` für einen [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html) den jeweiligen Beobachtungsberichtsabschnitt "Intraoperative Beobachtung" (entspr. dieser CDA-Section) dar und fungiert als Organizer für die entsprechenden Gruppierungen von [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).

Dieses spezielle Grouper-Observation-Element ist allen anderen Observation-Elementen voranzustellen, welche dann als `hasMember`-Referenzen zu [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) eingebunden werden. [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) Observations wiederum referenzieren ihre "Eltern-Beobachtungen" via `derivedFrom`-Referenzen zu SDC QuestionnaireResponses und/oder zu den jeweiligen Grouper Observations.

Falls der Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, erfolgt die Zuordnung der MII PR Patho Befunde zu diesen verschiedenen Proben über die Probenreferenzen dieser MII PR Patho Befunde, und zwar hinsichtlich der Referenzen die „Parts“ betreffend.

Auflistung und Erklärung der FHIR-Elemente siehe **(abstract) MII PR Patho Section Grouper**.
"""
* insert PR_CS_VS_Version
* insert Publisher
* insert Translation(^title, de-DE, MII PR Patho Intraoperative Grouper)
* insert Translation(^title, en-US, MII PR Patho Intraoperative Grouper)
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[+].url = "lang"
* ^description.extension[=].extension[=].valueCode = #en-US
* ^description.extension[=].extension[+].url = "content"
* ^description.extension[=].extension[=].valueString = """
The **MII PR Patho Intraoperative Grouper** profile of the Observation resource represents, as `DiagnosticReport.result:intraoperative-grouper` for a [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html), the respective observation report section "Intraoperative Observation" (corresponding to this CDA section) and acts as an organizer for the corresponding groupings of [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).

This special grouper observation element is to be placed before all other observation elements, which are then included as `hasMember` references to [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html). [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) observations in turn reference their "parent observations" via `derivedFrom` references to SDC QuestionnaireResponses and/or to the respective grouper observations.

If the observation report section contains multiple submitted specimens, the MII PR Patho Findings are assigned to these different specimens via the specimen references of these MII PR Patho Findings, specifically the references concerning the "parts".

For a listing and explanation of the FHIR elements, see **(abstract) MII PR Patho Section Grouper**.
"""

// Inherited mustSupport elements from section grouper
* insert Label(text, Text, Narrative Darstellung)
* insert Translation(text ^short, de-DE, Text)
* insert Translation(text ^short, en-US, Text)
* insert Translation(text ^definition, de-DE, Narrative Darstellung)
* insert Translation(text ^definition, en-US, Narrative representation)
* insert Label(hasMember[pathology-finding], Einzelbeobachtungen, Referenz zu Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^short, de-DE, Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^short, en-US, Pathology findings)
* insert Translation(hasMember[pathology-finding] ^definition, de-DE, Referenz zu Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^definition, en-US, Reference to pathology findings)

* code = $LOINC#83321-0

// Example(s) TODO


//--------------------------------------------
// Macroscopic Observation
//--------------------------------------------
Profile: MII_PR_Patho_Macroscopic_Grouper
Parent: mii-pr-patho-section-grouper
Id: mii-pr-patho-macroscopic-grouper
Title: "MII PR Patho Macroscopic Grouper"
Description: """
Das Profil **MII PR Patho Macroscopic Grouper** der Resource Observation stellt als `DiagnosticReport.result:macroscopic-grouper` für einen [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html) den jeweiligen Beobachtungsberichtsabschnitt "Makroskopische Beurteilung" (entspr. dieser CDA-Section) dar und fungiert als Organizer für die entsprechenden Gruppierungen von [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).

Dieses spezielle Grouper-Observation-Element ist allen anderen Observation-Elementen voranzustellen, welche dann als `hasMember`-Referenzen zu [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) eingebunden werden. [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) Observations wiederum referenzieren ihre "Eltern-Beobachtungen" via `derivedFrom`-Referenzen zu SDC QuestionnaireResponses und/oder zu den jeweiligen Grouper Observations.

Falls der Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, erfolgt die Zuordnung der MII PR Patho Befunde zu diesen verschiedenen Proben über die Probenreferenzen dieser MII PR Patho Befunde, und zwar hinsichtlich der Referenzen die „Parts“ betreffend.

Auflistung und Erklärung der FHIR-Elemente siehe [MII PR Patho Section Grouper](StructureDefinition-mii-pr-patho-section-grouper.html).
"""
* insert PR_CS_VS_Version
* insert Publisher
* insert Translation(^title, de-DE, MII PR Patho Macroscopic Grouper)
* insert Translation(^title, en-US, MII PR Patho Macroscopic Grouper)
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[+].url = "lang"
* ^description.extension[=].extension[=].valueCode = #en-US
* ^description.extension[=].extension[+].url = "content"
* ^description.extension[=].extension[=].valueString = """
The **MII PR Patho Macroscopic Grouper** profile of the Observation resource represents, as `DiagnosticReport.result:macroscopic-grouper` for a [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html), the respective observation report section "Macroscopic Evaluation" (corresponding to this CDA section) and acts as an organizer for the corresponding groupings of [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).

This special grouper observation element is to be placed before all other observation elements, which are then included as `hasMember` references to [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html). [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) observations in turn reference their "parent observations" via `derivedFrom` references to SDC QuestionnaireResponses and/or to the respective grouper observations.

If the observation report section contains multiple submitted specimens, the MII PR Patho Findings are assigned to these different specimens via the specimen references of these MII PR Patho Findings, specifically the references concerning the "parts".

For a listing and explanation of the FHIR elements, see [MII PR Patho Section Grouper](StructureDefinition-mii-pr-patho-section-grouper.html).
"""

// Inherited mustSupport elements from section grouper
* insert Label(text, Text, Narrative Darstellung)
* insert Translation(text ^short, de-DE, Text)
* insert Translation(text ^short, en-US, Text)
* insert Translation(text ^definition, de-DE, Narrative Darstellung)
* insert Translation(text ^definition, en-US, Narrative representation)
* insert Label(hasMember[pathology-finding], Einzelbeobachtungen, Referenz zu Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^short, de-DE, Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^short, en-US, Pathology findings)
* insert Translation(hasMember[pathology-finding] ^definition, de-DE, Referenz zu Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^definition, en-US, Reference to pathology findings)

* code = $LOINC#22634-0

// Example(s)
/*
Instance: mii-exa-patho-macro-grouper-a
InstanceOf: mii-pr-patho-macroscopic-grouper
Usage: #example
Title: "MII EXA Patho Macro Grouper A"
Description: "Grouper for all Macroscopic Observations of Specimen A (1st punch)"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* code.coding = $LOINC#22634-0 
* hasMember[+] = Reference(mii-exa-patho-biopsy-site-a)
* hasMember[+] = Reference(mii-exa-patho-tissue-length-a)
* specimen = Reference(mii-exa-patho-he-stained-slide-prostate)

Instance: mii-exa-patho-macro-grouper-b
InstanceOf: mii-pr-patho-macroscopic-grouper
Usage: #example
Title: "MII EXA Patho Macro Grouper B"
Description: "Grouper for all Macroscopic Observations of Specimen B (2nd punch)"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* code.coding = $LOINC#22634-0 
* valueString = "Specimen B: Prostataseitenlappen rechts, apikal 1.5cm"
* hasMember[+] = Reference(mii-exa-patho-biopsy-site-b)
* hasMember[+] = Reference(mii-exa-patho-tissue-length-b)
*/
Instance: mii-exa-patho-macro-grouper-a
InstanceOf: mii-pr-patho-macroscopic-grouper
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|2027.0.0"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h1>Makroskopische Beurteilung</h1><p><b>Probe A: 1,2 cm langer weißlicher Gewebszylinder aus dem rechten lateralen Prostataseitenlappen peripher </b></p></div>"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* code.coding = $LOINC#22634-0
* status = #final
* hasMember[0] = Reference(Observation/mii-exa-patho-biopsy-site-a)
* hasMember[+] = Reference(Observation/mii-exa-patho-tissue-length-a)



//-------------------------------------
// Microscopic Observation
//-------------------------------------
Profile: MII_PR_Patho_Microscopic_Grouper
Parent: mii-pr-patho-section-grouper
Id: mii-pr-patho-microscopic-grouper
Title: "MII PR Patho Microscopic Grouper"
Description: """
Das Profil **MII PR Patho Microscopic Grouper** der Resource Observation stellt als `DiagnosticReport.result:microscopic-grouper` für einen [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html) den jeweiligen Beobachtungsberichtsabschnitt "Mikroskopische Beurteilung" (entspr. dieser CDA-Section) dar und fungiert als Organizer für die entsprechenden Gruppierungen von [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).

Dieses spezielle Grouper-Observation-Element ist allen anderen Observation-Elementen voranzustellen, welche dann als `hasMember`-Referenzen zu [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) eingebunden werden. [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) Observations wiederum referenzieren ihre "Eltern-Beobachtungen" via `derivedFrom`-Referenzen zu SDC QuestionnaireResponses und/oder zu den jeweiligen Grouper Observations.

Falls der Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, erfolgt die Zuordnung der MII PR Patho Befunde zu diesen verschiedenen Proben über die Probenreferenzen dieser MII PR Patho Befunde, und zwar hinsichtlich der Referenzen die „Parts“ betreffend.

Auflistung und Erklärung der FHIR-Elemente siehe [MII PR Patho Section Grouper](StructureDefinition-mii-pr-patho-section-grouper.html).
"""
* insert PR_CS_VS_Version
* insert Publisher
* insert Translation(^title, de-DE, MII PR Patho Microscopic Grouper)
* insert Translation(^title, en-US, MII PR Patho Microscopic Grouper)
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[+].url = "lang"
* ^description.extension[=].extension[=].valueCode = #en-US
* ^description.extension[=].extension[+].url = "content"
* ^description.extension[=].extension[=].valueString = """
The **MII PR Patho Microscopic Grouper** profile of the Observation resource represents, as `DiagnosticReport.result:microscopic-grouper` for a [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html), the respective observation report section "Microscopic Evaluation" (corresponding to this CDA section) and acts as an organizer for the corresponding groupings of [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).

This special grouper observation element is to be placed before all other observation elements, which are then included as `hasMember` references to [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html). [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) observations in turn reference their "parent observations" via `derivedFrom` references to SDC QuestionnaireResponses and/or to the respective grouper observations.

If the observation report section contains multiple submitted specimens, the MII PR Patho Findings are assigned to these different specimens via the specimen references of these MII PR Patho Findings, specifically the references concerning the "parts".

For a listing and explanation of the FHIR elements, see [MII PR Patho Section Grouper](StructureDefinition-mii-pr-patho-section-grouper.html).
"""

// Inherited mustSupport elements from section grouper
* insert Label(text, Text, Narrative Darstellung)
* insert Translation(text ^short, de-DE, Text)
* insert Translation(text ^short, en-US, Text)
* insert Translation(text ^definition, de-DE, Narrative Darstellung)
* insert Translation(text ^definition, en-US, Narrative representation)
* insert Label(hasMember[pathology-finding], Einzelbeobachtungen, Referenz zu Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^short, de-DE, Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^short, en-US, Pathology findings)
* insert Translation(hasMember[pathology-finding] ^definition, de-DE, Referenz zu Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^definition, en-US, Reference to pathology findings)

* code = $LOINC#22635-7

// Example(s)
/*
Instance: mii-exa-patho-micro-grouper-a
InstanceOf: mii-pr-patho-microscopic-grouper
Usage: #example
Title: "MII EXA Patho Micro Grouper A"
Description: "Grouper for all Microscopic Observations of Specimen A"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* code.coding = $LOINC#22635-7 
* valueString = "Specimen A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders..."
* hasMember[+] = Reference(mii-exa-patho-histologic-type-a)
* hasMember[+] = Reference(mii-exa-patho-gleason-pattern-a)
* specimen = Reference(mii-exa-patho-he-stained-slide-prostate)
*/

Instance: mii-exa-patho-micro-grouper-a
InstanceOf: mii-pr-patho-microscopic-grouper
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper|2027.0.0"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h1>Mikroskopische Beurteilung</h1><p><b>Probe A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders einnehmen</b></p></div>"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* code.coding = $LOINC#22635-7
* status = #final
* valueString = "Specimen A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders..."
* hasMember[0] = Reference(Observation/mii-exa-patho-histologic-type-a)
* hasMember[+] = Reference(Observation/mii-exa-patho-gleason-pattern-a)
* hasMember[+] = Reference(Observation/mii-exa-patho-p63-a)


//--------------------------------------------
// Additional Specified Observations Grouper
//--------------------------------------------
Profile: MII_PR_Patho_Additional_Specified_Grouper
Parent: mii-pr-patho-section-grouper
Id: mii-pr-patho-additional-specified-grouper
Title: "MII PR Patho Additional Specified Grouper"
Description: """
Das Profil **MII PR Patho Additional Specified Grouper** der Resource [Observation](http://hl7.org/fhir/R4/observation.html) stellt als `DiagnosticReport.result` für einen [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html) den jeweiligen Beobachtungsberichtsabschnitt "Zusätzliche spezifizierte Beobachtungen" (entspr. dieser CDA-Section) dar und fungiert als Organizer für die entsprechenden Gruppierungen von [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) aus nicht-morphologischen Untersuchungen bzw. aus molekulargenetischen Untersuchungen.

Dieses spezielle Grouper-Observation-Element ist allen anderen Observation-Elementen voranzustellen, welche dann als `hasMember`-Referenzen zu [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) eingebunden werden. [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) Observations wiederum referenzieren ihre "Eltern-Beobachtungen" via `derivedFrom`-Referenzen zu SDC QuestionnaireResponses und/oder zu den jeweiligen Grouper Observations.

Falls der Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, erfolgt die Zuordnung der MII PR Patho Befunde zu diesen verschiedenen Proben über die Probenreferenzen dieser MII PR Patho Befunde, und zwar hinsichtlich der Referenzen die „Parts“ betreffend.

Auflistung und Erklärung der FHIR-Elemente siehe **(abstract) MII PR Patho Section Grouper**.
"""
* insert PR_CS_VS_Version
* insert Publisher
* insert Translation(^title, de-DE, MII PR Patho Additional Specified Grouper)
* insert Translation(^title, en-US, MII PR Patho Additional Specified Grouper)
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[+].url = "lang"
* ^description.extension[=].extension[=].valueCode = #en-US
* ^description.extension[=].extension[+].url = "content"
* ^description.extension[=].extension[=].valueString = """
The **MII PR Patho Additional Specified Grouper** profile of the [Observation](http://hl7.org/fhir/R4/observation.html) resource represents, as `DiagnosticReport.result` for a [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html), the respective observation report section "Additional Specified Observations" (corresponding to this CDA section) and acts as an organizer for the corresponding groupings of [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) from non-morphological examinations or from molecular genetic examinations.

This special grouper observation element is to be placed before all other observation elements, which are then included as `hasMember` references to [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html). [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) observations in turn reference their "parent observations" via `derivedFrom` references to SDC QuestionnaireResponses and/or to the respective grouper observations.

If the observation report section contains multiple submitted specimens, the MII PR Patho Findings are assigned to these different specimens via the specimen references of these MII PR Patho Findings, specifically the references concerning the "parts".

For a listing and explanation of the FHIR elements, see **(abstract) MII PR Patho Section Grouper**.
"""

// Inherited mustSupport elements from section grouper
* insert Label(text, Text, Narrative Darstellung)
* insert Translation(text ^short, de-DE, Text)
* insert Translation(text ^short, en-US, Text)
* insert Translation(text ^definition, de-DE, Narrative Darstellung)
* insert Translation(text ^definition, en-US, Narrative representation)
* insert Label(hasMember[pathology-finding], Einzelbeobachtungen, Referenz zu Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^short, de-DE, Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^short, en-US, Pathology findings)
* insert Translation(hasMember[pathology-finding] ^definition, de-DE, Referenz zu Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^definition, en-US, Reference to pathology findings)

* code = $LOINC#100969-5

// Example(s) TODO


//--------------------------------------------
// Diagnostic Conclusion Grouper
//--------------------------------------------
Profile: MII_PR_Patho_Diagnostic_Conclusion_Grouper
Parent: mii-pr-patho-section-grouper	
Id: mii-pr-patho-diagnostic-conclusion-grouper
Title: "MII PR Patho Diagnostic Conclusion Grouper"
Description: """
Das Profil **MII PR Patho Diagnostic Conclusion Grouper** der Ressource Observation stellt als `DiagnosticReport.result:diagnostic-conclusion-grouper` für einen [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html) den jeweiligen Beobachtungsberichtsabschnitt "Diagnostische Schlussfolgerung" (entspr. dieser CDA-Section) dar und fungiert als Organizer für die entsprechenden Gruppierungen von [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).

Dieses spezielle Grouper-Observation-Element ist allen anderen Observation-Elementen voranzustellen, welche dann als `hasMember`-Referenzen zu [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) eingebunden werden. [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) Observations wiederum referenzieren ihre "Eltern-Beobachtungen" via `derivedFrom`-Referenzen zu SDC QuestionnaireResponses und/oder zu den jeweiligen Grouper Observations.

Falls der Beobachtungsberichtsabschnitt mehrere Eingangspräparate (Proben) beinhaltet, erfolgt die Zuordnung der MII PR Patho Befunde zu diesen verschiedenen Proben über die Probenreferenzen dieser MII PR Patho Befunde, und zwar hinsichtlich der Referenzen die „Parts“ betreffend.

Auflistung und Erklärung der FHIR-Elemente siehe **(abstract) MII PR Patho Section Grouper**.
"""
* insert PR_CS_VS_Version
* insert Publisher
* insert Translation(^title, de-DE, MII PR Patho Diagnostic Conclusion Grouper)
* insert Translation(^title, en-US, MII PR Patho Diagnostic Conclusion Grouper)
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[+].url = "lang"
* ^description.extension[=].extension[=].valueCode = #en-US
* ^description.extension[=].extension[+].url = "content"
* ^description.extension[=].extension[=].valueString = """
The **MII PR Patho Diagnostic Conclusion Grouper** profile of the Observation resource represents, as `DiagnosticReport.result:diagnostic-conclusion-grouper` for a [MII PR Patho Report](StructureDefinition-mii-pr-patho-report.html), the respective observation report section "Diagnostic Conclusion" (corresponding to this CDA section) and acts as an organizer for the corresponding groupings of [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html).

This special grouper observation element is to be placed before all other observation elements, which are then included as `hasMember` references to [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html). [MII PR Patho Finding](StructureDefinition-mii-pr-patho-finding.html) observations in turn reference their "parent observations" via `derivedFrom` references to SDC QuestionnaireResponses and/or to the respective grouper observations.

If the observation report section contains multiple submitted specimens, the MII PR Patho Findings are assigned to these different specimens via the specimen references of these MII PR Patho Findings, specifically the references concerning the "parts".

For a listing and explanation of the FHIR elements, see **(abstract) MII PR Patho Section Grouper**.
"""

// Inherited mustSupport elements from section grouper
* insert Label(text, Text, Narrative Darstellung)
* insert Translation(text ^short, de-DE, Text)
* insert Translation(text ^short, en-US, Text)
* insert Translation(text ^definition, de-DE, Narrative Darstellung)
* insert Translation(text ^definition, en-US, Narrative representation)
* insert Label(hasMember[pathology-finding], Einzelbeobachtungen, Referenz zu Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^short, de-DE, Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^short, en-US, Pathology findings)
* insert Translation(hasMember[pathology-finding] ^definition, de-DE, Referenz zu Einzelbeobachtungen)
* insert Translation(hasMember[pathology-finding] ^definition, en-US, Reference to pathology findings)

* code = $LOINC#22637-3
// Observation the Diagnostic Conclusion derives from
* derivedFrom MS
* derivedFrom ^slicing.discriminator.type = #type
* derivedFrom ^slicing.discriminator.path = "$this.resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.ordered = false
* derivedFrom contains grouper-observation 0..* MS
                   and questionnaire-response 0..* MS
* derivedFrom[grouper-observation] only Reference(mii-pr-patho-section-grouper)
* insert Label(derivedFrom[grouper-observation], Gruppierte Beobachtung, Referenz zu gruppierten Beobachtungen)
* insert Translation(derivedFrom[grouper-observation] ^short, de-DE, Gruppierte Beobachtung)
* insert Translation(derivedFrom[grouper-observation] ^short, en-US, Grouper observation)
* insert Translation(derivedFrom[grouper-observation] ^definition, de-DE, Referenz zu gruppierten Beobachtungen)
* insert Translation(derivedFrom[grouper-observation] ^definition, en-US, Reference to grouper observations)
* derivedFrom[questionnaire-response] only Reference(QuestionnaireResponse)
* insert Label(derivedFrom[questionnaire-response], Fragebogen-Antwort, Referenz zu Fragebogen-Antworten)
* insert Translation(derivedFrom[questionnaire-response] ^short, de-DE, Fragebogen-Antwort)
* insert Translation(derivedFrom[questionnaire-response] ^short, en-US, Questionnaire response)
* insert Translation(derivedFrom[questionnaire-response] ^definition, de-DE, Referenz zu Fragebogen-Antworten)
* insert Translation(derivedFrom[questionnaire-response] ^definition, en-US, Reference to questionnaire responses)
* note MS
* insert Label(note, Notiz, Zusätzliche Notizen)
* insert Translation(note ^short, de-DE, Notiz)
* insert Translation(note ^short, en-US, Note)
* insert Translation(note ^definition, de-DE, Zusätzliche Notizen)
* insert Translation(note ^definition, en-US, Additional notes)

// Example(s)
/*
Instance: mii-exa-patho-diagnostic-conclusion-grouper
InstanceOf: mii-pr-patho-diagnostic-conclusion-grouper
Usage: #example
Title: "MII EXA Patho Diagnostic Conclusion Grouper"
Description: "Example for a diagnostic conclusion"
* status = #final
* category[laboratory-category].coding = $cs-obs-category#laboratory
* code.coding = $LOINC#22637-3 
* derivedFrom[+] = Reference(mii-exa-patho-macro-grouper-a)
* derivedFrom[+] = Reference(mii-exa-patho-macro-grouper-b)
* derivedFrom[+] = Reference(mii-exa-patho-micro-grouper-a)
* hasMember[+] = Reference(mii-exa-patho-diagnostic-conclusion-1)
* hasMember[+] = Reference(mii-exa-patho-diagnostic-conclusion-2)
* hasMember[+] = Reference(mii-exa-patho-diagnostic-conclusion-3)
*/

Instance: mii-exa-patho-diagnostic-conclusion-grouper
InstanceOf: mii-pr-patho-diagnostic-conclusion-grouper
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|2027.0.0"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h1>Zusammenfassende Beurteilung</h1><p><b>Azinäres Adenokarzinom der Prostata im untersuchten Stanzzylinder, Gleason-Score 3+3=6, ISUP Gradgruppe 1</b></p></div>"
* category[laboratory-category].coding = $cs-obs-category#laboratory
* code.coding = $LOINC#22637-3
* status = #final
* derivedFrom[0] = Reference(Observation/mii-exa-patho-macro-grouper-a)
* derivedFrom[+] = Reference(Observation/mii-exa-patho-micro-grouper-a)
* hasMember[0] = Reference(Observation/mii-exa-patho-diagnostic-conclusion-1)
* hasMember[+] = Reference(Observation/mii-exa-patho-diagnostic-conclusion-2)
* hasMember[+] = Reference(Observation/mii-exa-patho-diagnostic-conclusion-3)
