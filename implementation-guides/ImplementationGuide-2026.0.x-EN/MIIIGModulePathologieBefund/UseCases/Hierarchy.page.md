## {{page-title}}

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
