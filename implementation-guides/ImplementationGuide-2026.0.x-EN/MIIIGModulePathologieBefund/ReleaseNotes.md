# Release Notes

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
