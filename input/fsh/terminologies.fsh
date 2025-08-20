//--------------------------------
// Specimen
//--------------------------------
ValueSet: MII_VS_Patho_Collection_Method_SNOMED_CT
Id: mii-vs-patho-collection-method-snomed-ct
Title: "MII VS Patho Collection Method [SNOMED CT]"
Description: "ValueSet for the clinical collection method"
* insert PR_CS_VS_Version
* insert Publisher
* include codes from system $SCT where concept is-a #118292001
// Specimen Collection 17636008 or Removal 118292001? 

ValueSet: MII_VS_Patho_Container_Type_SNOMED_CT
Id: mii-vs-patho-container-type-snomed-ct
Title: "MII VS Patho Container Type [SNOMED CT]"
Description: "ValueSet for container type based on IHE PaLM's ContainerEntityClassType ValueSet"
* insert PR_CS_VS_Version
* insert Publisher
* $SCT#434746001 "Specimen vial (physical object)"
* $SCT#434464009 "Tissue cassette (physical object)"
* $SCT#434708008 "Tissue cassette for microarray (physical object)"
* $SCT#433466003 "Microscope slide (physical object)"
* $SCT#433453003 "Specimen container component (physical object)"
* $SCT#434533009 "Electron microscopy grid (physical object)"
* $SCT#434822004 "Specimen well (physical object)"
* $SCT#433472003 "Microscope slide coverslip (physical object)"
* $SCT#434473001 "Specimen container lid (physical object)"

ValueSet: MII_VS_Patho_Processing_Procedure_SNOMED_CT
Id: mii-vs-patho-processing-procedure-snomed-ct
Title: "MII VS Patho Processing Procedure [SNOMED CT]"
Description: "Specimen processing procedure"
* insert PR_CS_VS_Version
* insert Publisher
* include codes from system $SCT where concept is-a #108252007

//----------------------------------
// Media
//----------------------------------
ValueSet: MII_VS_Patho_Media_Modality_SNOMED_CT
Id: mii-vs-patho-media-modality-snomed-ct
Title: "MII VS Patho Media Modality [SNOMED CT]"
Description: "ValueSet with some of the main Media.modalities needed in the pathological scope"
* insert PR_CS_VS_Version
* insert Publisher
* $SCT#706821004 "Scanner (physical object)"
* $SCT#706582001 "Microscope camera (physical object)"
* $SCT#14364002 "Camera, device (physical object)"
* $SCT#701627004 "Multi-purpose digital medical camera (physical object)"
* $SCT#409903006 "External camera (physical object)"

//----------------------------------
// Composition
//----------------------------------
ValueSet: MII_VS_Patho_Composition_Type_SNOMED_CT
Id: mii-vs-patho-composition-type-snomed-ct
Title: "MII VS Patho Composition Type [Snomed CT]"
Description: "ValueSet for the types a pathology Composition can have"
* insert PR_CS_VS_Version
* insert Publisher
/* Codes des alten Valuesets [LOINC]
* $LOINC#18743-5 "Autopsy report"
* $LOINC#11526-1 "Pathology study"
* $LOINC#26435-8 "Molecular pathology studies (set)"
* $LOINC#11529-5 "Surgical pathology study"
* $LOINC#60568-3 "Pathology Synoptic report"
* $LOINC#47527-7 "Cytology Cvx/Vag Doc Thin Prep"
* $LOINC#33717-0 "Cytology Cvx/Vag study"
* $LOINC#33716-2 "Non-gynecological cytology study"*/
* include codes from system $SCT where concept is-a #371528001

ValueSet: MII_VS_Patho_Report_Category_HL7
Id: mii-vs-patho-report-category-hl7
Title: "MII VS Patho Report Category HL7"
Description: "ValueSet for the categorization of Pathology Report documents"
* insert PR_CS_VS_Version
* insert Publisher
* $v2-0074#CP "Cytopathology"
* $v2-0074#SP "Surgical Pathology"

//-----------------------------------
// ServiceRequest
//-----------------------------------
ValueSet: MII_VS_Patho_Service_Request_Code
Id: mii-vs-patho-service-request-code
Title: "MII VS Patho Service Request Code"
Description: "ValueSet for a preferred set of ServiceRequest codes"
* insert PR_CS_VS_Version
* insert Publisher
* include codes from system $SCT where concept descendent-of #108252007 "Laboratory procedure (procedure)"
* include codes from system http://loinc.org where
    STATUS = "ACTIVE" and
    ORDER_OBS = "Both" and
    SYSTEM = #LP7061-7 and
    CLASSTYPE = "1" 
* include codes from system http://loinc.org where
    STATUS = "ACTIVE" and
    ORDER_OBS = "Both" and
    SYSTEM = #LP61649-7 and
    CLASSTYPE = "1"
* include codes from system http://loinc.org where
    STATUS = "ACTIVE" and
    ORDER_OBS = "Both" and
    SYSTEM = #LP247851-1 and
    CLASSTYPE = "1"
* include codes from system http://loinc.org where
    STATUS = "ACTIVE" and
    ORDER_OBS = "Both" and
    SYSTEM = #LP247830-5 and
    CLASSTYPE = "1"

//------------------------------------
// Active Problems
//------------------------------------
ValueSet: MII_VS_Patho_Problem_List_SNOMED_CT
Id: mii-vs-patho-problem-list-snomed-ct
Title: "MII VS Patho Problem List [SNOMED CT]"
Description: "ValueSet containing the recommended vocabulary for describing problems, according to the IHE Patient Care Coordination Technical Framework (Vol. 2)"
* insert PR_CS_VS_Version
* insert Publisher
* include codes from system $SCT where concept is-a #64572001 "Disease (disorder)" // Condition
* include codes from system $SCT where concept is-a #418799008 "Finding reported by subject or history provider (finding)" // Symptom
* include codes from system $SCT where concept is-a #404684003 "Clinical finding (finding)" //Finding
* include codes from system $SCT where concept is-a #409586006 "Complaint (finding)" //Complaint
* include codes from system $SCT where concept is-a #248536006 "Finding of functional performance and activity (finding)" //Functional limitation
* include codes from system $SCT where concept is-a #55607006 "Problem (finding)" //Problem
* include codes from system $SCT where concept is-a #282291009 "Diagnosis interpretation (observable entity)" //Diagnosis

//---------------------------------------
// Pathology Finding
//---------------------------------------
ValueSet: MII_VS_Patho_Section_Types_LOINC
Id: mii-vs-patho-section-types-loinc
Title: "MII VS Patho Section Types [LOINC]"
Description: "ValueSet for IHE PaLM APSR's section types"
* insert PR_CS_VS_Version
* insert Publisher
* $LOINC#83321-0 "Pathology report intraoperative observation in Specimen Document" //Intraoperative Observation Section
* $LOINC#22634-0 "Pathology report gross observation" //Macroscopic Observation Section
* $LOINC#22635-7 "Pathology report microscopic observation" //Microscopic Observation Section
* $LOINC#22637-3 "Pathology report diagnosis" //Diagnostic Conclusion Section
* $LOINC#77599-9 "Additional documentation" //Additional Observation Section

// LOINC All
ValueSet: MII_VS_Patho_All_LOINC	
Id: mii-vs-patho-all-loinc	
Title: "MII VS Patho All [LOINC]"
Description: "ValueSet for general LOINC VS binding"
* insert PR_CS_VS_Version
* insert Publisher
* include codes from system $LOINC

ValueSet: MII_VS_Patho_Composition_Type_KDL
Id: mii-vs-patho-composition-type-kdl
Title: "MII VS Patho Composition Type KDL"
Description: "ValueSet for the categorization of Pathology Report documents"
* insert PR_CS_VS_Version
* insert Publisher
* http://dvmd.de/fhir/CodeSystem/kdl#PT080102 "Histologiebefund"
* http://dvmd.de/fhir/CodeSystem/kdl#PT130102 "Molekularpathologiebefund"
* http://dvmd.de/fhir/CodeSystem/kdl#PT260102 "Zytologiebefund"