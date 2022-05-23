// ValueSets of Specimen
ValueSet: VS_MII_Patho_Specimen_Type_SNOMED_CT
Id: vs-mii-patho-specimen-type-snomed-ct
Title: "VS MII Patho Specimen Type [SNOMED CT]"
Description: "ValueSet for the type of specimen"
* insert RuleSet1
* include codes from system $SCT where concept is-a #123038009

ValueSet: VS_MII_Patho_Collection_Method_SNOMED_CT
Id: vs-mii-patho-collection-method-snomed-ct
Title: "VS MII Patho Collection Method [SNOMED CT]"
Description: "ValueSet for the clinical collection method"
* insert RuleSet1
* include codes from system $SCT where concept is-a #118292001
// Specimen Collection 17636008 oder Removal 118292001? 

ValueSet: VS_MII_Patho_Body_Site_SNOMED_CT
Id: vs-mii-patho-body-site-snomed-ct
Title: "VS MII Patho Body Site [SNOMED CT]"
Description: "Body site where the specimen comes from"
* insert RuleSet1
* include codes from system $SCT where concept is-a #123037004

ValueSet: VS_MII_Patho_Processing_Procedure_SNOMED_CT
Id: vs-mii-patho-processing-procedure-snomed-ct
Title: "VS MII Patho Processing Procedure [SNOMED CT]"
Description: "Specimen processing procedure"
* insert RuleSet1
* include codes from system $SCT where concept is-a #108252007

ValueSet: VS_MII_Patho_Composition_Type_LOINC
Id: vs-mii-patho-composition-type-loinc
Title: "VS MII Patho Composition Type"
Description: "tbd"
* insert RuleSet1
* $LOINC#11529-5 "Surgical pathology study"
* $LOINC#60568-3 "Pathology Synoptic report"
* $LOINC#60570-9 "Pathology Consult note"
* $LOINC#60571-7 "Pathology Consult note.synoptic"
* $LOINC#35265-8 "Pathology report addendum in Specimen Narrative"

ValueSet: SectionTypes
Id: SectionTypes
Title: "SectionTypes"
Description: "ValueSet for IHE PaLM APSR's section types"
* insert RuleSet1
// TODO: Include further observation codes from LOINC and SCT? 
* $LOINC#22636-5 "Pathology report relevant history"
* $LOINC#83321-0 "Pathology report intraoperative observation in Specimen Document"
* $LOINC#22634-0 "Pathology report gross observation"
* $LOINC#22635-7 "Pathology report microscopic observation"
* $LOINC#22637-3 "Pathology report diagnosis"

ValueSet: Faerbesubstanzen
Id: Faerbesubstanzen
Title: "Faerbesubstanzen"
Description: "tbd"
* insert RuleSet1
* include codes from system $SCT where concept is-a #127790008

ValueSet: Container
Id: Container
Title: "Container"
Description: "tbd"
* insert RuleSet1 
* $SCT#434746001 "Specimen vial (physical object)"
* $SCT#434464009 "Tissue cassette (physical object)"
* $SCT#434708008 "Tissue cassette for microarray (physical object)"
* $SCT#433466003 "Microscope slide (physical object)"
* $SCT#433453003 "Specimen container component (physical object)"

* $DICOM#A-01024 "Specimen vial"
* $DICOM#A-0101B "Microscope slide"
* $DICOM#A-01023 "Specimen container"
* $DICOM#A-01021 "Electron microscopy grid"
* $DICOM#A-01025 "Specimen well"

ValueSet: Additive
Id: Additive
Title: "Additive"
Description: "Additive bei der Probenbearbeitung (Fixationsmittel, Einbettungs- und Eindeckungsmedien, Färbungen)"
* insert RuleSet1 
* include codes from system $SCT where concept is-a #105590001
* $SCT#434746001 "Specimen vial (physical object)"
* $SCT#434464009 "Tissue cassette (physical object)"
* $SCT#434708008 "Tissue cassette for microarray (physical object)"
* $SCT#433466003 "Microscope slide (physical object)"
* $SCT#433453003 "Specimen container component (physical object)"
// level 1
* $SCT#430863003 "Tissue embedding medium (substance)"
// level 2
* $SCT#311731000 "Paraffin wax (substance)"
* $SCT#433469005 "Frozen section embedding medium (substance)"
* $SCT#61088005 "Plastic (substance)"
* $SCT#10249006 "Agar (substance)"
* $SCT#65345002 "Epoxy resin (substance)"
* $SCT#427811002 "Polymethyl methacrylate (substance)"
// level 1
* $SCT#433472003 "Microscope slide coverslip (physical object)"
* $SCT#430862008 "Microscope slide mounting medium (substance)"
// level 0
* $DICOM#CID8101 "Container type"
// level 1
* $DICOM#A-01024 "Specimen vial"
* $DICOM#A-0101B "Microscope slide"
* $DICOM#A-01023 "Specimen container"
* $DICOM#A-01021 "Electron microscopy grid"
* $DICOM#A-01025 "Specimen well"
// level 0
* $DICOM#CID8114 "Fixatives"
* $DICOM#CID8102 "Container Component Types"
* $DICOM#CID8115 "Specimen Embedding Media"