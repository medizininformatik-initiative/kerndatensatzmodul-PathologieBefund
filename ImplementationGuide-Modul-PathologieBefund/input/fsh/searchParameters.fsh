//----------------------------------------
// SearchParameters for Specimen
//----------------------------------------
Instance: mii-sp-patho-request
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Request"
* description = "SearchParameter for Specimen.request"
* status = #draft
* code = #request
* base = #Specimen
* type = #reference
* expression = "Specimen.request"

Instance: mii-sp-patho-collection-method
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Collection_Method"
* description = "SearchParameter for Specimen.collection.method"
* status = #draft 
* code = #collection-method
* base = #Specimen 
* type = #token
* expression = "Specimen.collection.method"

Instance: mii-sp-patho-collection-body-site
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Collection_Body_Site"
* description = "SearchParameter for Specimen.collection.bodySite"
* status = #draft
* code = #collection-body-site
* base = #Specimen
* type = #token
* expression = "Specimen.collection.bodySite"

Instance: mii-sp-patho-processing-procedure
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Processing_Procedure"
* description = "SearchParameter for Specimen.processing.procedure"
* status = #draft
* code = #processing-procedure
* base = #Specimen
* type = #token
* expression = "Specimen.processing.procedure"

Instance: mii-sp-patho-processing-additive
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Processing_Additive"
* description = "SearchParameter for Specimen.processing.additive"
* status = #draft
* code = #processing-additive
* base = #Specimen
* type = #reference
* expression = "Specimen.processing.additive"

Instance: mii-sp-patho-processing-date
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Processing_Date"
* description = "SearchParameter for Specimen.processing.time"
* status = #draft
* code = #processing-date
* base = #Specimen
* type = #date
* expression = "Specimen.processing.time"

Instance: mii-sp-patho-container-additive
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Container_Additive"
* description = "SearchParameter for Specimen.container.additive"
* status = #draft
* code = #container-additive
* base = #Specimen
* type = #reference
* expression = "Specimen.container.additive"

//-----------------------------------------
// SearchParameters for Observation
//-----------------------------------------
Instance: mii-sp-patho-body-site
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Body_Site"
* description = "SearchParameter for Observation.bodySite"
* status = #draft
* code = #body-site
* base = #Observation
* type = #token
* expression = "Observation.bodySite"

Instance: mii-sp-patho-value-ratio
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Value_Ratio"
* description = "SearchParameter for Observation.valueRatio"
* status = #draft
* code = #value-ratio
* base = #Observation
* type = #quantity
* expression = "(Observation.value as Quantity) | (Observation.value as Ratio)"

//-----------------------------------------
// SearchParameters for ServiceRequest
//-----------------------------------------
Instance: mii-sp-patho-reason-code
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Reason_Code"
* description = "SearchParameter for ServiceRequest.reasonCode"
* status = #draft
* code = #reason-code
* base = #ServiceRequest
* type = #token
* expression = "ServiceRequest.reasonCode"

Instance: mii-sp-patho-supporting-info
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Reason_Code"
* description = "SearchParameter for ServiceRequest.supportingInfo"
* status = #draft
* code = #supporting-info
* base = #ServiceRequest
* type = #reference
* expression = "ServiceRequest.supportingInfo"

//-----------------------------------------
// SearchParameters for DiagnosticReport
//-----------------------------------------
Instance: mii-sp-patho-imaging-study
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Imaging_Study"
* description = "SearchParameter for DiagnosticReport.imagingStudy"
* status = #draft
* code = #imaging-study
* base = #DiagnosticReport
* type = #reference
* expression = "DiagnosticReport.imagingStudy"

//-----------------------------------------
// SearchParameters for Composition
//-----------------------------------------
Instance: mii-sp-patho-attester-mode
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Attester_Mode"
* code = #attester-mode
* description = "SearchParameter for Composition.attester.mode"
* status = #draft
* base = #Composition
* type = #token
* expression = "Composition.attester.mode"

Instance: mii-sp-patho-custodian
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Custodian"
* description = "SearchParameter for Composition.custodian"
* status = #draft
* code = #custodian
* base = #Composition
* type = #reference
* expression = "Composition.custodian"

Instance: mii-sp-patho-relates-to-code
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Relates_To_Code"
* description = "SearchParameter for Composition.relatesTo.code"
* status = #draft
* code = #relates-to-code
* base = #Composition
* type = #token
* expression = "Composition.relatesTo.code"

//-----------------------------------------
// SearchParameters for Media
//-----------------------------------------
Instance: mii-sp-patho-part-of
InstanceOf: SearchParameter
Usage: #definition
* name = "MII_SP_Patho_Part_Of"
* code = #part-of
* description = "SearchParameter for Media.partOf"
* status = #draft
* base = #Media
* type = #reference
* expression = "(Media.partOf as Media)"