# Context and references - MII IG Modul Patho v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Context and references**

## Context and references

The module **Pathology Report** maps pathology findings that are typically produced in the pathology facility of a hospital. These reports play a central role in several use cases of the MII:

* Pathology reports from routine examinations are essential for diagnosis and therapy monitoring in most diseases
* Pathology reports are an important component of many clinical studies

### References within the MII

A pathology report is always assigned to the [person](https://medizininformatik-initiative.github.io/kerndatensatz-basis/en/StructureDefinition-mii-pr-person-patient.html) from whom the **specimens** were taken, and is related to an [encounter at a healthcare facility](https://medizininformatik-initiative.github.io/kerndatensatz-basis/en/StructureDefinition-mii-pr-fall-kontakt-gesundheitseinrichtung.html). This encounter is a pathology-facility-specific **(department) contact**, the so-called submission, which groups all examination requests for specimens of one person that were taken in a temporal and professional context. This encounter does not have to be identical to the examination request. If a specimen of a case is stored in a biobank for further examinations, that specimen can be represented with the profiles of the module [Biospecimen](https://simplifier.net/medizininformatikinitiative-modulbiobank). The results of a pathology report can be reused as individual elements in various other modules, e.g. for tumor documentation.

Conversely, reports from other disciplines (e.g. from the modules [Molecular Genetic Report](https://simplifier.net/medizininformatikinitiative-modulomics) or [Laboratory](https://simplifier.net/medizininformatikinitiative-modullabor)) can be included in pathology reports in whole or in part and interpreted in the sense of a synoptic assessment.

Furthermore, a relationship to the module [Diagnosis](https://medizininformatik-initiative.github.io/kerndatensatz-basis/en/StructureDefinition-mii-pr-diagnose-condition.html) may exist. A diagnosis can be referenced by an examination request (e.g. as part of the clinical information / history of present illness). It can, however, also reference a report itself if that report is to serve as evidence, e.g. for the staging of the diagnosis made.

### References outside the MII

Since pathology systems can be so-called subsystems within the hospital, compatibility with [ISiK](https://simplifier.net/packages/de.gematik.isik-basismodul/4.0.1) is essential for the implementation of the pathology profiles of the Medical Informatics Initiative. For bundling the pathology resource instances, a Composition/Bundle is used which inherits from the ISiK profile [ISiKBerichtSubsysteme](https://simplifier.net/isik-stufe-5/isikberichtsubsysteme).

