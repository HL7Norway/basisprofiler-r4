# no-basis-AuditEvent

## Introduction
This implementation guide describes the the minimum and recommended set of informasjon that should be logged according to [Norwegian Code of Conduct ("Normen")](https://www.ehelse.no/normen/documents-in-english) 6.1 chapter 5.4.4. The guide is based on the list of attributes defined by [Tillitsrammeverk](https://github.com/NorskHelsenett/Tillitsrammeverk/blob/main/specs/informasjons_og_datamodell.md#42-datamodell) used in data sharing scenarios between consumer and provider organizations. 

## Background
In a scenario where a healthcare organization (such as a hospital, GPs, etc.) needs to access patient health data from another healthcare organization or national service, both the consumer and service provider organizations are legally required to maintain proper audit logs for future analysis. 

These audit logs necessitate some contextual information that describes the patient contact at the consumer health care organization including details about the practitioner (agent), patient identification, organizational affiliation, and a component known as the ‘care relationship’ that explains why the practitioner accessed the patient’s data (e.g. Hospital contact, GP consultancy, etc.). Except the latter, contextual information is located in AuditEvent referenced components as [PractitionerRole](https://hl7.org/fhir/R4/practitionerrole.html), [Practitioner](https://hl7.org/fhir/R4/practitioner.html), [Patient](https://www.hl7.org/fhir/R4/patient.html), [Encounter](https://www.hl7.org/fhir/R4/encounter.html), [Organization](https://hl7.org/fhir/R4/organization.html) and [Location](https://hl7.org/fhir/R4/location.html).

Only a small portion of the contextual information is transferred to the service provider in the form of attributes in a security token described in [Nasjonalt tillitsrammeverk](https://github.com/NorskHelsenett/Tillitsrammeverk/blob/main/specs/informasjons_og_datamodell.md#42-datamodell), typically JWT or SAML. That means the referenced resources metioned above need to be constructed based solely on the contents of a security token at the service provide side, and hence will be partially populated compared to the consumer provider side. In such scenarios the referenced resources will typically appear as contained resources within an AuditEvent Resource. 

## Next step
Navigate to [no-basis-auditevent](StructureDefinition-no-basis-auditevent.html) profile.

## You can also download:

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on [GitHub](https://github.com/HL7Norway/AuditEvent)

