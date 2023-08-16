Profile: NoBasisAppointmentResponse
Parent: AppointmentResponse
Id: no-basis-AppointmentResponse
Title: "no-basis-AppointmentResponse"
Description: "Basisprofil for Norwegian AppointmentResponse information. Defined by HL7 Norway. Should be used as a basis for further profiling in use-cases where specific appointment respons information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to each use-case."
* ^version = "1.0.0"
* ^status = #draft
* obeys inv-1
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains NoBasisShortNotice named shortNotice 0..1
* extension[shortNotice] ^definition = "Patient can come on short notice."
* extension[shortNotice].value[x] ^definition = "Patient can come on short notice. Response is boolean"


Extension: NoBasisShortNotice
Id: no-basis-shortnotice
Title: "no-basis-shortnotice"
Description: "The basis extension defines a boolean concept that expresses the possibility to meet on short notice if the there are available appointment slots."
* ^status = #draft
* ^context.type = #element
* ^context.expression = "AppointmentResponse"
* . ..1
* value[x] only boolean
* value[x] ^short = "Patient can come on short notice."


Instance: PatientAppointmentResponseExample
InstanceOf: NoBasisAppointmentResponse
Description: "Example of Patient response to an appointment using no-basis profile. The profile is identical to the basis profile axept there is a extension that can be used for patient to signal if the patient can come on short notice to an appointment. The example is similar to http://hl7.org/fhir/R4/appointmentresponse-example.json.html with adition for the extension."
* appointment = Reference(Appointment/d6c523ec-b520-4221-a8d6-c1c58911ce7a) "MRI results discussion"
* actor = Reference(Patient/e70f0ba2-44d8-4f14-9c3a-ff4c6ead7473) "Peter James Chalmers"
* participantStatus = #accepted
* extension[shortNotice].valueBoolean = true
* actor.type = "Patient"


Instance: PatientExample
InstanceOf: Patient
Usage: #example
* id = "e70f0ba2-44d8-4f14-9c3a-ff4c6ead7473"
* name.use = #official
* name.family = "Chalmers"
* name.given = "Peter James"



Invariant: inv-1
Description: "The 'shortNotice' extension can only be used when the 'actor' is of type 'Patient'."
Expression: "extension.where(url = 'http://example.org/StructureDefinition/no-basis-shortnotice').value.exists() and actor.type.value = 'Patient'"
Severity: #error



Profile: NoBasisAppointment
Parent: Appointment
Id: no-basis-Appointment
Title: "no-basis-Appointment"
Description: "Base profile for Norwegian Appointment information. Defined by HL7 Norway. This profile identifies a set of minimum expectations for an Appointment resource when creating, searching and retrieving compositions by defining which coding system(s) can be present when using this profile. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case."
* ^version = "0.9.0"
* ^status = #draft
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    no-basis-virtual-service named virtualService 0..* MS and
    no-basis-group named group 0..1 MS and  
    no-basis-partof named partOf 0..1 MS
* appointmentType.coding ^slicing.discriminator.type = #value
* appointmentType.coding ^slicing.discriminator.path = "$this"
* appointmentType.coding ^slicing.rules = #open
* appointmentType.coding contains
    omsorgsNiva 0..1 and
    kontaktType 0..1 and
    innbygger 0..1
* appointmentType.coding[omsorgsNiva] from urn:oid:2.16.578.1.12.4.1.1.8406 
* appointmentType.coding[omsorgsNiva] ^short = "Volven 8406"
* appointmentType.coding[omsorgsNiva] ^definition = "Omsorgsnivå (OID=8406)."
* appointmentType.coding[omsorgsNiva] ^mustSupport = false
* appointmentType.coding[omsorgsNiva] ^binding.description = "Volven"
* appointmentType.coding[kontaktType] from urn:oid:2.16.578.1.12.4.1.1.8432 
* appointmentType.coding[kontaktType] ^short = "Volven 8432"
* appointmentType.coding[kontaktType] ^definition = "Kontakttype (OID=8432)"
* appointmentType.coding[kontaktType] ^mustSupport = false
* appointmentType.coding[kontaktType] ^binding.description = "Volven"
* appointmentType.coding[innbygger] from urn:oid:2.16.578.1.12.4.1.1.7617 
* appointmentType.coding[innbygger] ^short = "Volven 7617"
* appointmentType.coding[innbygger] ^definition = "Timetype innbyggerportal (OID=7617)"
* appointmentType.coding[innbygger] ^mustSupport = false
* appointmentType.coding[innbygger] ^binding.description = "Volven"
* appointmentType.coding ^short = "Recomended code systems for no-basis-Appointment."
* appointmentType.coding ^definition = "Recomended code systems for n-basis-Appointment. The reconmended code systems might not be suficient for defining appointment type and in an implemented profile - some other coding might be needed."



Extension: NoBasisPartOf
Id: no-basis-partof
Title: "no-basis-partof"
Description: "This basis extension mirrors the Encounter.partOF-attribute. The partOf-attribute enables booking of a set of related appointments with a set of sub-appointments being linked to the main appointment in the same way as encounters are being linked. A larger appointment of which this particular appointment is a component or step."
* ^version = "1.0.0"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Appointment"
* . ^short = "no-basis-partof"
* . ^definition = "This basis extension mirrors the Encounter.partOF-attribute. The partOf-attribute enables booking of a set of related appointments with a set of sub-appointments being linked to the main appointment in the same way as encounters are being linked. A larger appointment of which this particular appointment is a component or step."
* value[x] only Reference(no-basis-Appointment)
* value[x] ^short = "Appoinment partOf structure."
* value[x] ^definition = "A larger appointment of which this particular appointment is a component or step."


Extension: NoBasisGroup
Id: no-basis-group
Title: "no-basis-group"
Description: "The appointment is a group session."
* ^version = "1.0.0"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Appointment"
* . ..1
* . ^short = "no-basis-group"
* . ^definition = "The appointment is a group session."
* value[x] only boolean
* value[x] ^short = "The appointment is a group session."



Extension: NoBasisVirtualService
Id: no-basis-virtual-service
Title: "no-basis-Virtual-Service"
Description: "The VirtualService is based on VirtualServiceDetail structure from R5 and defines details of a virtual communication capability, such as a web conference call."
* ^version = "0.0.1"
* ^status = #draft
* . ^short = "Virtual Service "
* . ^definition = "The VirtualService structure defines details of a virtual communication capability, such as a web conference call."
* ^context.type = #element
* ^context.expression = "Appointment"
* extension contains
    channelType 0..1 and
    virtualAddress 0..1 and
    additionalInfo 0..* and
    maxParticipants 0..1 and
    sessionKey 0..1
* extension[channelType] ^short = "Channel Type"
* extension[channelType] ^definition = "The type of virtual service to connect to."
* extension[channelType].value[x] only Coding
* extension[channelType].value[x] from no-basis-virtual-service-type-vs (example)
* extension[channelType].value[x] ^short = "Valuset for virtual servie."
* extension[channelType].value[x] ^definition = "The valuesett inherits all codes from http://hl7.org/fhir/contact-point-system and http://hl7.org/fhir/virtual-service-type. Virtual-service-type is from R5. "
* extension[virtualAddress] ^short = "Contact address/number"
* extension[virtualAddress] ^definition = "Address or number needs to be used for a user to connect to the virtual service to join. "
* extension[virtualAddress].value[x] only string or url or ContactPoint
* extension[additionalInfo] ^short = "Address to see alternative connection details"
* extension[additionalInfo] ^definition = "Address to see alternative connection details. "
* extension[additionalInfo].value[x] only url
* extension[maxParticipants] ^short = "Maximum number of participants supported by the virtual service."
* extension[maxParticipants] ^definition = "Maximum number of participants supported by the virtual service. "
* extension[maxParticipants].value[x] only positiveInt
* extension[sessionKey] ^short = "Session Key required by the virtual service"
* extension[sessionKey] ^definition = "Session Key required by the virtual service. "
* extension[sessionKey].value[x] only string



ValueSet: NoBasisVirtualServiceTypeVS
Id: no-basis-virtual-service-type-vs
Title: "No Basis VirtualServiceType Value Set"
Description: "Example codes for possible virtual service connection types."
* ^status = #draft
* ^version = "0.1.0"
* include codes from system urn:oid:2.16.840.1.113883.4.642.4.1809 
* include codes from system http://hl7.org/fhir/contact-point-system 

Alias: $appointment-type = http://terminology.hl7.org/CodeSystem/v2-0276

Instance: AppointmentExample
InstanceOf: NoBasisAppointment
Usage: #example
* id = "d6c523ec-b520-4221-a8d6-c1c58911ce7a"
* status = #booked
* appointmentType.coding[0] = $appointment-type#CHECKUP
* appointmentType.coding[+].code = #Ordinær
* appointmentType.coding[=].system = "urn:oid:2.16.578.1.12.4.1.1.7617"
* description = "Discussion on the results of your recent MRI"
* start = "2023-08-10T09:00:00Z"
* end = "2023-08-10T11:00:00Z"
* comment = "Further expand on the results of the MRI and determine the next actions that may be appropriate."
* participant[0].actor = Reference(Patient/e70f0ba2-44d8-4f14-9c3a-ff4c6ead7473) "Peter James Chalmers"
* participant[=].required = #required
* participant[=].status = #accepted