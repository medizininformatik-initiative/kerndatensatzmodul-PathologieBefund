# Data sets - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Use cases and information model**](anwendungsfaelle.md)
* **Data sets**

## Data sets

The official version of the information model for the module Pathology Report can be found on [Art-Decor](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.1113&conceptEffectiveDate=2020-01-06T11%3A50%3A48&language=de-DE). In order to standardize the representation, the information model was additionally mapped as a FHIR logical model:

[MII LM Patho Logical Model](StructureDefinition-mii-lm-patho-logical-model.md)

### Data set Art-Decor

It should be noted that the logical model aims purely at mapping the data elements and describing them. The data types and cardinalities used are not to be regarded as mandatory; this is ultimately determined by the FHIR profiles. For each element within the logical model there is a 1:1 mapping to an element of a concrete FHIR resource.

-------

### Pathology report

| | |
| :--- | :--- |
| Befundbericht.id | Unique identification of the pathology report, usually the accession number (case number), supplemented by the version number |
| Befundbericht.Identifikator | Version-independent identifier of the pathology report, usually the accession number (case number); GUID (global unique identifier) possible |
| Befundbericht.Versionsnummer | Version number of the pathology report |
| Befundbericht.Status | Status of the pathology report (preliminary, final) |
| Befundbericht.Typ | Type of the clinical document (LOINC 60568-3) |
| Befundbericht.Kategorie | Category of the clinical document (LOINC 27898-6) |
| Befundbericht.Datum | Date and time of the release of the report |
| Befundbericht.Titel | Title of the report (pathological-anatomical assessment) |
| Befundbericht.Autor | Author of the report |
| Befundbericht.Freigebender | Legally responsible person (legal authenticator) for the report |
| Befundbericht.ZugehörigesDokument | Earlier version of the report |

For the data sets **patient**, **encounter** and **managing organization**, the MII modules [Person](https://medizininformatik-initiative.github.io/kerndatensatz-basis/en/StructureDefinition-mii-pr-person-patient.html), [Encounter](https://medizininformatik-initiative.github.io/kerndatensatz-basis/en/StructureDefinition-mii-pr-fall-kontakt-gesundheitseinrichtung.html) and [Structural data](https://simplifier.net/medizininformatikinitiative-modulstrukturdaten) are used. They are therefore not specified further here.

-------

### Examination request

| | |
| :--- | :--- |
| Untersuchungsauftrag.Identifikation | Identifier of the examination request |
| Untersuchungsauftrag.KlinischeInformation | Clinical information about a case |
| Untersuchungsauftrag.Status | Status of the request (active, completed) |
| Untersuchungsauftrag.Einsender | Physician who sends specimens of a patient in for pathological-anatomical examination |
| Untersuchungsauftrag.Probenentnehmer | Collector of a specimen who is not identical to the sender |
| Untersuchungsauftrag.Präparat | Submitted preparation (see preparation/specimen) |
| Untersuchungsauftrag.Untersuchung | Ordered examination(s) |

-------

### Specimen

As the basis for the specification of the **specimen**, the MII profile [Bioprobe - Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core) from the module [Biobank](https://simplifier.net/medizininformatikinitiative-modulbiobank) is used.

| | |
| :--- | :--- |
| Probe | Organ or part of an organ or a collection thereof, or tissue or cells, that are sent in as a submission for processing and assessment and from which further specimens can arise through specimen processing |
| Probe.Identifikation | Identification of the specimen |
| Probe.Probenherkunft | Location of the body site from which the specimen originates |
| Probe.Entnahme-/Abnahmezeitpunkt | Date and time of specimen collection |
| Probe.Laboreingangszeitpunkt | Date and time of receipt of the preparation |
| Probe.Entnahmeprozedur | Procedure for obtaining the preparation |
| Probe.Bearbeitungsprozedur | Procedure of specimen/preparation processing |
| Probe.Bearbeitungsprozedur.Additiv | Additive used for specimen/preparation processing |
| Probe.Probenidentifikation.ProbenID | ID of the specimen, may be identical to the case number (accession number) |
| Probe.Probenidentifikation.ParentID | ID of the parent specimen from which the specimen to be processed / examined originates |
| Probe.Container | Specimen container in the broadest sense: submission vessel, tissue cassette, paraffin block, slide, etc. |
| Probe.Container.Typ | Type of the container |
| Probe.Container.Additiv | Additive in the container |
| Probe.Beobachtung | Observation on the specimen |

-------

### Observation report sections

The observation report sections listed in the Art-Decor scheme all have the same following logical data elements, which differ only in their specific content.

| | |
| :--- | :--- |
| Beobachtungsberichtabschnitt.Identifikation | Identifier of the report section |
| Beobachtungsberichtabschnitt.Text | Text of an observation in the report section |
| Beobachtungsberichtabschnitt.Pathologisch-anatomische Einzelbeobachtung | Semantically annotated (coded) unit of a generic pathological-anatomical observation in the report section |
| Beobachtungsberichtabschnitt.Eingebettetes Bild | Image embedded in the report section |

The observation report section **specimens / technical processing** from the CDA profile APSR is represented by specimen information from the LIS. This contains a list of all specimens that were sent in by the sender and processed in the laboratory into assessable (stained section) preparations, so that every assessable object can have an unambiguous assignment of its production process.

For the text part, a structure according to:

* specimen ID
* parent specimen ID
* collection procedure
* processing procedure

is suitable for the specimen levels part, block, stained section (part of a part, stained smear, each for cytological preparations).

The observation report section **clinical information** from the CDA profile APSR is fully contained in the examination request and can be taken from there.

-------

### Generic pathological-anatomical individual observation

The generic pathological-anatomical individual observations represent the "atomic" codable data elements in the report. They describe specific statements on morphological characteristics and results of measurements, can embed images or describe regions of interest in images to which further observations refer.

Generic pathological-anatomical individual observations can also be used in nested constructs with organizer properties.

| | |
| :--- | :--- |
| Generische Pathologisch-anatomische Einzelbeobachtung.Identifikation | Identifier of the generic pathological-anatomical observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Text | Display text of a coded observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Code | Code of the generic pathological-anatomical observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Status | Status of the generic pathological-anatomical observation (preliminary/active, final) |
| Generische Pathologisch-anatomische Einzelbeobachtung.Datum | Date and time of the generic pathological-anatomical observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Wert | Value (measured value or code value) of the generic pathological-anatomical observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Interpretation | Coded interpretation of the value with regard to its relation to threshold values |
| Generische Pathologisch-anatomische Einzelbeobachtung.Methode | Coded method of the observation (e.g. macroscopy, microscopy, etc.) |
| Generische Pathologisch-anatomische Einzelbeobachtung.Durchführender | Performer of the observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Autor | Author of the observation (pathologist) |
| Generische Pathologisch-anatomische Einzelbeobachtung.Informant | Contributor to the observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Probe | Specimen on which the observation was made (from submitted material up to stained section preparation possible) |
| Generische Pathologisch-anatomische Einzelbeobachtung.Unterbeobachtung | Further contributing observation (e.g. score values, TNM components, etc.) |
| Generische Pathologisch-anatomische Einzelbeobachtung.EingebettetesBild | Image illustrating the observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.RegionOfInterest | Region of interest to which the observation refers (e.g. tumor portion in the tissue section for which e.g. Ki-67 was determined) |
| Generische Pathologisch-anatomische Einzelbeobachtung.Kommentar | Comment on the observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Referenz | Reference to an external document or an external observation, e.g. molecular pathology |

