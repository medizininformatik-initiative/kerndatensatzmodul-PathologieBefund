## Context in the overall project / references from other modules

The module **Pathologie-Befund** maps pathology findings that are typically collected in a pathology facility in a hospital. These reports play a central role in some use cases of the MII:

Pathology reports from routine examinations are essential for diagnosing and monitoring therapy for most diseases

Pathology reports are an important base for many clinical studies

### References within the MII

A pathology report is always assigned to the [person](https://simplifier.net/mii-basismodul-person-2024) from whom the *specimen* were taken and related to a [Versorgungsstellenkontakt](https://simplifier.net/medizininformatikinitiative-modulfall). The *Versorgungsstellenkontakt* is a pathology facility-specific *(Abteilungs)kontakt*, the so-called submission, which summarizes all examination orders for samples from a person that were taken in a temporal and specialist context. This *Versorgungsstellenkontakt* does not have to be identical to the examination order. If a sample from a case is kept in a biobank for further examination, this sample can be mapped with the profiles in the module [Bioproben](https://simplifier.net/medizininformatikinitiative-modulbiobank). The results from a pathology report can be integrated as individual elements in various other modules, e.g. for tumor documentation.

On the other hand, reports from other disciplines (e.g. from the modules [Molekulargenetischer Befundbericht](https://simplifier.net/medizininformatikinitiative-modulomics) or [Labor](https://simplifier.net/medizininformatikinitiative-modullabor) can be included in pathology reports in whole or in part and interpreted in the sense of a synoptic evaluation.

Furthermore, a relationship to the module [Diagnose](https://simplifier.net/medizininformatikinitiative-moduldiagnosen) can exist. A diagnosis can be referenced by an examination order (e.g. as part of the clinical information/anamnesis). However, this can also refer to a finding itself if it is to serve as evidence, e.g. for staging the diagnosis made.

### References outside the MII

Since pathology systems can be so-called subsystems in the hospital, compatibility with [ISiK](https://simplifier.net/packages/de.gematik.isik-basismodul/4.0.1) is essential for the implementation of the pathology profiles of the Medical Informatics Initiative. For example, a composition/bundle is used to bundle the pathology resource instances, which inherits from the ISiK profile [ISiKBerichtSubsysteme](https://simplifier.net/isik-basis-v4/isikberichtsubsysteme).