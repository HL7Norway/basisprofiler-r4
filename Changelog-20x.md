# Bugfixes no-basis-R4 2.0.x

## Version 2.0 changes

### Version 2.0.16

Bugfix release to include municipalitycode extension in package.
2.0.15 pakke mangler municipalitycoded extension [#74](https://github.com/HL7Norway/basisprofiler-r4/issues/42)

Date: 2021-04-16

* `no-basis-relatedperson-person-reference` removed double dot in filename

Date: 2021-04-09

* `no-basis-municipalitycode` Changed status to active to include the extension in Package
* `no-basis-Address` Updated version number

### Version 2.0.15

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

### Version 2.0.14

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
  
### Version 2.0.13

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
