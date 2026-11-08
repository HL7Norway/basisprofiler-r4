# CORRECTIONS.md — basisprofiler-r4

Project: HL7Norway/basisprofiler-r4
Base branch analyzed: master
Destination fork: https://github.com/admeduardovieira/basisprofiler-r4

## Corrections proposed

| ID | Title | Severity | Status | Risk | Files involved |
|----|-------|----------|--------|------|----------------|
| REA-basis-001 | No automated tests for FHIR profile validation | P3 | PROPOSING | Medium | `test/` (new) |
| REA-basis-002 | No CI workflow configured | P3 | PROPOSING | Low | `.github/workflows/` (new) |
| REA-basis-003 | No sushi-config.yaml or build file | P3 | PROPOSING | Low | `sushi-config.yaml` (new) |
| REA-basis-004 | Validation scripts are manual curl commands | P3 | PROPOSING | Low | `Script/*.txt` |

## Details of proposed corrections

### REA-basis-001 — No automated tests
**Problem:** No tests validate FHIR profiles against R4 spec.
**Fix:** Add FHIR validation tests (e.g., using FHIR validator).
**Validation:** Run tests against all StructureDefinitions; confirm no regressions.

### REA-basis-002 — No CI workflow
**Problem:** No `.github/workflows` directory.
**Fix:** Add CI workflow to validate FHIR resources on push/PR.
**Validation:** Confirm workflow triggers and passes.

### REA-basis-003 — No sushi-config.yaml
**Problem:** No build configuration file.
**Fix:** Add sushi-config.yaml to manage profiles via SUSHI.
**Validation:** Confirm SUSHI can process the configuration.

### REA-basis-004 — Manual curl validation scripts
**Problem:** Validation scripts are manual curl commands.
**Fix:** Convert to automated validation scripts.
**Validation:** Run scripts; confirm they validate resources without manual intervention.

## Not implemented
None implemented in this execution; proposals for maintainers.

## Publication plan
- Fork: `admeduardovieira/basisprofiler-r4` (created).
- No code changes (only audit reports).
- Commit identity: `admeduardovieira <admeduardovieira@users.noreply.github.com>`.
- PRs to `HL7Norway/basisprofiler-r4` branch `master`.
