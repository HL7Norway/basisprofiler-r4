# Workflow

HL7 Norway proposed base profiles for Workflow resources in HL7 FHIR R4.

[![Appointment and ApppointmentResponse profiles and extensions](https://raw.githubusercontent.com/HL7Norway/basisprofiler-r4/master/Images/no-basis-workflow.png)](https://raw.githubusercontent.com/HL7Norway/basisprofiler-r4/master/Images/no-basis-workflow.png)  

Only attributes with actual profiling is included in the information model diagram as well as any optional extensions provided as a part of the no-basis package. The model should be forward compatible to Appointment in R5 as far as possible.  

## Short notice on relationship between no-basis Appointment and no-basis-Encounter

Appointment and Encounter have dependencies as they both describe different aspects of the administrative relationship between patient and health care organizations.  

[![Appointment og AppointmentResponse profiler](https://raw.githubusercontent.com/HL7Norway/basisprofiler-r4/master/Images/no-basis-Workflow-class.png)](https://raw.githubusercontent.com/HL7Norway/basisprofiler-r4/master/Images/no-basis-Workflow-class.png)

**Appointment** (no:timeavtale; npr:planlagt episode) – describes a planned meeting between a patient and healthcare personell.  

**Encounter** (no: kontakt, besøk, opphold, innleggelse, omsorgsepisode, poliklinisk konsultasjon etc) is defined as: “An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient”. An inpatient encounter (no:inneliggende) is an encounter that can consist of several sub-encounters – for example a radiology examination or a surgery. The national base profile have defined an extension in no-basis-Appointment to mirror this partOf-pattern in the encounter.  

The normal scenario is that the Appointment resource is used until the patient is registered as arrived. After arrival the Encounter resource is used to share information about the interaction. Due to the fact that the Encounter resource contains more clinical related information than Appointment, some EHRs may use Encounter with status planned to share information about the interaction also before the patient is registered as arrived.  

**Inspection** (no: tilsyn) are normally not registered as independent encounters in the EHR, but represents and interaction between patient and healthcare personell that is documented in an inspection note (no: tilsynsnotat). Local routines as each hospital can choose to register inspections as encounters, but in most cases such a practice will require too much manual registration in the EHR. An inspection can also be registered as a procedure.  

**EpisodeOfCare** (no: henvisningsperiode) can encompass several ambulatory and inpatient encounters across several organizations. The challenge with tracing such patient trajectory (no: pasientforløp) is that the episode of care will encompass several service requests (no: henvisninger) and there are no common identifier that can be used to trace the patient trajectory across these encounters. Helsedirektoratet has earlier pointed to the need for such an identifier (forløpsidentifikator).  
