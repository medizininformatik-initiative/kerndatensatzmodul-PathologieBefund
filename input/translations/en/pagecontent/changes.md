### 2027.0.0-ballot.rc1
- `documentation` References to the [Prostate Cancer Spec IG](https://bih-cei.github.io/ProstateCancerSpec/index.html) added as a reference example
- `documentation` References to originalText/narrativeLink removed from the section grouper description
- `documentation` Text "one grouper per preparation" removed from all grouper profile pages (#249)
- `documentation` Relationship between examination request, specimen and case added (#250)
- `documentation` Search parameters adjusted for finding/grouper (#248)
- `feature` DiagnosticReport.code: new ValueSet MII_VS_Patho_Report_Code_LOINC, extensible binding (#166)
- `documentation` Examination request: requisition as order group/case (#253)
- `documentation` Specimen: referencing logic of the specimens added (#255)
- `documentation` Grouper: derivedFrom note added (#257)
- `changed` Composition.event corrected (#258)
- `documentation` Scenarios: SDC passage made more precise (#256)
- `documentation` Module description extended: design decisions, synoptic structured reports (#261)
- `documentation` Life-cycle tables brought in line with the updated report-form matrix (#247)
- `feature` Specimen.collection.bodySite: R5 BodyStructure extension (mCode dropped) including prostatectomy and breast example (#259)
- `feature` EU Lab alignment: DiagnosticReport↔Composition extensions and optional Composition section slices (#262, #263)
- `fix` Corrections: CapabilityStatement URL, missing substances in the specimen examples
- `changed` From this version on, the IG is built with the HL7 IG Publisher (previously Simplifier)
- `changed` CapabilityStatement: RequestGroup resource removed (the profile MII_PR_Patho_Request_Group no longer exists)

### 2026.0.1

- Recommendations on the life cycle of the document "pathology report" added to the page Hierarchy and workflow aspects

### 2026.0.0-ballot

- Grouper cardinality reduced to ..1. Only one grouper of each kind is therefore to be used within one report
  - Corresponding change within the grouper profiles and the DiagnosticReport
- Profile PathoBundle added
- VS MII_VS_Patho_Service_Request_Code renamed, extended by LOINC codes and the binding changed from preferred to extensible
- Composition.type and Composition.category - own slices switched to SNOMED CT codes and renamed accordingly
  - MII_VS_Patho_Composition_Type_KDL added for the KDL slice
- Update of the IG
  - Names of the profile pages in the IG adjusted
  - New page for Patho Bundle
  - New page for hierarchies
  - English translation of the IG
- Update of the example data (among others Specimen)
- Two incorrect codes (substances) removed from the VS MII_VS_Patho_Container_Type_SNOMED_CT
- Update of the MII dependencies
- Update of the external dependencies (e.g. ISiK)
- Specimen.identifier slices (PLAC & FILL) added and .accessionIdentifier cardinality changed from 1.. to 0..
- PathoFinding.value[x] extended by Range
