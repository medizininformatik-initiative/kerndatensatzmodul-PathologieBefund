### Data sets including descriptions

The official version of the information model for the Pathology Report extension module can be found on [Art-Decor](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.1113&conceptEffectiveDate=2020-01-06T11%3A50%3A48&language=de-DE). To standardize the representation, the information model was also mapped as a FHIR Logical Model:

{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-lm-patho-logical-model}}

### Data set Art-Decor

It should be noted that the Logical Model is purely aimed at mapping the data elements and describing them. The data types and cardinalities used are not mandatory. This is ultimately determined by the FHIR profiles. For each element within the Logical Model, there is a 1:1 mapping to an element of a specific FHIR resource.

------

### Pathology report

| Logical data model |  |
|--|--|
| Befundbericht.id | Unique identification of the pathology report, usually the accession number (case number), supplemented by the version number |
| Befundbericht.Identifikator | Version-independent identifier of the pathology report, usually the accession number (case number), GUID (Global Unique Identifier) ​​possible |
| Befundbericht.Versionsnummer | Version number of the pathology report |
| Befundbericht.Status | Status of the pathology report (provisional, final) |
| Befundbericht.Typ | Type of clinical document (LOINC 60568-3) |
| Befundbericht.Status | Category of clinical document (LOINC 27898-6) |
| Befundbericht.Datum  | Date and time of release of the report |
| Befundbericht.Titel | Title of the report (pathological-anatomical assessment) |
| Befundbericht.Autor | Author of the report |
| Befundbericht.Freigebender | Legally responsible person (Legal Authenticator) for the report |
| Befundbericht.ZugehörigesDokument | Older version of the report |

The MII modules [Person](https://simplifier.net/mii-basismodul-person-2024), [Fall](https://simplifier.net/medizininformatikinitiative-modulfall) and [Strukturdaten](https://simplifier.net/medizininformatikinitiative-modulstrukturdaten) are used for the data sets *Patient*, *Fall / Case* and *Verwaltende Organisation / administrative organization*. They are therefore not specified further here.

------

### Examination request (Clinical order)

| Logical data model | Description |
|--|--|
| Untersuchungsauftrag.Identifikation | Identifier of the clinical order |
| Untersuchungsauftrag.KlinischeInformation | Clinical information about the case |
| Untersuchungsauftrag.Status | Status of the order (active, completed) |
| Untersuchungsauftrag.Einsender | Doctor who sends samples from a patient for pathological-anatomical examination and assessment |
| Untersuchungsauftrag.Probenentnehmer | Sample collector who need not be identical to the sender |
| Untersuchungsauftrag.Präparat | Submitted preparation (see preparation/specimen) |
| Untersuchungsauftrag.Untersuchung | Ordered examination(s) |

------

### Specimen (Sample)
The MII profile [Bioprobe - Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/profilespecimenbioprobecore), from the [Biobank](https://simplifier.net/medizininformatikinitiative-modulbiobank) module, is used as the basis for the specification of the specimen. Usually, the specimen resulting from the clinical collection process is also called sample.

| Logical data model | Description |
|--|--|
| Probe | Organ or part of an organ or a collection thereof or tissue or cells that are sent in for processing and assessment and from which further specimens can be created through specimen processing |
| Probe.Identifikation | Identification of the specimen / sample |
| Probe.Probenherkunft | Location of the body part from which the sample comes |
| Probe.Entnahme-/Abnahmezeitpunkt | Date and time of sample collection |
| Probe.Laboreingangszeitpunkt | Date and time of specimen receipt |
| Probe.Entnahmeprozedur | Procedure for specimen collection |
| Probe.Bearbeitungsprozedur | Procedure for sample/specimen processing |
| Probe.Bearbeitungsprozedur.Additiv | Additive used for sample/specimen processing |
| Probe.Probenidentifikation.ProbenID | ID of the Specimen, can be identical to the accession number  |
| Probe.Probenidentifikation.ParentID | ID of the parent Specimen from which the Specimen to be processed / examined originates |
| Probe.Container | Specimen container in the broadest sense: submission container, tissue cassette, paraffin block, slide, etc. |
| Probe.Container.Typ | Type of container |
| Probe.Container.Additiv | Additive in the container |
| Probe.Beobachtung | Observation of the sample |

------

### Observation report sections

The observation report sections / Beobachtungsberichtabschnitte listed in the Art-Decor scheme all have the same following logical data elements, which only differ in their specific content.

| Logical data model | Description |
|--|--|
| Beobachtungsberichtabschnitt.Identifikation | Identifier of the report section |
| Beobachtungsberichtabschnitt.Text | Text of an observation in the report section |
| Beobachtungsberichtabschnitt.Pathologisch-anatomische Einzelbeobachtung | Semantically annotated (coded) unit of a generic pathological-anatomical observation in the report section | 
| Beobachtungsberichtabschnitt.Eingebettetes Bild | Image embedded in the findings report section |

The observation report section *Proben/Technische Bearbeitung* from the CDA profile APSR is represented by sample information from the LIS. This contains a list of all samples that were sent by the sender and processed in the laboratory into assessable (stained section) preparations, so that each assessable object can have a clear assignment of its production process.

The text section should be structured according to:

* Specimen ID / Proben-ID 
* Parent specimen ID / Elternproben-ID 
* Collection procedure / Entnahmeprozedur 
* Processing procedure / Bearbeitungsprozedur 

for the sample levels part, block, stained section (sample part, stained smear, each for cytological preparations).

The observation report section *Clinical information / Klinische Informationen* from the CDA profile APSR is fully included in the examination request and can be taken from it.

----

### Generic pathological-anatomical observation

The generic pathological-anatomical observations represent the "atomic" codable data elements in the pathology report. They describe specific findings on morphological characteristics and results of measurements, may include images or describe regions of interest in images to which further observations refer.

Generic pathological-anatomical observations can also be used in nested constructs with organizer properties.

| Logical data model | Description |
|--|--|
| Generische Pathologisch-anatomische Einzelbeobachtung.Identifikation | Identifier of the generic pathological-anatomical observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Text | Display text of a coded observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Code | Code of the generic pathological-anatomical observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Status | Status of the generic pathological-anatomical observation (provisional/active, final) |
| Generische Pathologisch-anatomische Einzelbeobachtung.Datum | Date and time of the generic pathological-anatomical observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Wert | Value (measured value or code value) of the generic pathological-anatomical observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Interpretation | Coded interpretation of the value in terms of its relationship to threshold values |
| Generische Pathologisch-anatomische Einzelbeobachtung.Methode | Coded method of observation (e.g. Macroscopy, microscopy, etc.) |
| Generische Pathologisch-anatomische Einzelbeobachtung.Durchführender | Person who or device which carried out the observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Autor | Author of the observation (pathologist, device) |
| Generische Pathologisch-anatomische Einzelbeobachtung.Informant | Person who contributed to the observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Probe | Specimen on which the observation was made (from submission sample up to stained section possible) |
| Generische Pathologisch-anatomische Einzelbeobachtung.Unterbeobachtung | Further contributing observation (e.g. score values, TNM components, etc.) |
| Generische Pathologisch-anatomische Einzelbeobachtung.EingebettetesBild | Image to illustrate the observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.RegionOfInterest | Region of interest to which the observation refers (e.g. tumor portion in the tissue section for which, for example, Ki-67 was determined) |
| Generische Pathologisch-anatomische Einzelbeobachtung.Kommentar | Comment on the observation |
| Generische Pathologisch-anatomische Einzelbeobachtung.Referenz | Reference to an external document or an external observation, e.g. made by molecular pathology |
