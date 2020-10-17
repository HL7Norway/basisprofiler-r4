# Bugfixes no-basis-R4 2.0.x

Bugfix-validering branch
Fix bugs for validation with official java validator. Remove all snapshots from definitons.
Fix errors in slicing: https://chat.fhir.org/#narrow/stream/179166-implementers/topic/Slicing.20non-repeating.20elements.20to.20define.20a.20choice
|Version|2.0.xx|
|-
|Date|xxx|
|All snapshots|Removed all snapshots|
|no-basis-documentreference-type.valueset.xml|Added status in the ValueSet (required)|
|no-basis-connection-type.valueset.xml|Added HL7 connection types to this valueset so to replace errondous slicing of the connectionType element in Endpoint|
|no-basis-Endpoint.StructureDefinition-profile.xml|Wrong slice definition on non repeating element (1..1) Endpoint.connectionType|
|no-basis-HealthcareService.StructureDefinition-profile.xml|Wrong slice definition on non repeating element (1..1)|

|Version|2.0.14|
|-
|Date|2020-09-22|
|Changelog|Added version information and made search parameter active|
|no-basis-individual-middlename.SearchParameter.xml|version 2.0.14 status = active. Include optional search parameter for no-basis-middlename with status active in the package. Updated search parameter to run error free on the Vonk server.|
|no-basis-person-citizenship.structuredefinition-extension|Documentation changes to clarify that this extension is for the Person resource|
|no-basis-marital-status.codestystem.xml|Corrected two spelling errors in Display text "Registrert partner" and "Enke eller enkemann"|

|Version|2.0.13|
|-
|Date|2020-04-22|
|Changelog|Fixed a bug where the wrong OID's where used in the profiles. Updated OID's ENH and RSH used the wrong OID's (urn:oid:2.16.578.1.12.4.1.2.101 and urn:oid:2.16.578.1.12.4.1.2.102) Should be 2.16.578.1.12.4.1.4.101 and 2.16.578.1.12.4.1.4.102 according to <https://ehelse.no/teknisk-dokumentasjon/oid-identifikatorserier-i-helse-og-omsorgstjenesten>|
|Changed file|no-basis-HealthcareService.StructureDefinition-profile.xml|
|Changed file|no-basis-Organization.structuredefinition-profile.xml|
|Changed file|no-basis-Organization-example.xml|
