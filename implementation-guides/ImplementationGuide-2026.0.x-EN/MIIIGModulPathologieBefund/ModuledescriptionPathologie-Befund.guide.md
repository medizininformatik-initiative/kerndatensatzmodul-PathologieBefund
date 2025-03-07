## Description of the Pathologie-Befund/Pathology report module

{{render:guides-ImplementationGuide-Common-images-19-Abbildung-Pathologie-Befund-de}}

Histological and cytological examinations play a crucial role in the diagnosis of the majority of serious medical problems. Autopsy examinations are both a valuable source of new medical knowledge (see COVID-19) and central elements of clinical quality control.

The central document and subject of this extension module is the **report from a pathology facility**. For time-critical applications, e.g. intraoperative frozen section diagnostics, even preliminary results can be of interest. As a rule, however, the final pathology reports are used in both patient care and research. Due to the widespread use of the **Pathologie-Befund/Pathology report** extension module, a description of individual applications within the individual consortia is omitted.

### Illustration in Art-Decor

{{render:implementation-guides-ImplementationGuide-Common-images-ArtDecor-ganz}}

**Pathologie-BefundePathology reports** are summarized as clinical documents, predominantly in text form, of a clinically commissioned histo- and cytomorphological as well as molecular examination or groups of such examinations with a synoptic summary, carried out in a pathology facility. In the sense of the [ISO/IEC-Norm 17020](https://www.din.de/de/mitwirken/normenausschuesse/nqsz/veroeffentlichungen/wdc-beuth:din21:146320816), these are inspection reports, the **"Pathologisch-anatomischen Begutachtungen"**. The free-text examination results can also be supplemented by structured coding (semantically annotated). The following applies: **Every structured coding must also be readable as text, but not every text information must be coded.**

Various data is recorded for the clinical order and for the individual examinations, including whether the examination findings are preliminary or final (status) and various important points in time in the context.

### Important points in time in the pathological examination

During the course of a pathological examination, from the removal of the specimen from the patient to the transmission of the findings to the submitter, various time stamps are recorded.

For each examination, there is a point in time at which an observation in the sample (e.g. the result of an immunohistochemical analysis) presumably corresponded to the appropriate characteristic in the patient. If the time of specimen removal is specified, this point in time is usually used. Otherwise, the time when the sample was received in the pathology facility is usually chosen as a makeshift option. This element is important in order to be able to sort various analyses over time. The precision should be sufficient to record even minutes.

The validity date indicates when the report was released. Since a pathology report often includes several analyses, the release of the report should be provided with an explicit date.

### Interpretations and comments

An essential part of the pathology report are the medical interpretations, the so-called synopsis, and the comments with which the pathologist making the report helps the submitter to draw the right conclusions from the test results. The actual interpretation is essentially saved as free text. Additional structured coding is also possible here.

Sometimes individual comments do not refer to the entire report, but only to individual observations (e.g. "it is most likely ...", "... most likely corresponds to a ..."). These comments should be saved as a note.

## Observation report sections

The pathology report is divided into several sections, each of which summarizes the pathological-anatomical observations with regard to their examination and interpretation level.

### Illustration of the observation report sections 

{{render:ImplementationGuide-Common-images-ArtDecor-Beobachtungsberichtabschnitt}}

## Request for investigation

With the examination order from the submitter, the pathologists are provided with information about the samples taken, the medical history, the current reason for the examination and the desired examinations, along with the samples themselves. These are usually kept quite general, as this order is a consultation and not a commissioned service. This information is referenced in a special section (see above) in the pathology report.

From one (or more) examination orders for a patient, a case, the "service event", is created together with the associated samples in the pathology facility. The case number is usually referred to as the **accession number**.

### Illustration of the request for investigation

{{render:guides-ImplementationGuide-Common-images-ArtDecor-Untersuchungsauftrag}}


## Specimen

The submission (specimen) refers to the body material (tissue, cells, fluids) taken by the submitter from the patient during a diagnostic or therapeutic procedure, which is the root element of all specimen in the processing process. The units (block, tissue section) created during its processing in the pathology laboratory are also specimen. There is no fundamental difference between these terms in terms of the role. As a rule, specimen are in or on containers (submission vessel, capsule, slide/cover glass), usually in conjunction with additives (fixatives, tissue hardeners, mounting media)

### Illustration of the specimen 

{{render:implementation-guides-ImplementationGuide-Common-images-ArtDecor-Probe}}
