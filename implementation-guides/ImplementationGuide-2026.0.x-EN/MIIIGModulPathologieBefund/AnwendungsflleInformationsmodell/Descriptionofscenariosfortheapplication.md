### Description of scenarios for the application of the modules

Various scenarios are possible for a generic pathology report, concerning:

* **Berichtsstatus / Report status**: Pathology reports can be provisional or final. In both cases, they require explicit approval by the responsible pathologist.

* **Nach-, Zusatz- und Korrekturberichte / Follow-up, additional and corrective reports**: These generally replace the existing current version of a report. The option of an information update can be used to indicate the part of the report that the update concerns and to classify the clinical relevance of the update.

* **Komplexität des Befundberichtes / Complexity of the report**: Pathology reports can be created for submissions of a single sample (submission) with a single clinical question (e.g. Skin excision, question: Type of skin tumor) or for a sample (submission) consisting of several parts (parts, which are in turn samples by definition), with different examination orders and questions, e.g.:

Prostate needle biopsy with 12 cores, **Fragestellung:** Prostate cancer? Grading?

Breast segment resection and sentinel lymph nodes, **Fragestellung:** Breast cancer? Status of resection margins? Lymph node metastases?

Cystoprostatectomy, **Fragestellung:** Prostate cancer? Bladder cancer? Resection margins?

For complex reports, the coded information must be able to be organized accordingly using an "organizer" mechanism. This organizer mechanism is not provided in FHIR, which is why other adequate solutions (e.g. grouper observations) have been used in this module.

In order to be able to include structured coded information in a pathology report, or to build it up entirely or partially using such coding, pathology systems require appropriate recording tools. For the extension module, the resources [Extractable Questionnaire - Definition](http://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaire-extr-defn.html) and [SDC Questionnaire Response](http://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaireresponse.html) described in the [FHIR IG Structured Data Capture](http://hl7.org/fhir/uv/sdc/STU3/index.html) are suitable, which allow an automatic direct transfer of the recorded data into the pathology report.