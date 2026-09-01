# Module description - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* **Module description**

## Module description

Histological and cytological examinations play a crucial role in the majority of serious medical diagnoses. Autopsy examinations are both a valuable source of new medical knowledge (see COVID-19) and a central element of clinical quality control.

The central document and subject of this module is the **report of a pathology facility**. For time-critical applications, e.g. intraoperative frozen section diagnostics, even preliminary results can be of interest. As a rule, however, the final pathology reports are used both in patient care and in research. Because of the broad use of the module **Pathology Report**, a description of individual applications within the individual consortia is omitted.

Illustration in ART-DECOR: overall view of the pathology report
**Pathology reports** are the results — summarized as clinical documents and predominantly available in text form — of a clinically commissioned histo- and cytomorphological as well as molecular examination, or of groups of such examinations, carried out in a pathology facility and accompanied by a summarizing diagnostic assessment. These results arise from observations on the specimens of a patient submitted by the clinician. In the sense of the [ISO/IEC standard 17020](https://www.din.de/de/mitwirken/normenausschuesse/nqsz/veroeffentlichungen/wdc-beuth:din21:146320816) they are inspection reports, the **"pathological-anatomical assessments"**. The examination results formulated in free text can additionally be supplemented by structured coding (semantically annotated). The following applies: **every structured coding must also be readable as text, but not every piece of textual information has to be coded.**

Various data are recorded for the clinical request as well as for the individual examinations, among them whether the examination results are preliminary or final (status) and various points in time that are important in this context.

### Important points in time in the pathological examination

In the course of a pathological examination, from the removal of the specimen from the patient to the transmission of the report to the sender, various time stamps are recorded.

For each examination there is a point in time at which an observation in the specimen (e.g. the result of an immunohistochemical analysis) presumably corresponded to the property in the patient. If the time of specimen collection is given, this point in time is usually used. Otherwise the receipt of the specimen in the pathology facility is usually chosen as a makeshift. This element is important in order to be able to sort different analyses over time. The precision should be sufficient to record minutes as well.

The validity date indicates when the report was released. Since a pathology report frequently comprises several analyses, the release of the report should be given an explicit date.

### Design decisions

There are – in principle – two ways to represent a pathology report in HL7 FHIR:

* by using the `DiagnosticReport` resource;
* or by treating the report like any other clinical document, i.e. using an HL7 FHIR document Bundle.

The following applies:

* A pathology report is a **legally binding signed document**.
* Reports are often structured and may contain various kinds of examination results.
* Individual implementations of pathology reports are currently based on HL7 CDA (KBV eArztbrief) and continue to use document exchange infrastructures (e.g. IHE XD*).
* On the other hand, typical HL7 FHIR consumers expect to retrieve pathology reports by searching for the `DiagnosticReport` resource.

A solution was therefore sought that balances the two approaches (FHIR document and DiagnosticReport). The R5 design pattern for `DiagnosticReport` was taken into account, in which the relationship between `DiagnosticReport` and `Composition` runs from the `DiagnosticReport` resource to the `Composition` resource.

In brief:

* A pathology report is always represented by exactly one `DiagnosticReport` resource.
* A `DiagnosticReport` may reference the associated `Composition` resource via an extension; conversely, the `Composition` may reference its `DiagnosticReport`. Both links are optional in this module in order to preserve backward compatibility.
* The referenced `Composition`: 
* defines the structure of the report (even if only a single section);
* provides a means to assemble the report as a document (i.e. as a `Bundle` of type `document`).
 

The document Bundle represents the legally signable report and contains all data that define the report.

### Interpretations and comments

An essential part of the pathology report are the medical diagnostic interpretations and the comments with which the reporting pathologist helps the sender to draw the right conclusions from the examination results. The actual interpretation is essentially stored as free text. Additional structured coding is possible here as well.

A so-called synoptic structured pathology report (College of American Pathologists, [Cancer protocol templates](https://www.cap.org)), corresponding to a structuring level 3 or higher (Ellis DW, Srigley J. Does standardised structured reporting contribute to quality in diagnostic pathology? The importance of evidence-based datasets. Virchows Arch. 2016 Jan;468(1):51–9.), exists when the examination results are organized in a defined question-answer structure.

Sometimes individual comments do not refer to the entire report but only to individual observations (e.g. "it is most likely …", "… most likely corresponds to a …"). These comments should be stored as a note.

### Observation report sections

The pathology report is divided into several sections, each of which summarizes the pathological-anatomical observations with regard to their level of examination and interpretation.

Illustration in ART-DECOR: observation report sections
### Examination request

With the examination request of the sender, the pathologists are provided — together with the collected specimens — with information about those specimens, about the medical history, about the current reason for the examination and about the desired examinations. These are usually kept fairly general, since this request is a consultation and not a commissioned service. This information is referenced in a special section (see above) of the pathology report.

From one (or several) examination requests for one patient, together with the associated specimens, a case — the "service event" — is created in the pathology facility. The case number is usually referred to as the **accession number**.

As a rule, an examination request with an associated specimen becomes the service event or case in the pathology facility, also referred to as **accession** or **receipt**. In certain configurations the associated specimen may also be a specimen from an earlier, already completed case, for which someone other than the primary requester orders a further examination, e.g. a molecular pathology examination or a comparative morphological examination with further previous findings. The underlying case paradigm does not change in this: a specimen **must** be assigned to the examination request, regardless of whether it was submitted together with the request or was already present in the pathology facility.

Illustration in ART-DECOR: examination request
### Specimens

The submission (specimen) is the body material (tissue, cells, fluids) taken from the patient by the sender during a diagnostic or therapeutic procedure; it is the root element of all specimens in the processing chain. The units created during its processing in the pathology laboratory (block, tissue section) are specimens as well. In terms of their role there is no fundamental difference between these designations. As a rule, specimens are located in or on containers (submission vessel, capsule, slide/cover glass), usually in conjunction with additives (fixatives, tissue hardeners, mounting media).

Illustration in ART-DECOR: specimen

