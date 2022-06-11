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
Description: "ValueSet for the types a pathology Composition can have"
* insert RuleSet1
* $LOINC#11529-5 "Surgical pathology study"
* $LOINC#60568-3 "Pathology Synoptic report"
* $LOINC#60570-9 "Pathology Consult note"
* $LOINC#60571-7 "Pathology Consult note.synoptic"
* $LOINC#35265-8 "Pathology report addendum in Specimen Narrative"

ValueSet: VS_MII_Patho_Problem_List_SNOMED
Id: vs-mii-patho-problem-list-snomed
Title: "VS MII Patho Problem List SNOMED"
Description: "ValueSet containing the recommended vocabulary for describing problems, according to the IHE Patient Care Coordination Technical Framework (Vol. 2)"
* insert RuleSet1
* include codes from system $SCT where concept is-a #64572001 "Disease (disorder)" // Condition
* include codes from system $SCT where concept is-a #418799008 "Finding reported by subject or history provider (finding)" // Symptom
* include codes from system $SCT where concept is-a #404684003 "Clinical finding (finding)" //Finding
* include codes from system $SCT where concept is-a #409586006 "Complaint (finding)" //Complaint
* include codes from system $SCT where concept is-a #248536006 "Finding of functional performance and activity (finding)" //Functional limitation
* include codes from system $SCT where concept is-a #55607006 "Problem (finding)" //Problem
* include codes from system $SCT where concept is-a #282291009 "Diagnosis interpretation (observable entity)" //Diagnosis

ValueSet: VS_MII_Patho_Section_Types_LOINC
Id: vs-mii-patho-section-types-loinc
Title: "VS MII Patho Section Types LOINC"
Description: "ValueSet for IHE PaLM APSR's section types"
* insert RuleSet1 
* $LOINC#83321-0 "Pathology report intraoperative observation in Specimen Document" //Intraoperative Observation Section
* $LOINC#22634-0 "Pathology report gross observation" //Macroscopic Observation Section
* $LOINC#22635-7 "Pathology report microscopic observation" //Microscopic Observation Section
* $LOINC#22637-3 "Pathology report diagnosis" //Diagnostic Conclusion Section
* $LOINC#77599-9 "Additional documentation" //Additional Observation Section

ValueSet: VS_MII_Patho_Service_Request_LOINC
Id: vs-mii-patho-service-request-loinc
Title: "VS MII Patho Service Request LOINC"
Description: "ValueSet for a preferred set of ServiceRequest codes"
* insert RuleSet1
* $LOINC#18743-5 "Autopsy report"	
* $LOINC#11526-1 "Pathology study"
* $LOINC#11529-5 "Surgical pathology study"

ValueSet: VS_MII_Patho_Staining_SNOMED
Id: vs-mii-patho-staining-snomed
Title: "VS MII Patho Staining SNOMED"
Description: "ValueSet for staining substances"
* insert RuleSet1
* include codes from system $SCT where concept is-a #45389009 "Tissue stain (substance)"
* include codes from system $SCT where concept is-a #397165007 "Stain (substance)"
// * include codes from valueset $bio-sct-additive


ValueSet: VS_MII_Patho_Container_Type_SNOMED_DICOM
Id: vs-mii-patho-container-type-snomed-dicom
Title: "VS MII Patho Container Type SNOMED DICOM"
Description: "ValueSet for container type based on IHE PaLM's ContainerEntityClassType ValueSet"
* insert RuleSet1 
* $SCT#434746001 "Specimen vial (physical object)"
* $SCT#434464009 "Tissue cassette (physical object)"
* $SCT#434708008 "Tissue cassette for microarray (physical object)"
* $SCT#433466003 "Microscope slide (physical object)"
* $SCT#433453003 "Specimen container component (physical object)"
* $SCT#430863003 "Tissue embedding medium (substance)"
// * $SCT#311731000 "Paraffin wax (substance)"
// * $SCT#433469005 "Frozen section embedding medium (substance)"
// * $SCT#61088005 "Plastic (substance)"
// * $SCT#10249006 "Agar (substance)"
// * $SCT#65345002 "Epoxy resin (substance)"
// * $SCT#427811002 "Polymethyl methacrylate (substance)"
* $SCT#433472003 "Microscope slide coverslip (physical object)"
* $SCT#430862008 "Microscope slide mounting medium (substance)"
//DICOM
* $DICOM#A-01024 "Specimen vial"
* $DICOM#A-0101B "Microscope slide"
* $DICOM#A-01023 "Specimen container"
* $DICOM#A-01021 "Electron microscopy grid"
* $DICOM#A-01025 "Specimen well"
* $DICOM#CID8114 "Fixatives"
* $DICOM#CID8102 "Container Component Types"
* $DICOM#CID8115 "Specimen Embedding"

ValueSet: VS_MII_Patho_Additive_SNOMED
Id: vs-mii-patho-additive-snomed
Title: "VS MII Patho Additive SNOMED"
Description: "Additive bei der Probenbearbeitung (Fixationsmittel, Einbettungs- und Eindeckungsmedien, Färbungen)"
* insert RuleSet1 
* include codes from system $SCT where concept is-a #430863003 "Tissue embedding medium (substance)"
* include codes from system $SCT where concept is-a #430864009 "Tissue fixative (substance)"
// DICOM
// * $DICOM#CID8114 "Fixatives"