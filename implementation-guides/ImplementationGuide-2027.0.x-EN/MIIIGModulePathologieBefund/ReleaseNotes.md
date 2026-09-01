# Release Notes

## 2027.0.0
    - `documentation` Added references to the [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html) as a reference example
    - `documentation` Removed originalText/narrativeLink references from the Section Grouper description
    - `documentation` Removed "one grouper per specimen" text from all Grouper profile pages (#249)
    - `documentation` Added relationship between examination request, specimen and case (#250)
    - `documentation` Adjusted search parameters on Finding/Grouper (#248)
    - `feature` DiagnosticReport.code: new ValueSet MII_VS_Patho_Report_Code_LOINC, extensible binding (#166)
    - `documentation` Examination Request: requisition as order group/case (#253)
    - `documentation` Specimen: specimen referencing logic added (#255)
    - `documentation` Grouper: derivedFrom note added (#257)
    - `changed` Composition.event corrected (#258)
    - `documentation` Scenarios: SDC passage refined (#256)
    - `documentation` Module description extended: design decisions, synoptic structured reports (#261)
    - `documentation` Lifecycle tables updated to the revised report-form matrix (#247)
    - `feature` Specimen.collection.bodySite: R5 BodyStructure extension (mCode removed) incl. prostatectomy and breast examples (#259)
    - `feature` HL7 EU Lab alignment: DiagnosticReport↔Composition extensions and optional Composition section slices (#262, #263)
    - `fix` Corrections: CapabilityStatement URL, missing substances in specimen examples

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
