# QA Errors Summary - MII IG Modul Patho

**Build Date:** 28. November 2025  
**FHIR Version:** 4.0.1  
**Package:** de.medizininformatikinitiative.kerndatensatz.patho#1.0.0  
**Total Errors:** 87  
**Total Warnings:** 343  
**Total Hints:** 60  

## Error Categories

### 1. Build Configuration Errors (4 errors)

#### Supressed Messages File
- **Error:** Supressed messages file not found
- **File:** ImplementationGuide.definition.parameter[23].value

#### FHIR Version Mismatch  
- **Error:** IG is for FHIR version 4.0.1, while package 'hl7.fhir.uv.subscriptions-backport.r4#1.1.0' is for FHIR version 4.0.0
- **File:** ImplementationGuide/mii-ig-modul-patho

#### Broken Links
- **Error:** The link 'StructureDefinition-workflow-supportingInfo.html' for "supportingInfo extension" cannot be resolved
- **File:** StructureDefinition-mii-pr-patho-report-definitions.html (2 occurrences)

### 2. CapabilityStatement Errors (3 errors)

#### URL Mismatch
- **Error:** Canonical URL mismatch between expected and actual URLs
- **Files:** 
  - CapabilityStatement-mii-cps-patho-capability-statement.json
  - Expected: `https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/CapabilityStatement/mii-cps-patho-capability-statement`
  - Actual: `https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/CapabilityStatement/metadata`

### 3. Profile and Slicing Errors (1 error)

#### Composition Type Slicing
- **Error:** Slicing evaluation failed - discriminator has no fixed value, binding, or existence assertions
- **File:** Composition/mii-exa-patho-composition
- **Element:** Composition.type.coding[0] for slice $this in profile Composition.type.coding:sct

### 4. SNOMED CT Supplement Errors (35+ errors)

#### CodeSystem Supplement Issue
Multiple resources have errors related to SNOMED CT supplements not being supported. This affects:

##### Conditions (2 errors)
- `Condition/mii-exa-patho-problem-list-item-1` - Condition.code
- `Condition/mii-exa-patho-problem-list-item-2` - Condition.code

##### DiagnosticReport (1 error)
- `DiagnosticReport/mii-exa-patho-report` - DiagnosticReport.conclusionCode[0]

##### Observations (4 errors)
- `Observation/mii-exa-patho-biopsy-site-a` - Observation.value.ofType(CodeableConcept)
- `Observation/mii-exa-patho-diagnostic-conclusion-2` - Observation.value.ofType(CodeableConcept)
- `Observation/mii-exa-patho-gleason-pattern-a` - Observation.value.ofType(CodeableConcept)
- `Observation/mii-exa-patho-histologic-type-a` - Observation.code and value

##### Practitioners (3 errors)  
- `Practitioner/2346545` - Practitioner.qualification[0].code
- `Practitioner/34456` - Practitioner.qualification[0].code
- `Practitioner/765879` - Practitioner.qualification[0].code

##### ServiceRequest (3 errors)
- `ServiceRequest/mii-exa-patho-request` - ServiceRequest.category[0], code, and supportingInfo elements

##### Specimens (18 errors)
Multiple specimen instances affected:
- `Specimen/mii-exa-patho-prostate-biopsy-block` (6 errors)
- `Specimen/mii-exa-patho-prostate-biopsy-schnitt-HE` (6 errors)  
- `Specimen/mii-exa-patho-prostate-biopsy-schnitt-p63` (6 errors)
- `Specimen/mii-exa-patho-prostate-tru-cut-biopsy-sample` (6 errors)

**Affected elements:** type, collection.method, collection.bodySite, processing.procedure, container.type

### 5. ServiceRequest Slice Matching Errors (6 errors)

#### Multiple Slice Matches
- **File:** ServiceRequest/mii-exa-patho-request
- **Issue:** Elements match more than one slice in supportingInfo
- **Conflicting slices:** codedCondition vs anamnesis, codedCondition vs activeProblems, codedCondition vs observations

#### Invalid Resource Target Types (2 errors)
- **File:** ServiceRequest/mii-exa-patho-request  
- **Issue:** supportingInfo[0] and [1] reference Lists instead of expected Conditions
- **Found:** List resources
- **Expected:** Condition resources

### 6. Display Name and Validation Errors (3+ errors)

#### Wrong Display Names
- `List/mii-exa-patho-active-problems-list`: Wrong display for LOINC code 11450-4
  - **Given:** 'Problem list - Reported'
  - **Expected:** 'Problemliste - Berichtet' (de-DE)

- `Observation/mii-exa-patho-biopsy-site-a`: Wrong display for LOINC code 94738-2
  - **Given:** 'Biopsy site Patient'  
  - **Expected:** 'Biopsy site [Anatomy]'

- `Observation/mii-exa-patho-diagnostic-conclusion-1`: Wrong display for ICD-O-3 code 8140/3
  - **Given:** 'Adenokarzinom o.n.A.'
  - **Expected:** 'Adenocarcinoma, NOS'

#### ValueSet Validation Errors
- Multiple specimen bodySite codes not in required ValueSet 'MII VS Biobank BodyStructures SCT'
- Container type codes cannot be confirmed in required ValueSet

## Files with Most Errors

1. **ServiceRequest-mii-exa-patho-request** (12 errors)
2. **Specimen files** (6 errors each):
   - Specimen-mii-exa-patho-prostate-biopsy-block
   - Specimen-mii-exa-patho-prostate-biopsy-schnitt-HE  
   - Specimen-mii-exa-patho-prostate-biopsy-schnitt-p63
   - Specimen-mii-exa-patho-prostate-tru-cut-biopsy-sample
3. **CapabilityStatement-mii-cps-patho-capability-statement** (3 errors)

## Recommended Actions

1. **Fix SNOMED CT Supplement Issues**: Update dependency versions or configuration to resolve SNOMED CT supplement compatibility
2. **Resolve ServiceRequest Slicing**: Fix supportingInfo slicing discriminators and target types  
3. **Update Display Names**: Correct display names to match official terminology
4. **Fix CapabilityStatement URLs**: Align canonical and actual URLs
5. **Review ValueSet Bindings**: Ensure codes are in required ValueSets
6. **Add Missing Files**: Create supressed messages file if needed
7. **Update Dependencies**: Resolve FHIR version mismatches in dependencies

## Notes

- Most errors stem from SNOMED CT supplement compatibility issues
- ServiceRequest profile needs significant slicing refinement  
- External reference instances appear to be working correctly
- Many errors are systematic and can be addressed through dependency updates

---
*Generated from qa.txt on 28. November 2025*