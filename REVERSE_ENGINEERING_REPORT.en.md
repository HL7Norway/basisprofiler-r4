# REVERSE_ENGINEERING_REPORT — basisprofiler-r4

## A. General diagnosis

### Architecture identified
Repository of base FHIR R4 profiles for Norway (HL7 Norway / no-basis). It is a collection of static FHIR resources in JSON/XML format, without an application layer, without SUSHI, without automated build:

- `StructureDefinition/`: 28 FHIR R4 profiles (no-basis-Patient, no-basis-Organization, no-basis-Practitioner, no-basis-Medication, etc.)
- `CodeSystem/`: 4 code systems
- `SearchParameter/`: 1 search parameter
- `Examples/`: instance examples
- `NamingSystem/`: naming systems
- `Script/`: validation scripts (curl-commands.txt, kommandolinje-validering.txt)
- `Package-list.mfd`, `Packagelist.md`: package lists
- `Changelog-21.md`, `Changelog-22.md`: changelogs
- `README.md`: documentation in Norwegian

### Technologies and dependencies
- FHIR R4 (static JSON/XML resources)
- No runtime dependencies declared
- No `sushi-config.yaml` (not a SUSHI project)
- No Dockerfile, no CI workflow
- Recommended tools: FHIR Shorthand (FSH), FHIR validator

### Maintenance state
Last commit: several feature branches (Appointment, AuditEvent, Middlename, etc.). Upstream default branch: `master`. Repository: `https://github.com/HL7Norway/basisprofiler-r4`. Profiles are published on SIMPLIFIER.net (status=active) and are exact copies of resources in GitHub.

### Existing testing mechanisms
No automated tests found. No `test/` folder, no automated validation script.

### Investigation limitations
- No executable code to test (only static FHIR resources).
- REA 6.7.0 not operational in this environment; static analysis only.

## B. Problems found

| ID | Title | Severity | Status | Location |
|----|-------|----------|--------|----------|
| REA-basis-001 | No automated tests for FHIR profile validation | P3 | CONFIRMED | repo root |
| REA-basis-002 | No CI workflow configured | P3 | CONFIRMED | missing `.github/workflows` |
| REA-basis-003 | No sushi-config.yaml or build file | P3 | CONFIRMED | repo root |
| REA-basis-004 | Validation scripts are manual curl commands (not automated) | P3 | CONFIRMED | `Script/*.txt` |

### Details of confirmed problems

**REA-basis-001 (P3, CONFIRMED)**: No automated tests validate the 28 StructureDefinitions, 4 CodeSystems, and 1 SearchParameter against the FHIR R4 specification.

**REA-basis-002 (P3, CONFIRMED)**: No `.github/workflows` directory — no CI for build, validation, or PR verification.

**REA-basis-003 (P3, CONFIRMED)**: No `sushi-config.yaml` nor any build configuration file. Resources are maintained manually as static JSON/XML.

**REA-basis-004 (P3, CONFIRMED)**: `Script/curl-commands.txt` and `Script/kommandolinje-validering.txt` contain manual curl validation commands, not automated.

## C. Recurring problems
No recurring public issues found.

## D. Undocumented errors
All items in section B are problems not previously documented.

## E. Performance
Static FHIR resources; no runtime operations. No performance concerns.

## F. Technical improvements
- Add FHIR validation tests (REA-basis-001)
- Add CI workflow for FHIR resource validation (REA-basis-002)
- Add `sushi-config.yaml` for SUSHI-based management (REA-basis-003)
- Automate validation scripts (REA-basis-004)

## G. Execution plan
All independent and low risk.

## H. Expected outcome
Automatically validated FHIR profiles, CI for early problem detection, managed build.

**Tools used:** git, gh, PowerShell/terminal, static code inspection.  
**Limitation:** No executable code; only static resources.  
**Environment:** Windows, PowerShell 5.1, `C:\Users\User\audit-repos\basisprofiler-r4` (clone of upstream, branch `master`, commit HEAD).
