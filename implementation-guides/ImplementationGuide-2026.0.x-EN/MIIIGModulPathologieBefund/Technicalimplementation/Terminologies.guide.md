## {{page-title}}

[LOINC](https://www.loinc.org/) terms from the DOC.* class or the Doc scale are used to code the **entire pathology report as well as the grouper observations**.

The generic observations themselves should be coded as accurately as possible as they were observed, i.e., on which sample type, with which method, etc.

The numerous possibilities for describing observations with code-value pairs are limited to two (three) basic options for non-numeric observation results:

1. The `Observation.code` represents the type of observation, and the `Observation.value` represents the non-numeric observation value.

- `Observation.code`: Extent of extraprostatic tumor spread
- `Observation.valueCodebleConcept`: focal

2. The `Observation.code` is expressed by a possibility that does not encode the action of the observation, but rather represents a statement about a finding. Thus, the Observation.value is a qualifier that encodes the presence or absence of the finding.

- `Observation.code`: Perineural sheath invasion
- `Observation.valueCodebleConcept`: Yes/No indicator of `Observation.valueBoolean`

3. The `Observation.code` is represented by a statement about a finding, as in 2. The Observation.value is omitted.

- `Observation.code`: Perineural sheath invasion
- `Observation.valueCodebleConcept`:
- `Observation.dataAbsentReason`: not-applicable

For the first option, all [LOINC](https://www.loinc.org/) terms of the types "Lab" and "Clinical" are available. If no suitable LOINC code is available, a [SNOMED-CT](http://www.snomed.org/) code is used, which is derived from the hierarchy axis |363787002 (Observable entity)| or |386053000 (Evaluation procedure)|. The observation.values ​​are preferably SNOMED-CT codes or corresponding LOINC answer codes.

For the second option, the Observation.code is preferably a SNOMED-CT code from the hierarchy axes |404684003 (Clinical finding)|, |413350009 (Finding with explicit context)|, or |272379006 (Event)|. The Observation.value is preferably represented by the SNOMED-CT axis |362981000 (Qualifier value)|. Postcoordinated SNOMED-CT expressions should be avoided.

For the third option, a SNOMED-CT code from the above-mentioned hierarchy axes should preferably be used. An Observation.dataAbsentReason.value of the missing Observation.value should be used to indicate why this value is missing.

If no suitable LOINC terms or SNOMED-CT codes can be found, other standardized code systems (e.g., HL7 V2.x or V3, ICD-10, ICD-11, ICD-O-3, ADT/GEKID) are preferable to codes from local code systems.

TODO: Add a figure (Principle of joint use of LOINC and SNOMED-CT, https://confluence.ihtsdotools.org/display/DOCLOINC/5.2.7+Practical+Uses+of+Part+Maps+and+Expression+Associations, Chapter 5.2.7) or https://confluence.ihtsdotools.org/display/SCCDP/General+background+documentation+and+information?preview=%2F146874780%2F174689714%2FGuidelines+for+using+LOINC+and+SNOMED+CT+Together.pdf

For synoptic reports on tumors, based on ICCR protocols, the SNOMED CT Clinical Implementation Guide for Cancer Synoptic Reporting (https://confluence.ihtsdotools.org/display/DOCCANSIG/SNOMED+CT+Clinical+Implementation+Guide+for+Cancer+Synoptic+Reporting) should be considered.

The units of measurement must be specified in [UCUM](http://unitsofmeasure.org/ucum.html) units so that the results can be converted into one another. [Validators](https://ucum.nlm.nih.gov/ucum-lhc/demo.html) can be used to ensure that the units used are valid.

[SNOMED-CT](http://www.snomed.org/) is also used to code **specimens** and **procedures**.

---------------------

### Stainings
The following approach is recommended for **staining procedures**:

- **Histological and cytological stainings** can be performed in SCT either as a precoordinated procedure (e.g., all children of [127790008](https://browser.ihtsdotools.org/?perspective=full&conceptId1=127790008&edition=MAIN/2022-05-31&release=&languages=en)) or as a combination of staining process (127790008) and the dyes used (all children of [397165007](https://browser.ihtsdotools.org/?perspective=full&conceptId1=397165007&edition=MAIN/2022-05-31&release=&languages=en) or [45389009](https://browser.ihtsdotools.org/?perspective=full&conceptId1=45389009&edition=MAIN/2022-05-31&release=&languages=en)) can be coded as an additive (substance). A staining process can be mapped using [Specimen.processing.procedure](http://hl7.org/fhir/specimen-definitions.html#Specimen.processing.procedure), while the associated staining substances would be mapped using [Specimen.processing.additive](http://hl7.org/fhir/specimen-definitions.html#Specimen.processing.additive) via a reference to one or more substance resources.

- For **immunohistochemical staining**, so far only a few precoordinated concepts are available in SCT. Here, too, the combination of dyeing process [406867009](https://browser.ihtsdotools.org/?perspective=full&conceptId1=406867009&edition=MAIN/2022-05-31&release=&languages=en) or [13269000](https://browser.ihtsdotools.org/?perspective=full&conceptId1=13269000&edition=MAIN/2022-05-31&release=&languages=en) with the antibodies/antigens and chromogens as .substance or ingredient.substance.

In addition, the following can be coded in a post-coordinated staining process:

- Staining process(procedure):usingSubstance=dye or =antibody
- Staining process(procedure):directSubstance=target antigen
- or a combination of these codes

However, with post-coordinated codes, it should be noted that they are difficult to evaluate without a suitable terminology server. For this reason, our recommendation would be to first transfer the relationships between staining processes and their respective staining substances to the FHIR information model and map them using .processing.procedure and .processing.additive.

For in situ hybridizations, PCR tests, methylation assays, and NGS analyses, terminological harmonization should be achieved through the corresponding profiles of the ["Molecular Tumor Board"](https://simplifier.net/mii-erweiterungsmodul-molekulares-tumorboard/~introduction) core dataset (KDS).

-------------------------

###  ValueSets Module

In addition to the above and other international terminologies (ICD-O-3 and UICC-TNM), the Pathology Reports module defines its own ValueSets. Please note that all ValueSets do not include expansion. This must be performed using a terminology server before use.

In addition, several data elements in the FHIR resources are encoded using HL7 V2.x codes.


| Profile | Value-Sets | Binding-Strength |
|--|--|
| MII PR Patho Specimen | MII_VS_Patho_Collection_Method_SNOMED_CT <br> MII_VS_Patho_Container_Type_SNOMED | [Extensible](http://hl7.org/fhir/r4/terminologies.html#extensible) <br> [Required](http://hl7.org/fhir/r4/terminologies.html#required)
| MII PR Patho Service Request | MII_VS_Patho_Service_Request_SNOMED_CT | [Preferred](http://hl7.org/fhir/r4/terminologies.html#preferred) |
| MII PR Patho Active Problems | MII_VS_Patho_Problem_List_SNOMED_CT | [Extensible](http://hl7.org/fhir/r4/terminologies.html#extensible) |
| MII PR Patho Finding | MII_VS_Patho_Section_Types_LOINC | [Required](http://hl7.org/fhir/r4/terminologies.html#required) |
| MII PR Patho Report | MII_VS_Patho_Report_Category_HL7 | [Extensible](http://hl7.org/fhir/r4/terminologies.html#extensible) | 
| MII PR Patho Specimen | MII_VS_Patho_Processing_Procedure_SNOMED_CT <br> MII_VS_Patho_Collection_Method_SNOMED_CT | [Extensible](http://hl7.org/fhir/r4/terminologies.html#extensible) | 
| MII PR Patho Attached Image | MII_VS_Patho_Media_Modality_SNOMED_CT | [Extensible](http://hl7.org/fhir/r4/terminologies.html#extensible) | 
| MII PR Patho Composition | MII_VS_Patho_Composition_Type_LOINC <br> MII_VS_Patho_All_LOINC | [Extensible](http://hl7.org/fhir/r4/terminologies.html#extensible) <br> [Required](http://hl7.org/fhir/r4/terminologies.html#required) | 
| MII PR Patho Base Observation | MII_VS_Patho_All_LOINC | [Preferred](http://hl7.org/fhir/r4/terminologies.html#preferred) |

---

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-collection-method-snomed-ct}}

---

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-container-type-snomed-ct}}

---

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-service-request-snomed-ct}}

---

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-problem-list-snomed-ct}}

---

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-section-types-loinc}}

---

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-report-category-hl7}}

---

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-media-modality-snomed-ct}}

---

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-composition-type-loinc}}

---

{{render:https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-all-loinc}}

---

