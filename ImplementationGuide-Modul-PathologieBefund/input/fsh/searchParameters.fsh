//----------------------------------------
// SearchParameters for Specimen
//----------------------------------------
Instance: sd-mii-patho-request
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Request"
Description: "SearchParameter for Specimen.request"
* name = "SD_MII_Patho_Request"
* description = "SearchParameter for Specimen.request"
* status = #active
* code = #request
* base = #Specimen
* type = #reference
* expression = "Specimen.request"

Instance: sd-mii-patho-collection-method
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Collection Method"
Description: "SearchParameter for Specimen.collection.method"
* name = "SD_MII_Patho_Collection_Method"
* description = "SearchParameter for Specimen.collection.method"
* status = #draft 
* code = #collection-method
* base = #Specimen 
* type = #token
* expression = "Specimen.collection.method"

Instance: sd-mii-patho-collection-body-site
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Collection Body-Site"
Description: "SearchParameter for Specimen.collection.bodySite"
* name = "SD MII Patho Collection Body Site"
* description = "SearchParameter for Specimen.collection.bodySite"
* status = #draft
* code = #collection-body-site
* base = #Specimen
* type = #token
* expression = "Specimen.collection.bodySite"

Instance: sd-mii-patho-processing-procedure
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Processing Procedure"
Description: "SearchParameter for Specimen.processing.procedure"
* name = "SD MII Patho Processing Procedure"
* description = "SearchParameter for Specimen.processing.procedure"
* status = #draft
* code = #processing-procedure
* base = #Specimen
* type = #token
* expression = "Specimen.processing.procedure"

Instance: sd-mii-patho-processing-additive
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Processing Additive"
Description: "SearchParameter for Specimen.processing.additive"
* name = "SD MII Patho Processing Additive"
* description = "SearchParameter for Specimen.processing.additive"
* status = #draft
* code = #processing-additive
* base = #Specimen
* type = #reference
* expression = "Specimen.processing.additive"

Instance: sd-mii-patho-processing-date
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Processing Date"
Description: "SearchParameter for Specimen.processing.time"
* name = "SD MII Patho Processing Date"
* description = "SearchParameter for Specimen.processing.time"
* status = #draft
* code = #processing-date
* base = #Specimen
* type = #date
* expression = "Specimen.processing.time"

Instance: sd-mii-patho-container-additive
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Container Additive"
Description: "SearchParameter for Specimen.container.additive"
* name = "SD MII Patho Container Additive"
* description = "SearchParameter for Specimen.container.additive"
* status = #draft
* code = #container-additive
* base = #Specimen
* type = #reference
* expression = "Specimen.container.additive"

//-----------------------------------------
// SearchParameters for Observation
//-----------------------------------------
Instance: sd-mii-patho-body-site
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Body-Site"
Description: "SearchParameter for Observation.bodySite"
* name = "SD MII Patho Body Site"
* description = "SearchParameter for Observation.bodySite"
* status = #draft
* code = #body-site
* base = #Observation
* type = #token
* expression = "Observation.bodySite"

//-----------------------------------------
// SearchParameters for ServiceRequest
//-----------------------------------------
Instance: sd-mii-patho-reason-code
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Reason Code"
Description: "SearchParameter for ServiceRequest.reasonCode"
* name = "SD MII Patho Reason Code"
* description = "SearchParameter for ServiceRequest.reasonCode"
* status = #draft
* code = #reason-code
* base = #ServiceRequest
* type = #token
* expression = "ServiceRequest.reasonCode"

Instance: sd-mii-patho-supporting-info
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Supporting Info"
Description: "SearchParameter for ServiceRequest.supportingInfo"
* name = "SD MII Patho Reason Code"
* description = "SearchParameter for ServiceRequest.supportingInfo"
* status = #draft
* code = #supporting-info
* base = #ServiceRequest
* type = #reference
* expression = "ServiceRequest.supportingInfo"

//-----------------------------------------
// SearchParameters for DiagnosticReport
//-----------------------------------------
Instance: sd-mii-patho-imaging-study
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Imaging Study"
Description: "SearchParameter for DiagnosticReport.imagingStudy"
* name = "SD MII Patho Imaging Study"
* description = "SearchParameter for DiagnosticReport.imagingStudy"
* status = #draft
* code = #imaging-study
* base = #DiagnosticReport
* type = #reference
* expression = "DiagnosticReport.imagingStudy"

//-----------------------------------------
// SearchParameters for Composition
//-----------------------------------------
Instance: sd-mii-patho-attester-mode
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Attester Mode"
Description: "SearchParameter for Composition.attester.mode"
* name = "SD MII Patho Attester Mode"
* code = #attester-mode
* description = "SearchParameter for Composition.attester.mode"
* status = #draft
* base = #Composition
* type = #token
* expression = "Composition.attester.mode"

Instance: sd-mii-patho-custodian
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Custodian"
Description: "SearchParameter for Composition.custodian"
* name = "SD MII Patho Custodian"
* description = "SearchParameter for Composition.custodian"
* status = #draft
* code = #custodian
* base = #Composition
* type = #reference
* expression = "Composition.custodian"

Instance: sd-mii-patho-relates-to-code
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Relates-To Code"
Description: "SearchParameter for Composition.relatesTo.code"
* name = "SD MII Patho Relates-To Code"
* description = "SearchParameter for Composition.relatesTo.code"
* status = #draft
* code = #relates-to-code
* base = #Composition
* type = #token
* expression = "Composition.relatesTo.code"

//-----------------------------------------
// SearchParameters for Media
//-----------------------------------------
Instance: sd-mii-patho-part-of
InstanceOf: SearchParameter
Usage: #definition
Title: "SD MII Patho Part Of"
Description: "SearchParameter for Media.partOf"
* name = "SD MII Patho Part Of"
* code = #atte
* description = "SearchParameter for Media.partOf"
* status = #draft
* base = #Media
* type = #reference
* expression = "Media.partOf"