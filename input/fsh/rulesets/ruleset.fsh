RuleSet: AddInteraction(interaction, expectation)
* interaction[+].code = {interaction}
* interaction[=].extension.url = $fhir-capabilitystatement-expectation
* interaction[=].extension.valueCode = {expectation}

RuleSet: AddProfile(profile, expectation)
* profile[+] = "http://hl7.org/fhir/StructureDefinition/{profile}"
* profile[=].extension.url = $fhir-capabilitystatement-expectation
* profile[=].extension.valueCode = {expectation}

RuleSet: InitResource(resource-type, resource-expectation, profile, profile-expectation)
* type = {resource-type}
* extension.url = $fhir-capabilitystatement-expectation
* extension.valueCode = {resource-expectation}
* profile[+] = "http://hl7.org/fhir/StructureDefinition/{profile}"
* profile[=].extension.url = $fhir-capabilitystatement-expectation
* profile[=].extension.valueCode = {profile-expectation}

RuleSet: AddSupportedProfile(profile, expectation)
* supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/{profile}"
* supportedProfile[=].extension.url = $fhir-capabilitystatement-expectation
* supportedProfile[=].extension.valueCode = {expectation}

RuleSet: AddSearchParameter(expectation, name, parameter-id, type, documentation)
* searchParam[+].name = {name}
* searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/{parameter-id}"
* searchParam[=].type = {type}
* searchParam[=].documentation = {documentation}
* searchParam[=].extension.url = $fhir-capabilitystatement-expectation
* searchParam[=].extension.valueCode = {expectation}

RuleSet: AddMIISearchParameter(expectation, name, parameter-id, type, documentation)
* searchParam[+].name = {name}
* searchParam[=].definition = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/SearchParameter/{parameter-id}"
* searchParam[=].type = {type}
* searchParam[=].documentation = {documentation}
* searchParam[=].extension.url = $fhir-capabilitystatement-expectation
* searchParam[=].extension.valueCode = {expectation}

