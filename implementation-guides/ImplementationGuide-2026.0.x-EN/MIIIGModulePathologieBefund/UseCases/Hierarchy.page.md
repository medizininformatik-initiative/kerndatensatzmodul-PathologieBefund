## Hierachy and Workflow aspects

### Use of Grouper Profiles
The use of groupers was modified in the 2026 update so that only one grouper per pathology report (DiagnosticReport) may be referenced. To visualize this change, two relationship diagrams were created showing the status before and after the update:

Previous status (until 2025):
{{render:implementation-guides-ImplementationGuide-Common-images-GrouperVorher}}


Current status (from 2026):
{{render:implementation-guides-ImplementationGuide-Common-images-GrouperNachher}}

With this change, there are no references to Specimen within the groupers, thus the hierarchy or referencing of specimens among each other is essential:

### Specimen Hierarchy
The hierarchy of specimens is described in more detail below using a relationship diagram and a tabular example:

{{render:implementation-guides-ImplementationGuide-Common-images-Specimen}}

The root element (Sample) is a clinically obtained specimen material from a patient, corresponding to a Part in the pathology workflow. Child elements are blocks and sections or a cytological preparation. The child specimens (blocks and sections) should always and at least reference their direct parent specimen via the Specimen.parent element.

According to the domain analysis model, the different processing levels of specimens must be specified separately:

#### Part (Clinically obtained specimen)

| Element                      | Requirement                                             | Strength of requirement |
|------------------------------|---------------------------------------------------------|--------------------------|
| Specimen.type                | descendants-of 123038009 Specimen (specimen)            | SHOULD                   |
| Specimen.parent              | 0..0                                                    | SHOULD NOT               |
| Specimen.collection.method   | descendants-of 118292001 Removal (procedure)            | SHOULD                   |
| Specimen.collection.bodySite | descendants-of 123037004 Body structure (body structure)| SHOULD                   |
| Specimen.processing          | 0..0                                                    | SHOULD NOT               |

---

#### Block (results from macroscopic sectioning)

| Element                                           | Requirement                                                                    | Strength of requirement |
|---------------------------------------------------|--------------------------------------------------------------------------------|--------------------------|
| Specimen.type                                     | descendants-of 1201985008 Tissue block specimen (specimen)                     | SHOULD                   |
| Specimen.parent                                   | Part                                                                           | SHOULD                   |
| Specimen.collection.method                        | descendants-of 168126000 Sample macroscopy (procedure)                         | SHOULD                   |
| Specimen.collection.bodySite                      | descendants-of 123037004 Body structure (body structure)                        | SHOULD                   |
| Specimen.collection.bodySite.extension:locationQualifier | Especially if multiple blocks originate from one part                           | SHOULD                   |
| Specimen.processing                               | 787376009 Preparation of formalin fixed paraffin embedded tissue specimen (procedure) | SHOULD                   |

---

#### Slide (Sectioning and staining)

| Element                                           | Requirement                                                     | Strength of requirement |
|---------------------------------------------------|-----------------------------------------------------------------|--------------------------|
| Specimen.type                                     | descendants-of 430856003 Tissue section (specimen)              | SHOULD                   |
| Specimen.parent                                   | Block                                                           | SHOULD                   |
| Specimen.collection.method                        | descendants-of 13283003 Tissue processing technique (procedure) | SHOULD                   |
| Specimen.collection.bodySite                      | descendants-of 123037004 Body structure (body structure)         | SHOULD                   |
| Specimen.collection.bodySite.extension:locationQualifier | See Block                                                       | SHOULD                   |
| Specimen.processing                               | descendants-of 127790008 Staining method (procedure)            | SHOULD                   |


### Document Lifecycle
The description of the lifecycle of the document “Pathology Report,” for example, whether it is still current or has been replaced or supplemented by another document, determines the completeness and currency of the content of the readable document for the Document Consumer, i.e., the submitter/requester of the pathology examination.
The .status elements in the FHIR profiles Observation, DiagnosticReport, and Composition of the report are intended to enable this lifecycle description for document registries and document repositories.

Scenario 1: 
A pathology report for a breast core biopsy is issued as preliminary because an immunohistochemical examination has been delayed. Once its results are available, the main report is finalized. Another immunohistochemical examination for HER2/neu expression takes place the following week for logistical reasons. The result of this test is documented in a supplementary report. During an internal review, the expression status “HER2-negative” reported in the supplementary report must be corrected to “HER2-low.” Therefore, a correction report is created.
All reports following the main report include their predecessors.
The pathology institution must assume that new versions of a document in the registry are handled with the XDSDocumentEntry.parentDocumentRelationship value "RPLC" (Replace).
The recipient system always presents a synoptic overview of all report components.

Report Type | Preliminary Main Report | Main Report | Plus Supplementary Report | Plus Correction Report
-- | -- | -- | -- | --
Bundle.identifier | E12345/25-1 | E12345/25-1 | E12345/25-1 | E12345/25-1
Bundle.signature | Dr.A  (Chief Physicia) | Dr.A | Dr.C (Specialist) | Dr.D (Senior Physician)
Composition.ext.:version | 1 | 2 | 3 | 4
Composition.identifier |   | E12345/25-1 | E12345/25-1 | E12345/25-1
Composition.status | Final | Final | Final | Final
Composition.author | Dr.B (Facharzt) | Dr.B | Dr.C | Dr.D
Composition.attester | Dr.A | Dr.A | Dr.A | Dr.A
Composition.relatesTo | E9345/25-1 (previous report, if existing) | E12345/25-1 | E12345/25-1 | E12345/25-1
DiagnosticReport.ext.:related-report | E9345/25-1 (previous report, if existing) | E12345/25-1 | E12345/25-1 | E12345/25-1
DiagnosticReport.ext.:set-ID | E12345/25 | E12345/25 | E12345/25 | E12345/25
DiagnosticReport.status | Preliminary | Amended | Appended | Corrected
DiagnosticReport.performer | Dr.B | Dr.B | Dr.C | Dr.D
DiagnosticReport.resultstInterpreter | Dr.A | Dr.A | Dr.A |  
DiagnosticReport.custodian | IfP | IfP | IfP | IfP
1.Observation.identifier | E10345/25_A_1_HE |   |   |  
1.Observation.status | Final |   |   |  
1.Observation.performer | Dr.B |   |   |  
2.Observation.identifier |   | E10345/25_A_1_ER |   |  
2.Observation.status |   | Amended |   |  
2.Observation.performer |   | Dr.B |   |  
3.Observation.identifier |   |   | E10345/25_A_1_Her2 |  
3.Observation.status |   |   | Amended |  
3.Observation.performer |   |   | Dr.C |  
4.Observation.identifier |   |   |   | E10345/25_A_1_Her2K
4.Observation.status |   |   |   | Corrected
4.Observation.performer |   |   |   | Dr.D

Scenario 2: 
As above.
All report parts stand alone. The recipient system ensures the correct assignment in the respective complete, up-to-date human-readable presentation.
The pathology institution must assume that new versions of a document in the registry are handled with the XDSDocumentEntry.parentDocumentRelationship value "APND" (Append).
Merging must then be done via DR.ext.:set-ID. This scenario requires an altered versioning and separate identifiers. It is **not recommended** for pathology reports.


Report Type | Preliminary Main Report | Main Report | Plus Supplementary Report | Plus Correction Report
-- | -- | -- | -- | --
Bundle.identifier | E12345/25-1V | E12345/25-1 | E12345/25-1Z | E12345/25-1K
Bundle.signature | Dr.A | Dr.A | Dr.B | Dr.D
Composition.ext.:version | 1 | 1 | 1 | 2
Composition.identifier | E12345/25-1V | E12345/25-1 | E12345/25-1Z | E12345/25-1K
Composition.status | Final | Final | Final | Final
Composition.author | Dr.B | Dr.B | Dr.C | Dr.D
Composition.attester | Dr.A | Dr.A |   |  
Composition.relatesTo | E9345/25-1 (previous report, if existing) | E9345/25-1 | E12345/25-1 | E12345/25-1Z
DiagnosticReport.ext.:related-report | E9345/25-1 (previous report, if existing) | E9345/25-1 | E12345/25-1 | E12345/25-1Z
DiagnosticReport.ext.:set-ID | E12345/25 | E12345/25 | E12345/25 | E12345/25
DiagnosticReport.status | Preliminary | Final | Appended | Corrected
DiagnosticReport.performer | Dr.B | Dr.B | Dr.C | Dr.D
DiagnosticReport.resultstInterpreter | Dr.A | Dr.A |   |  
DiagnosticReportcustodian | IfP | IfP | IfP | IfP
Observation.identifier | E10345/25_A_1_HE | E10345/25_A_1_ER | E10345/25_A_1_Her2 | E10345/25_A_1_Her2K
Observation.status | Final | Amended | Amended | Corrected
Observation.performer | Dr.B | Dr.B | Dr.C | Dr.D


For the APSR content module XDSDocumentEntry.parentDocumentRelationship is constrained to the "RPLC" value. When there is a parent document the current document is a new version of the parent document, replacing it.

Note 1: A non-final anatomic pathology report published in an XDS infrastructure will likely be replaced afterwards by the final report. When this event occurs, the Content Creator Actor SHALL apply the following rules:

ClinicalDocument/setId SHALL have the same value in the new report as in the replaced report.
ClinicalDocument/versionNumber SHALL be incremented in the replacing report (i.e. the final one).
ClinicalDocument/relatedDocument@typeCode attribute SHALL be valued ”RPLC”
ClinicalDocument/relatedDocument/parentDocument/id in the new report SHALL be equal to ClinicalDocument/ id of the replaced document.
The Document Source Actor SHALL apply the following rules on XDSDocumentEntry metadata:

The final report SHALL be associated with the previously published one, using RPLC relationship and the previous report SHALL be “Deprecated” as described in ITI TF-2:4.1.6.1.

Note 2: A non-final report can also be replaced by a more recent, albeit still non-final report. The rules above also apply in this case.

Note 3: A final report can also be replaced by a corrective final report. The rules above also apply in this case.

Note 4: A new version of a report SHOULD have an Update Organizer in its Diagnostic Conclusion

carrying information about what has been changed in comparison with the immediate previous report, and what is the clinical significance of that change.