Instance: mii-cps-patho-capability-statement
InstanceOf: CapabilityStatement
Usage: #definition
* version = "0.9.0"
* status = #draft
* name = "MII_CpS_Patho_Capability_Statement"
* title = "MII CpS Patho Capability Statement"
// * url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/CapabilityStatement/metadata"
* description = "The CapabilityStatement describes all mandatory interactions for a system to be conformant to the Pathology Module of the Medical Informatics Initiative"
* experimental = false
* date = "2022-07-18"
* publisher = "Medizininformatik Initiative"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.medizininformatik-initiative.de"
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #xml
* format[+] = #json
* rest[+].mode = #server
//-------------------
// Specimen
//-------------------
* rest[=].resource[+]
  * insert InitResource(#Specimen, #SHALL, Specimen, #SHALL)
  * insert AddSupportedProfile(mii-pr-patho-specimen, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
  // CORE
  * insert AddSearchParameter(#SHALL, "_id", Resource-id, #token, "Logical id of this artifact")
  * insert AddSearchParameter(#SHALL, "_lastUpdated", Resource-lastUpdated, #date, "When the resource version last changed")
  * insert AddSearchParameter(#SHALL, "_profile", Resource-profile, #uri, "Profiles this resource claims to conform to")
  // * insert AddSearchParameter(#SHALL, "text", Resource-text, #string, "Search on the narrative of the resource")
  * insert AddSearchParameter(#SHALL, "identifier", Specimen-identifier, #token, "The unique identifier associated with the specimen")
  * insert AddSearchParameter(#SHALL, "accession", Specimen-accession, #token, "The accession number associated with the specimen")
  * insert AddSearchParameter(#SHALL, "status", Specimen-status, #token, "available | unavailable | unsatisfactory | entered-in-error")
  * insert AddSearchParameter(#SHALL, "type", Specimen-type, #token, "The specimen type")
  * insert AddSearchParameter(#SHALL, "subject", Specimen-subject, #reference, "The subject of the specimen")
  * insert AddSearchParameter(#SHALL, "parent", Specimen-parent, #reference, "The parent of the specimen")
  * insert AddSearchParameter(#SHALL, "collected", Specimen-collected, #date, "The date the specimen was collected")
  * insert AddSearchParameter(#SHALL, "collector", Specimen-collector, #reference, "Who collected the specimen")
  * insert AddSearchParameter(#SHALL, "bodysite", Specimen-bodysite, #token, "The code for the body site from where the specimen originated")
  // * insert AddSearchParameter(#SHALL, "container-id", Specimen-container-id, #token, "The unique identifier associated with the specimen container")
  * insert AddSearchParameter(#SHALL, "container", Specimen-container, #token, "The kind of specimen container")
  * insert AddSearchParameter(#SHALL, "patient", Specimen-patient, #reference, "The patient the specimen comes from")
  // CUSTOM
  * insert AddMIISearchParameter(#SHALL, "request", mii-sp-patho-request, #reference, "SearchParameter for Specimen.request")
  * insert AddMIISearchParameter(#SHALL, "collection-method", mii-sp-patho-collection-method, #token, "SearchParameter for Specimen.collection.method")
  * insert AddMIISearchParameter(#SHALL, "collection-body-site", mii-sp-patho-collection-body-site, #token, "SearchParameter for Specimen.collection.bodySite")
  * insert AddMIISearchParameter(#SHALL, "processing-procedure", mii-sp-patho-processing-procedure, #token, "SearchParameter for Specimen.processing.procedure")
  * insert AddMIISearchParameter(#SHALL, "processing-additive", mii-sp-patho-processing-additive, #reference, "SearchParameter for Specimen.processing.additive")
  * insert AddMIISearchParameter(#SHALL, "processing-date", mii-sp-patho-processing-date, #date, "SearchParameter for Specimen.processing.time")
  * insert AddMIISearchParameter(#SHALL, "container-additive", mii-sp-patho-container-additive, #reference, "SearchParameter for Specimen.container.additive")
//-------------------
// Observation
//-------------------
* rest[=].resource[+]
  * insert InitResource(#Observation, #SHALL, Observation, #SHALL)
  // * insert AddSupportedProfile(mii-pr-patho-base-observation, #SHALL)
  * insert AddSupportedProfile(mii-pr-patho-intraoperative-grouper, #SHALL)
  * insert AddSupportedProfile(mii-pr-patho-macroscopic-grouper, #SHALL)
  * insert AddSupportedProfile(mii-pr-patho-microscopic-grouper, #SHALL)
  * insert AddSupportedProfile(mii-pr-patho-finding, #SHALL)
  * insert AddSupportedProfile(mii-pr-patho-diagnostic-conclusion-grouper, #SHALL)
  // * insert AddSupportedProfile(mii-pr-patho-section-grouper, #SHALL)
  * insert AddSupportedProfile(mii-pr-patho-additional-specified-grouper, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
  // CORE
  * insert AddSearchParameter(#SHALL, "_id", Resource-id, #token, "Logical id of this artifact")
  * insert AddSearchParameter(#SHALL, "_lastUpdated", Resource-lastUpdated, #date, "When the resource version last changed")
  * insert AddSearchParameter(#SHALL, "_profile", Resource-profile, #uri, "Profiles this resource claims to conform to")
  // * insert AddSearchParameter(#SHALL, "text", Resource-text, #string, "Search on the narrative of the resource")
  * insert AddSearchParameter(#SHALL, "based-on", Observation-based-on, #reference, "Reference to the service request")
  * insert AddSearchParameter(#SHALL, "category", Observation-category, #token, "The classification of the type of observation")
  * insert AddSearchParameter(#SHALL, "code", clinical-code, #token, "The code of the observation type")
  * insert AddSearchParameter(#SHALL, "code-value-concept", Observation-code-value-concept, #composite, "Code and coded value parameter pair")
  * insert AddSearchParameter(#SHALL, "code-value-date", Observation-code-value-date, #composite, "Code and date/time value parameter pair")
  * insert AddSearchParameter(#SHALL, "code-value-quantity", Observation-code-value-quantity, #composite, "Code and quantity value parameter pair")
  * insert AddSearchParameter(#SHALL, "code-value-string", Observation-code-value-string, #composite, "Code and string value parameter pair") 
  * insert AddSearchParameter(#SHALL, "combo-code", Observation-combo-code, #token, "The code of the observation type or component type") 
  * insert AddSearchParameter(#SHALL, "combo-code-value-concept", Observation-combo-code-value-concept, #composite, "Code and coded value parameter pair\, including in components") 
  * insert AddSearchParameter(#SHALL, "combo-code-value-quantity", Observation-combo-code-value-quantity, #composite, "Code and quantity value parameter pair\, including in components") 
  * insert AddSearchParameter(#SHALL, "combo-data-absent-reason", Observation-combo-data-absent-reason, #token, "The reason why the expected value in the element Observation.value[x] or Observation.component.value[x] is missing") 
  * insert AddSearchParameter(#SHALL, "combo-value-concept", Observation-combo-value-concept, #token, "The value or component value of the observation\, if the value is a CodeableConcept") 
  * insert AddSearchParameter(#SHALL, "combo-value-quantity", Observation-combo-value-quantity, #quantity, "The value or component value of the observation\, if the value is a Quantity\, or a SampledData (just search on the bounds of the values in sampled data\)") 
  * insert AddSearchParameter(#SHALL, "component-code", Observation-component-code, #token, "The component code of the observation type") 
  * insert AddSearchParameter(#SHALL, "component-code-value-concept", Observation-component-code-value-concept, #composite, "Component code and component coded value parameter pair") 
  * insert AddSearchParameter(#SHALL, "component-code-value-quantity", Observation-component-code-value-quantity, #composite, "Component code and component quantity value parameter pair") 
  * insert AddSearchParameter(#SHALL, "component-data-absent-reason", Observation-data-absent-reason, #token, "The reason why the expected value in the element Observation.component.value[x] is missing") 
  * insert AddSearchParameter(#SHALL, "component-value-concept", Observation-component-value-concept, #token, "The value of the component observation\, if the value is a CodeableConcept") 
  * insert AddSearchParameter(#SHALL, "component-value-quantity", Observation-component-value-quantity, #quantity, "The value of the component observation\, if the value is a Quantity\, or a SampledData (just search on the bounds of the values in sampled data\)") 
  * insert AddSearchParameter(#SHALL, "data-absent-reason", Observation-data-absent-reason, #token, "The reason why the expected value in the element Observation.value[x] is missing") 
  * insert AddSearchParameter(#SHALL, "date", clinical-date, #date, "Obtained datetime. If the obtained element is a period\, a date that falls in the period")
  * insert AddSearchParameter(#SHALL, "derived-from", Observation-derived-from, #reference, "Related measurements the observation is made from")
  //* insert AddSearchParameter(#SHALL, "device", Observation-device, #reference, "The Device that generated the observation data")
  * insert AddSearchParameter(#SHALL, "encounter", clinical-encounter, #reference, "Encounter related to the observation")
  //* insert AddSearchParameter(#SHALL, "focus", Observation-focus, #reference, "The focus of an observation when the focus is not the patient of record")
  * insert AddSearchParameter(#SHALL, "has-member", Observation-has-member, #reference, "	
Related resource that belongs to the Observation group")
  * insert AddSearchParameter(#SHALL, "identifier", clinical-identifier, #token, "The unique id for a particular observation")
  * insert AddSearchParameter(#SHALL, "method", Observation-method, #token, "The method used for the observation")
  //* insert AddSearchParameter(#SHALL, "part-of", Observation-part-of, #reference, "Part of referenced event")
  * insert AddSearchParameter(#SHALL, "patient", Observation-subject, #reference, "The subject that the observation is about (if patient\)")
  * insert AddSearchParameter(#SHALL, "performer", Observation-performer, #reference, "Who performed the observation")
  * insert AddSearchParameter(#SHALL, "specimen", Observation-specimen, #reference, "Specimen used for this observation")
  * insert AddSearchParameter(#SHALL, "status", Observation-status, #token, "The status of the observation")
  * insert AddSearchParameter(#SHALL, "subject", Observation-subject, #reference, "The subject that the observation is about")
  * insert AddSearchParameter(#SHALL, "value-concept", Observation-value-concept, #token, "The value of the observation\, if the value is a CodeableConcept")
  * insert AddSearchParameter(#SHALL, "value-date", Observation-value-date, #date, "The value of the observation\, if the value is a date or period of time")
  * insert AddSearchParameter(#SHALL, "value-quantity", Observation-value-quantity, #quantity, "The value of the observation\, if the value is a Quantity\, or a SampledData (just search on the bounds of the values in sampled data\)")
  * insert AddSearchParameter(#SHALL, "value-string", Observation-value-string, #string, "The value of the observation\, if the value is a string\, and also searches in CodeableConcept.text")  
  // CUSTOM
  * insert AddMIISearchParameter(#SHALL, "body-site", mii-sp-patho-body-site, #token, "SearchParameter for Observation.bodySite")
  * insert AddMIISearchParameter(#SHALL, "value-ratio", mii-sp-patho-value-ratio, #quantity, "SearchParameter for Observation.valueRatio")
//-------------------
// ServiceRequest
//-------------------
* rest[=].resource[+]
  * insert InitResource(#ServiceRequest, #SHALL, ServiceRequest, #SHALL)
  * insert AddSupportedProfile(mii-pr-patho-service-request, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
  // CORE
  * insert AddSearchParameter(#SHALL, "_id", Resource-id, #token, "Logical id of this artifact")
  * insert AddSearchParameter(#SHALL, "_lastUpdated", Resource-lastUpdated, #date, "When the resource version last changed")
  * insert AddSearchParameter(#SHALL, "_profile", Resource-profile, #uri, "Profiles this resource claims to conform to")
  // * insert AddSearchParameter(#SHALL, "text", Resource-text, #string, "Search on the narrative of the resource")
  * insert AddSearchParameter(#SHALL, "authored", ServiceRequest-authored, #date, "Date request signed")
  //* insert AddSearchParameter(#SHALL, "based-on", ServiceRequest-based-on, #reference, "What request fulfills")
  //* insert AddSearchParameter(#SHALL, "body-site", ServiceRequest-body-site, #token, "Where procedure is going to be done")
  * insert AddSearchParameter(#SHALL, "category", ServiceRequest-category, #token, "Classification of service")
  * insert AddSearchParameter(#SHALL, "code", clinical-code, #token, "What is being requested/ordered")
  * insert AddSearchParameter(#SHALL, "encounter", clinical-encounter, #reference, "An encounter in which this request is made")
  * insert AddSearchParameter(#SHALL, "identifier", clinical-identifier, #token, "Identifiers assigned to this order")
  //* insert AddSearchParameter(#SHALL, "instantiates-canonical", ServiceRequest-instantiates-canonical, #reference, "Instantiates FHIR protocol or definition")
  //* insert AddSearchParameter(#SHALL, "instantiates-uri", ServiceRequest-instantiates-uri, #uri, "Instantiates external protocol or definition")
  * insert AddSearchParameter(#SHALL, "intent", ServiceRequest-intent, #token, "proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option")
  //* insert AddSearchParameter(#SHALL, "occurrence", ServiceRequest-occurrence, #date, "When service should occur")
  * insert AddSearchParameter(#SHALL, "patient", clinical-patient, #reference, "Search by subject - a patient")
  * insert AddSearchParameter(#SHALL, "performer", ServiceRequest-performer, #reference, "Requested performer")
  // * insert AddSearchParameter(#SHALL, "performer-type", ServiceRequest-performer-type, #token, "Performer role")
  //* insert AddSearchParameter(#SHALL, "priority", ServiceRequest-priority, #token, "routine | urgent | asap | stat")
  //* insert AddSearchParameter(#SHALL, "replaces", ServiceRequest-replaces, #reference, "What request replaces")
  * insert AddSearchParameter(#SHALL, "requester", ServiceRequest-requester, #reference, "Who/what is requesting service")
  * insert AddSearchParameter(#SHALL, "requisition", ServiceRequest-requisition, #token, "Composite Request ID")
  * insert AddSearchParameter(#SHALL, "specimen", ServiceRequest-specimen, #reference, "Specimen to be tested")
  * insert AddSearchParameter(#SHALL, "status", ServiceRequest-status, #token, "draft | active | on-hold | revoked | completed | entered-in-error | unknown")
  * insert AddSearchParameter(#SHALL, "subject", ServiceRequest-subject, #reference, "Search by subject")
  // CUSTOM
  * insert AddMIISearchParameter(#SHALL, "reason-code", mii-sp-patho-reason-code, #token, "SearchParameter for ServiceRequest.reasonCode")
  * insert AddMIISearchParameter(#SHALL, "supporting-info", mii-sp-patho-supporting-info, #reference, "SearchParameter for ServiceRequest.supportingInfo")
//-------------------
// DiagnosticReport
//-------------------
* rest[=].resource[+]
  * insert InitResource(#DiagnosticReport, #SHALL, DiagnosticReport, #SHALL)
  * insert AddSupportedProfile(mii-pr-patho-report, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
  // CORE
  * insert AddSearchParameter(#SHALL, "_id", Resource-id, #token, "Logical id of this artifact")
  * insert AddSearchParameter(#SHALL, "_lastUpdated", Resource-lastUpdated, #date, "When the resource version last changed")
  * insert AddSearchParameter(#SHALL, "_profile", Resource-profile, #uri, "Profiles this resource claims to conform to")
  // * insert AddSearchParameter(#SHALL, "text", Resource-text, #string, "Search on the narrative of the resource")
  * insert AddSearchParameter(#SHALL, "based-on", DiagnosticReport-based-on, #reference, "Reference to the service request")
  * insert AddSearchParameter(#SHALL, "category", DiagnosticReport-category, #token, "Which diagnostic discipline/department created the report")
  * insert AddSearchParameter(#SHALL, "code", clinical-code, #token, "The code for the report\, as opposed to codes for the atomic results\, which are the names on the observation resource referred to from the result")
  * insert AddSearchParameter(#SHALL, "conclusion", DiagnosticReport-conclusion, #token, "A coded conclusion (interpretation/impression\) on the report")
  * insert AddSearchParameter(#SHALL, "date", clinical-date, #date, "The clinically relevant time of the report")
  * insert AddSearchParameter(#SHALL, "encounter", clinical-encounter, #reference, "The Encounter when the order was made")
  * insert AddSearchParameter(#SHALL, "identifier", clinical-identifier, #token, "An identifier for the report")
  * insert AddSearchParameter(#SHALL, "issued", DiagnosticReport-issued, #date, "When the report was issued")
  * insert AddSearchParameter(#SHALL, "media", DiagnosticReport-media, #reference, "A reference to the image source")
  * insert AddSearchParameter(#SHALL, "patient", clinical-patient, #reference, "The subject of the report if a patient")
  * insert AddSearchParameter(#SHALL, "performer", DiagnosticReport-performer, #reference, "Who is responsible for the report")
  * insert AddSearchParameter(#SHALL, "result", DiagnosticReport-result, #reference, "Link to an atomic result (observation resource\)")
  //* insert AddSearchParameter(#SHALL, "results-interpreter", DiagnosticReport-results-interpreter, #reference, "Who was the source of the report")
  * insert AddSearchParameter(#SHALL, "specimen", DiagnosticReport-specimen, #reference, "The specimen details")
  * insert AddSearchParameter(#SHALL, "status", DiagnosticReport-status, #token, "The status of the report")
  * insert AddSearchParameter(#SHALL, "subject", DiagnosticReport-subject, #reference, "The subject of the report")
  // CUSTOM
  * insert AddMIISearchParameter(#SHALL, "imaging-study", mii-sp-patho-imaging-study, #reference, "SearchParameter for DiagnosticReport.imagingStudy")
//-------------------
// Composition
//-------------------
* rest[=].resource[+]
  * insert InitResource(#Composition, #SHALL, Composition, #SHALL)
  * insert AddSupportedProfile(mii-pr-patho-composition, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
  // CORE
  * insert AddSearchParameter(#SHALL, "_id", Resource-id, #token, "Logical id of this artifact")
  * insert AddSearchParameter(#SHALL, "_lastUpdated", Resource-lastUpdated, #date, "When the resource version last changed")
  * insert AddSearchParameter(#SHALL, "_profile", Resource-profile, #uri, "Profiles this resource claims to conform to")
  // * insert AddSearchParameter(#SHALL, "text", Resource-text, #string, "Search on the narrative of the resource")
  * insert AddSearchParameter(#SHALL, "attester", Composition-attester, #reference, "Who attested the composition")
  * insert AddSearchParameter(#SHALL, "author", Composition-author, #reference, "Who and/or what authored the composition")
  * insert AddSearchParameter(#SHALL, "category", Composition-category, #token, "Categorization of Composition")
  //* insert AddSearchParameter(#SHALL, "confidentiality", Composition-confidentiality, #token, "As defined by affinity domain")
  * insert AddSearchParameter(#SHALL, "context", Composition-context, #token, "Code(s\) that apply to the event being documented")
  * insert AddSearchParameter(#SHALL, "date", clinical-date, #date, "Composition editing time")
  * insert AddSearchParameter(#SHALL, "encounter", clinical-encounter, #reference, "Context of the Composition")
  * insert AddSearchParameter(#SHALL, "entry", Composition-entry, #reference, "A reference to data that supports this section")
  * insert AddSearchParameter(#SHALL, "identifier", clinical-identifier, #token, "Version-independent identifier for the Composition")
  * insert AddSearchParameter(#SHALL, "patient", clinical-patient, #reference, "Who and/or what the composition is about")
  * insert AddSearchParameter(#SHALL, "period", Composition-period, #date, "The period covered by the documentation")
  // * insert AddSearchParameter(#SHALL, "related-id", Composition-related-id, #token, "Target of the relationship")
  * insert AddSearchParameter(#SHALL, "related-ref", Composition-related-ref, #reference, "Target of the relationship")
  * insert AddSearchParameter(#SHALL, "section", Composition-section, #token, "Classification of section (recommended\)")
  * insert AddSearchParameter(#SHALL, "status", Composition-status, #token, "preliminary | final | amended | entered-in-error")
  * insert AddSearchParameter(#SHALL, "subject", Composition-subject, #reference, "Who and/or what the composition is about")
  * insert AddSearchParameter(#SHALL, "title", Composition-title, #string, "Human Readable name/title")
  * insert AddSearchParameter(#SHALL, "type", clinical-type, #token, "Kind of composition (LOINC if possible\)")
  // CUSTOM
  * insert AddMIISearchParameter(#SHALL, "attester-mode", mii-sp-patho-attester-mode, #token, "SearchParameter for Composition.attester.mode")
  * insert AddMIISearchParameter(#SHALL, "custodian", mii-sp-patho-custodian, #reference, "SearchParameter for Composition.custodian")
  * insert AddMIISearchParameter(#SHALL, "relates-to-code", mii-sp-patho-relates-to-code, #token, "SearchParameter for Composition.relatesTo.code")
//-------------------
// Media
//-------------------
* rest[=].resource[+]
  * insert InitResource(#Media, #SHALL, Media, #SHALL)
  * insert AddSupportedProfile(mii-pr-patho-attached-image, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
  // CORE
  * insert AddSearchParameter(#SHALL, "_id", Resource-id, #token, "Logical id of this artifact")
  * insert AddSearchParameter(#SHALL, "_lastUpdated", Resource-lastUpdated, #date, "When the resource version last changed")
  * insert AddSearchParameter(#SHALL, "_profile", Resource-profile, #uri, "Profiles this resource claims to conform to")
  // * insert AddSearchParameter(#SHALL, "text", Resource-text, #string, "Search on the narrative of the resource")
  //* insert AddSearchParameter(#SHALL, "based-on", Media-based-on, #reference, "Procedure that caused this media to be created")
  * insert AddSearchParameter(#SHALL, "created", Media-created, #date, "When Media was collected")
  //* insert AddSearchParameter(#SHALL, "device", Media-device, #reference, "Observing Device")
  //* insert AddSearchParameter(#SHALL, "encounter", Media-encounter, #reference, "Encounter associated with media")
  //* insert AddSearchParameter(#SHALL, "identifier", Media-identifier, #token, "Identifier(s\) for the image")
  //* insert AddSearchParameter(#SHALL, "modality", Media-modality, #token, "The type of acquisition equipment/process")
  //* insert AddSearchParameter(#SHALL, "operator", Media-operator, #reference, "The person who generated the image")
  // * insert AddSearchParameter(#SHALL, "patient", Media-patient, #reference, "Who/What this Media is a record of")
  //* insert AddSearchParameter(#SHALL, "site", Media-site, #token, "Observed body part")
  * insert AddSearchParameter(#SHALL, "status", Media-status, #token, "preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown")
  * insert AddSearchParameter(#SHALL, "subject", Media-subject, #reference, "Who/What this Media is a record of")
  * insert AddSearchParameter(#SHALL, "type", Media-type, #token, "Classification of media as image\, video\, or audio")
  //* insert AddSearchParameter(#SHALL, "view", Media-view, #token, "Imaging view\, e.g. Lateral or Antero-posterior")
  // CUSTOM
  * insert AddMIISearchParameter(#SHALL, "part-of", mii-sp-patho-part-of, #reference, "SearchParameter for Media.partOf")
  