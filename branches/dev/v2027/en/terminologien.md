# Terminologies - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* **Terminologies**

## Terminologies

For coding the **entire pathology report as well as the grouper observations**, [LOINC](https://www.loinc.org/) terms from the DOC.* class or the Doc scale are used.

The **generic individual observations** themselves should be coded as precisely as possible in the way they were observed, i.e. on which specimen type, with which method, etc.

The numerous possibilities of describing observations with code-value pairs are limited, for non-numeric observation results, to two (three) basic options:

1. The`Observation.code`represents the type of the observation and the`Observation.value`the non-numeric observation value.

* `Observation.code`: extent of extraprostatic tumor spread
* `Observation.valueCodebleConcept`: focal

1. The`Observation.code`is expressed in a way that does not code the action of the observation but represents a statement about a finding. In this way the`Observation.value`is a qualifier that codes the presence or absence of the finding.

* `Observation.code`: perineural sheath invasion
* `Observation.valueCodebleConcept`: yes/no indicator or `Observation.valueBoolean`

1. The`Observation.code`is represented by a statement about a finding as in 2., the`Observation.value`is omitted.

* `Observation.code`: perineural sheath invasion
* `Observation.valueCodebleConcept`:
* `Observation.dataAbsentReason`: not-applicable

For the first option, all [LOINC](https://www.loinc.org/) terms of the types "Lab" and "Clinical" are available. If no suitable LOINC code is available, a [SNOMED CT](http://www.snomed.org/) code is used that comes from the hierarchy axis `363787002` (Observable entity) or `386053000` (Evaluation procedure). The Observation.values are preferably SNOMED CT codes or corresponding LOINC answer codes.

For the second option, the Observation.code is preferably a SNOMED CT code from the hierarchy axes `404684003` (Clinical finding), `413350009` (Finding with explicit context) or `272379006` (Event). The Observation.value is preferably represented by the SNOMED CT axis `362981000` (Qualifier value). Postcoordinated SNOMED CT expressions should be avoided.

For the third option, a SNOMED CT code from the above-mentioned hierarchy axes should preferably be used. An Observation.dataAbsentReason.value for the missing Observation.value should be used to indicate why this value is missing.

If no suitable LOINC terms or SNOMED CT codes can be found, further standardized code systems (e.g. HL7 V2.x or V3, ICD-10, ICD-11, ICD-O-3, ADT/GEKID) are to be preferred over codes from local code systems.

For synoptic reports on tumors, the SNOMED CT Clinical Implementation Guide for Cancer Synoptic Reporting (https://confluence.ihtsdotools.org/display/DOCCANSIG/SNOMED+CT+Clinical+Implementation+Guide+for+Cancer+Synoptic+Reporting) should be taken into account.

The **units of measurement for measured values** must be given in [UCUM](http://unitsofmeasure.org/ucum.html) units so that the results can be converted into one another. [Validators](https://ucum.nlm.nih.gov/ucum-lhc/demo.html) can be used to ensure that the units used are permissible.

For the coding of **specimens** and **procedures**, [SNOMED CT](http://www.snomed.org/) is used.

-------

### Stainings

For **staining procedures** the following approach is recommended:

* **Histological and cytological stainings** can be coded in SCT either as a precoordinated procedure (e.g. all children of [127790008](https://browser.ihtsdotools.org/?perspective=full&conceptId1=127790008&edition=MAIN/2022-05-31&release=&languages=en)) or as a combination of the staining process (127790008) and the dyes used (all children of [397165007](https://browser.ihtsdotools.org/?perspective=full&conceptId1=397165007&edition=MAIN/2022-05-31&release=&languages=en) or [45389009](https://browser.ihtsdotools.org/?perspective=full&conceptId1=45389009&edition=MAIN/2022-05-31&release=&languages=en)) as an additive (substance). Here a staining process can be represented by [Specimen.processing.procedure](http://hl7.org/fhir/specimen-definitions.html#Specimen.processing.procedure), while the associated staining substances would be represented via [Specimen.processing.additive](http://hl7.org/fhir/specimen-definitions.html#Specimen.processing.additive) by a reference to one or more Substance resources.
* For **immunohistochemical stainings and in-situ hybridizations (ISH)** only few precoordinated concepts are available in SCT. Here, too, the combination of the staining process [406867009](https://browser.ihtsdotools.org/?perspective=full&conceptId1=406867009&edition=MAIN/2022-05-31&release=&languages=en) or [13269000](https://browser.ihtsdotools.org/?perspective=full&conceptId1=13269000&edition=MAIN/2022-05-31&release=&languages=en) with the antibodies/antigens and chromogens as .substance or ingredient.substance suggests itself.

In addition, a postcoordinated staining process can be coded:

* staining process(procedure):usingSubstance=dye or =antibody
* staining process(procedure):directSubstance=target antigen
* or a combination of these codings.

With postcoordinated codes it should be noted, however, that they are hardly evaluable without a suitable terminology server. For this reason our recommendation would be to first transfer the relationships between staining processes and their respective staining substances to the FHIR information model and to represent them by means of .processing.procedure and .processing.additive.

-------

### Module ValueSets

In addition to the terminologies mentioned above and further international terminologies (ICD-O-3 and UICC TNM), the module **Pathology Report** defines its own ValueSets. Please note that none of the ValueSets contains an expansion. This has to be performed with a terminology server before use.

In addition, several data elements in the FHIR resources are coded by HL7 V2.x codes.

The following table is generated automatically from the FHIR package and lists one row per ValueSet with the profiles and elements that bind it:

| | | | |
| :--- | :--- | :--- | :--- |
| Title | URL | Description | Usage (profile: element, strength) |
| [MII VS Patho All [LOINC]](ValueSet-mii-vs-patho-all-loinc.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-all-loinc | ValueSet for general LOINC VS binding | MII PR Patho Base Observation: Observation.code.coding (preferred),MII PR Patho Composition: Composition.section.code.coding (required) |
| [MII VS Patho Collection Method [SNOMED CT]](ValueSet-mii-vs-patho-collection-method-snomed-ct.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-collection-method-snomed-ct | ValueSet for the clinical collection method | MII PR Patho Specimen: Specimen.collection.method (extensible) |
| [MII VS Patho Composition Type KDL](ValueSet-mii-vs-patho-composition-type-kdl.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-composition-type-kdl | ValueSet for the categorization of Pathology Report documents | MII PR Patho Composition: Composition.type.coding (extensible) |
| [MII VS Patho Composition Type [Snomed CT]](ValueSet-mii-vs-patho-composition-type-snomed-ct.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-composition-type-snomed-ct | ValueSet for the types a pathology Composition can have | MII PR Patho Composition: Composition.type.coding (extensible),MII PR Patho Composition: Composition.category.coding (extensible) |
| [MII VS Patho Container Type [SNOMED CT]](ValueSet-mii-vs-patho-container-type-snomed-ct.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-container-type-snomed-ct | ValueSet for container type based on IHE PaLM's ContainerEntityClassType ValueSet | MII PR Patho Specimen: Specimen.container.type (required) |
| [MII VS Patho Media Modality [SNOMED CT]](ValueSet-mii-vs-patho-media-modality-snomed-ct.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-media-modality-snomed-ct | ValueSet with some of the main Media.modalities needed in the pathological scope | MII PR Patho Attached Image: Media.modality (extensible) |
| [MII VS Patho Problem List [SNOMED CT]](ValueSet-mii-vs-patho-problem-list-snomed-ct.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-problem-list-snomed-ct | ValueSet containing the recommended vocabulary for describing problems, according to the IHE Patient Care Coordination Technical Framework (Vol. 2) | MII PR Patho Problem List Item: Condition.code (extensible) |
| [MII VS Patho Processing Procedure [SNOMED CT]](ValueSet-mii-vs-patho-processing-procedure-snomed-ct.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-processing-procedure-snomed-ct | Specimen processing procedure | MII PR Patho Specimen: Specimen.processing.procedure (extensible) |
| [MII VS Patho Report Category HL7](ValueSet-mii-vs-patho-report-category-hl7.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-report-category-hl7 | ValueSet for the categorization of Pathology Report documents | MII PR Patho Report: DiagnosticReport.category (extensible) |
| [MII VS Patho Report Code [LOINC]](ValueSet-mii-vs-patho-report-code-loinc.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-report-code-loinc | ValueSet for the report type codes of pathology DiagnosticReports | MII PR Patho Report: DiagnosticReport.code.coding (extensible) |
| [MII VS Patho Section Types [LOINC]](ValueSet-mii-vs-patho-section-types-loinc.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-section-types-loinc | ValueSet for IHE PaLM APSR's section types | MII PR Patho Finding: Observation.category (required) |
| [MII VS Patho Service Request Code](ValueSet-mii-vs-patho-service-request-code.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-service-request-code | ValueSet for a preferred set of ServiceRequest codes | MII PR Patho Service Request: ServiceRequest.code (extensible) |

