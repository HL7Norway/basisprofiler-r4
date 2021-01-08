# Bugfixes no-basis-R4 2.0.x

### Version 2.0.15
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