//-------------------------------
// SearchParameters for Specimen
//-------------------------------
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