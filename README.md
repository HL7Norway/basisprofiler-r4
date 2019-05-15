# Utvikling av HL7 FHIR basisprofiler for Norge - R4

## Arbeidsplan
# Utvikling av HL7 FHIR basisprofiler for Norge på FHIR R4 versjon
HL7 FHIR Base profiles for Norway

## Mål

### Løfte STU3-profilene til R4
Alt som nå blir ferdigstilt etter høring i basisprofiler-r3 (Patient, Practitioner, Organization, med mer) skal løftes til r4 når deler av R4 blir vedtatt (desember 2018). Hovedløftet skjer når verktøystøtte for R4 er på plass, som Forge og Simplifier (antatt april 2019).

Profilene skal være såkalte basisprofiler for Norge, som er minstekrav. Disse profilene kan brukes direkte, men vil ofte være gjenstand for videre profilering for spesifikke anvendelser og grensesnitt.
Se [prinsipper for basisprofiler i wiki'en](https://github.com/HL7Norway/best-practice/wiki/Prinsipper-for-basisprofiler).

## Ferdige profiler STU3

Følgende profiler er ferdige og venter på endelig godkjenning og endring av status fra "draft" til "final":
* no-basis-Patient
* no-basis-Organization
* no-basis-Practitioner
* Tilhørende typer og extensions, slik som Address, HumanName

## Publisering



## Høring 

Tilbakemeldinger kan skje, enten på epost (se kontaktpersoner under), eller ved å bli medlem av [prosjektet på GitHub](https://github.com/HL7Norway/basisprofiler-r4) og legge det inn som issues, eventuelt lage en egen branch med forslag til endringer. Det er mulig å legge inn issues uten å være medlem av git'en. 

## Profiler diskutert på workshop 5. februar 2019

* Person
* PractionerRole
* HealthCareService
* Location
* Endpoint
* RelatedPerson

Førsteutkast legger vi ut her i [branch emergingprofiles](https://github.com/HL7Norway/basisprofiler-r3/tree/emergingprofiles)

## Forrige workshop: Medication++

Workshop på Gardermoen 23. oktober 2018 konsentrerte seg om
* Medication
* MedicationStatement
* Substance
* AllergyIntolerance

Førsteutkast ligger i [branch emergingprofiles](https://github.com/HL7Norway/basisprofiler-r3/tree/emergingprofiles)

## Verktøy

Vi anbefaler alle å bruke [Forge](https://fire.ly/forge/) for profilutvikling. Forge er gratis.
Vi anbefaler også lage seg en gratis-konto på [Simplifier.net](https://simplifier.net/) for visualisering. 

## Wiki

Felles wiki finnes [her under best practice](https://github.com/HL7Norway/best-practice/wiki) der vi oppfordrer alle til å bidra. 

Det finnes en også en wiki på [git.sarepta.ehelse.no](https://git.sarepta.ehelse.no/utvikling/FHIR/wikis/home).

## Kontaktpersoner

[Thomas Tveit Rosenlund](mailto:thomas.tveit.rosenlund@ehelse.no)
<br/>Direktoratet for e-helse

[Espen Stranger Seland](mailto:Espen.Stranger.Seland@ehelse.no)
<br/>Teknisk styringskommité, HL7 Norge
<br/>Direktoratet for e-helse

## Prosjekt for R4

Prosjekt: https://github.com/HL7Norway/basisprofiler-r4/projects/1

