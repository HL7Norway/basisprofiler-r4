# CORRECTIONS.md — basisprofiler-r4

Project: HL7Norway/basisprofiler-r4
Base branch analyzed: master
Destination fork: https://github.com/admeduardovieira/basisprofiler-r4

## Corrections proposed

| ID | Title | Severity | Status | Risk | Files involved |
|----|-------|----------|--------|------|----------------|
| REA-basis-001 | No automated tests for FHIR profile validation | P3 | PROPOSING | Medium | `test/` (new) |
| REA-basis-002 | No CI workflow configured | P3 | PROPOSING | Low | `.github/workflows/` (new) |

## Observations (not defects)

| ID | Observation | Type | Rationale |
|----|-------------|------|-----------|
| REA-basis-003 | No sushi-config.yaml | Observation | Repository is deliberately static FHIR resources (JSON/XML), not a SUSHI project. Absence of sushi-config.yaml is an architectural choice, not a defect. |
| REA-basis-004 | Manual curl validation scripts | Observation | Manual validation scripts are functional for a small project. Automation is optional improvement, not a defect fix. |

## Details of proposed corrections

### REA-basis-001 — No automated tests
**Problem:** No tests validate FHIR profiles against R4 spec.
**Fix:** Add FHIR validation tests (e.g., using FHIR validator).
**Validation:** Run tests against all StructureDefinitions; confirm no regressions.

### REA-basis-002 — No CI workflow
**Problem:** No `.github/workflows` directory.
**Fix:** Add CI workflow to validate FHIR resources on push/PR.
**Validation:** Confirm workflow triggers and passes.

## Not implemented
None implemented in this execution; proposals for maintainers.

## Publication plan
- Fork: `admeduardovieira/basisprofiler-r4` (created).
- No code changes (only audit reports).
- Commit identity: `admeduardovieira <admeduardovieira@users.noreply.github.com>`.
- PRs to `HL7Norway/basisprofiler-r4` branch `master`.
