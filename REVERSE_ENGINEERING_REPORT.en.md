# REVERSE_ENGINEERING_REPORT — basisprofiler-r4

## A. General diagnosis

### Architecture identified
FHIR R4 base profiles repository for Norway (HL7 Norway / no-basis). It is a collection of static FHIR resources in JSON/XML format, without application layer, without SUSHI, without automated build:

- `StructureDefinition/`: 28 FHIR R4 profiles (no-basis-Patient, no-basis-Organization, no-basis-Practitioner, no-basis-Medication, etc.)
- `CodeSystem/`: 4 code systems
- `SearchParameter/`: 1 search parameter
- `Examples/`: example instances
- `NamingSystem/`: naming systems
- `Script/`: validation scripts (curl-commands.txt, kommandolinje-validering.txt)
- `Package-list.mfd`, `Packagelist.md`: package lists
- `Changelog-21.md`, `Changelog-22.md`: changelogs
- `README.md`: documentation in Norwegian

### Technologies and dependencies
- FHIR R4 (static JSON/XML resources)
- No runtime dependencies declared
- No sushi-config.yaml (not a SUSHI project — static resources maintained manually)
- No Dockerfile, no CI workflow
- Recommended tools: FHIR Shorthand (FSH), FHIR validator

### Maintenance status
Last commit: several feature branches (Appointment, AuditEvent, Middlename, etc.). Default branch upstream: `master`. Repository: `https://github.com/HL7Norway/basisprofiler-r4`. Profiles are published on SIMPLIFIER.net (status=active) and are exact copy of resources in GitHub.

### Existing test mechanisms
No automated tests found. No `test/` folder, no automated validation script.

### Investigation limitations
- No executable code to test (only static FHIR resources).
- REA 6.7.0 not operational in this environment; static analysis only.

## B. Problems found

| ID | Title | Severity | Status | Location |
|----|-------|----------|--------|----------|
| REA-basis-001 | No automated tests for FHIR profile validation | P3 | CONFIRMED | repo root |
| REA-basis-002 | No CI workflow configured | P3 | CONFIRMED | absence of `.github/workflows` |

### Confirmed problems details

**REA-basis-001 (P3, CONFIRMED):** No automated tests to validate the 28 StructureDefinitions, 4 CodeSystems and 1 SearchParameter against FHIR R4 spec.

**REA-basis-002 (P3, CONFIRMED):** No `.github/workflows` folder — no CI for build, validation or PR verification.

## C. Recurring problems
No recurring public issues found.

## D. Undocumented errors
All items in section B are previously undocumented problems.

## E. Performance
Static FHIR resources; no runtime operations. No performance concerns.

## F. Technical improvements (optional, not defects)

The items below are improvement opportunities, not confirmed defects, because the repository is deliberately a set of static FHIR resources:

- **REA-basis-003 (observation):** Absence of `sushi-config.yaml` is not a defect — the repository does not use SUSHI. Resources are maintained as static JSON/XML by architectural decision. If the project migrates to SUSHI in the future, a `sushi-config.yaml` would be needed.
- **REA-basis-004 (observation):** Manual validation scripts via curl (`Script/curl-commands.txt`, `Script/kommandolinje-validering.txt`) are manual but functional for a small project. Automation is optional improvement, not a defect fix.

## G. Execution plan
- REA-basis-001 and REA-basis-002 are independent and low risk.
- REA-basis-003 and REA-basis-004 are optional observations, no immediate action required.

## H. Expected result
FHIR profiles validated automatically, CI for early problem detection.

**Tools used:** git, gh, PowerShell/terminal, static inspection.  
**Limitation:** No executable code; only static resources.  
**Environment:** Windows, PowerShell 5.1, `C:\Users\User\audit-repos\basisprofiler-r4` (clone of upstream, branch `master`, commit HEAD).
