# no-basis v2.1

* Based on HL7 FHIR version 4.0.1*

## Version 2.1

Feature release to add no-basis-Procedure profile definition.

### Bugfixes

Date: 2021-11-01
version: 2.1.1
* `no-Basis-Procedure` Corrected oid for ICPC-2 code in element Procedure.code
* `no-basis-icpc-2` added NamingSystem for ICPC-2

### 2.1.0 Changelog

Date: 2021-10-27
* `no-Basis-Procedure` Added profile, constraints on code that explain how to use codes from code system that are common in Norway. Example is included.

## Version 2.0.17

Fix bugs for validation with official java validator. Remove all snapshots from definitons.
Fix errors in slicing: [Slicing discussion](https://chat.fhir.org/#narrow/stream/179166-implementers/topic/Slicing.20non-repeating.20elements.20to.20define.20a.20choice)
[Issue 55](https://github.com/HL7Norway/basisprofiler-r4/issues/55)

### Bugfixes 2.0.17

Date: 2021-10-04

* Fix wrong uri for Kommunenummer NamingSystem

### 2.0.17 Changelog

Date: 2021-07-02

* `no-basis-Datatypes.png` Updated diagram for IG documentation
* `no-basis-Individuals.png` Updated diagram for IG documentation

Date: 2021-06-17

* NamingSystems Added id value to namingsystem [Issue #76](https://github.com/HL7Norway/basisprofiler-r4/issues/76)
* Added missing version elements `2.0.17`

Date: 2021-06-15

* `package.json` Added working package definition
* `no-basis-AllergyIntolerance` Fixed wrong slice definition on non repeating element (1..1), slicing on code.coding element instead
* `no-basis-Location` Removed invalid constraint on partOf element (was Organization whitch is illegal)
* `no-basis-Practitioner` Practitioner.qualification moved slice from code (non-repeating) to qualification (0..*) to fix the slicing bug
* `no-basis-connection-type.valueset.xml` Updated to version number
* `no-basis-HealthcareService.StructureDefinition-profile.xml` Removed slicing, wrote constraint to check for correct providedBy.identifier.system value (ENH/RESH)
  * Validated constraint on providedBy invariant
  * Updated constraint to also check for existing identifier, if providedBy exists
* `no-basis-HealthcareService-example.xml` Added working example of no-basis-HealthcareService resource instance (JAVA validated)
* merged the current code in the `master` branch into the `Bugfix-validering` branch to continue the bugfix work based on current codebase

Date: 2020-10-17

* `no-basis-documentreference-type.valueset.xml` Added status in the ValueSet (required)
* `no-basis-connection-type.valueset.xml` Added HL7 connection types to this valueset so to replace errondous slicing of the connectionType element in Endpoint
* `no-basis-Endpoint.StructureDefinition-profile.xml` Wrong slice definition on non repeating element (1..1) Endpoint.connectionType|
* `no-basis-HealthcareService.StructureDefinition-profile.xml` Wrong slice definition on non repeating element (1..1)

## Version 2.0.16

Bugfix release to include municipalitycode extension in package.
2.0.15 package missing municipalitycoded extension [#74](https://github.com/HL7Norway/basisprofiler-r4/issues/42)

Date: 2021-04-16

* `no-basis-relatedperson-person-reference` removed double dot in filename

Date: 2021-04-09

* `no-basis-municipalitycode` Changed status to active to include the extension in Package
* `no-basis-Address` Updated version number

## Version 2.0.15

Date: 2021-04-07

* issue [#42](https://github.com/HL7Norway/basisprofiler-r4/issues/42)
* `no-basis-relatedperson-person-reference` Added extension to add person reference to the RelatedPerson.patient element
* `no-basis-RelatedPerson` Removed reference to no-basis-Person and Person from RelatedPerson.patient
* `no-basis-RelatedPerson-Ærlend-Sørgård-person-extension.xml` Added example to demonstrate the use of the new extension
* `no-basis-Organization` Added slices for 8624, issue [#69](https://github.com/HL7Norway/basisprofiler-r4/issues/69)

Date: 2021-01-15

* `no-basis-Organization` Added slices for 8628, issue [#69](https://github.com/HL7Norway/basisprofiler-r4/issues/69)

Date: 2021-01-12

* `no-basis-kommunenummer.namingsystem` Added oid value as possible uniqueId for kommunenummer
* `no-basis-Address` Updated the definition of district
* `no-basis-municipalitycode` Added extension for municipalitycode
* `no-basis-Address` Added extension municipalitycode in district
* `no-basis-Patient-Jannice-Søreng` Added coded value to district, validated against updated Patient/Address profile, OK

Date: 2021-01-11

* `no-basis-HumanName` Changed cardinality of given 0..*

Date: 2020-11-13

* `no-basis-DocumentReference` status set to active
* `no-basis-Composition` status set to active
* All StructureDefintions updated to FHIR version: 4.0.1

## Version 2.0.14

Date: 2020-09-22

* Added version information and made search parameter active
* Optional search parameter for no-basis-middlename and status set to active
* Clarification that extension `no-basis-person-citizenship` is meant for the Person resource
* Corrected two spelling errors in CodeSystem `no-basis-marital-status`. "Registrert partner" and "Enke eller enkemann"
* Files changed:
  * `no-basis-individual-middlename.SearchParameter.xml`
  * `no-basis-person-citizenship.structuredefinition-extension.xml`
  * `no-basis-marital-status.codestystem.xml`
  * `no-basis-marital-status.codestystem.xml`
  
## Version 2.0.13

Date: 2020-04-22

* Fixed a bug where the wrong OID's where used in the profiles.
* Updated OID's ENH and RSH used the wrong OID's
  * `urn:oid:2.16.578.1.12.4.1.2.101` changed to `urn:oid:2.16.578.1.12.4.1.4.101`
  * `urn:oid:2.16.578.1.12.4.1.2.102` changed to `urn:oid:2.16.578.1.12.4.1.4.102`
  * This is according to [OID-identifikatorserier-i-helse-og-omsorgstjenesten](https://ehelse.no/teknisk-dokumentasjon/oid-identifikatorserier-i-helse-og-omsorgstjenesten)
* Files changed:
  * `no-basis-HealthcareService.StructureDefinition-profile.xml`
  * `no-basis-Organization.structuredefinition-profile.xml`
  * `no-basis-Organization-example.xml`
