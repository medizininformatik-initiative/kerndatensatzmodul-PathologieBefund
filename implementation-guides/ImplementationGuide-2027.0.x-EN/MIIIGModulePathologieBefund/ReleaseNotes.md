# Release Notes

## 2027.0.0
    - `documentation` Added references to the [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html) as a reference example for narratives on the use case, Section Grouper, Finding, DiagnosticReport and Composition pages
    - `documentation` Removed references to originalText and narrativeLink extensions from the Section Grouper description
    - `documentation` Removed "one grouper per specimen" text from all Grouper profile pages (#249)
    - `documentation` Added text on the relationship between examination request, specimen and case (#250)
    - `documentation` Added missing search parameters (value-concept, value-quantity, value-date) to the Finding profile page (#248)
    - `documentation` Removed value-string search parameter from all Grouper profile pages (#248)
    - `feature` New profile MII PR Patho Request Group (RequestGroup) for grouping multiple service requests (#227)
    - `feature` New ValueSet MII_VS_Patho_Report_Code_LOINC for DiagnosticReport.code with LOINC codes for different report types (histopathology, cytology, molecular pathology, autopsy) (#166)
    - `changed` DiagnosticReport.code.coding[pathology-report] changed from fixed code (LOINC#60568-3) to extensible binding to MII_VS_Patho_Report_Code_LOINC (#166)
    - `documentation` Extended the Examination Request description with a note on multiple ServiceRequests grouped in a requisition (placer order group) and requisition as case/accession (#253)
    - `documentation` Extended the Specimen description with the specimen referencing logic (submission/parts vs. stained tissue section level) (#255)
    - `documentation` Extended the Grouper descriptions (abstract and all specific) with a derivedFrom note (Finding references its parent observations via SDC QuestionnaireResponses and/or Groupers) (#257)
    - `changed` Corrected Composition.event short description and definition (documented pathology reporting event instead of examination request) (#258)

## 2026.0.0-ballot
    - Grouper cardinality reduced to ..1. Therefore, only one grouper each is to be used within a pathology report
        - Corresponding changes within the grouper profiles and the DiagnosticReport
    - PathoBundle profile added
    - VS MII_VS_Patho_Service_Request_Code renamed, extended with LOINC codes and binding 
    changed from preferred to extensible
    - Composition.type and Composition.category - Own slices switched to SNOMED CT codes and renamed accordingly
        - MII_VS_Patho_Composition_Type_KDL added for the KDL slice
    - Implementation Guide update
        - Profile page names in the IG have been adjusted
        - new page for Patho-Bundle
        - new page for Hierarchies
        - English translation of the IG
    - Adjustment of example data (including Specimen)
    - Two incorrect codes (substances) removed from the VS MII_VS_Patho_Container_Type_SNOMED_CT
    - Update MII Dependencies
    - Update external dependencies (e.g., ISiK)
    - Specimen.identifier slices (PLAC & FILL) added and .accessionIdentifier cardinality changed from 1.. to 0..
    - PathoFinding.value[x] extended with Range
