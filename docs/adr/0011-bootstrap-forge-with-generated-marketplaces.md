# ADR-0011: Bootstrap with Forge and generated marketplace outputs

- **Status:** Superseded by ADR-0012
- **Date:** 2026-07-19
- **Decision owners:** Draigara maintainers
- **Repository:** `draigara-openapm`

## Context

Microsoft APM 0.26 authors marketplaces in the `marketplace:` block of `apm.yml` and generates compatible marketplace artifacts. Forge needs a real local catalogue for integration, but placeholder public packages would create misleading support obligations.

## Decision

Use `apm.yml` as the marketplace source of truth. Generate and commit the Claude/Copilot-compatible and Codex marketplace outputs. The first production entry is `draigara-forge@draigara-openapm`; dependency-composition packages remain local test fixtures until their charters pass.

Production entries use immutable released versions. Local sibling paths are permitted only in fixtures and are rejected from release artifacts. This repository does not implement APM or compensate for missing structured APM CLI operations.

## Consequences

Forge can be exercised locally without publishing test packages. APM remains authoritative for schema, resolution, compilation, trust, and target deployment. Stable release waits for a real tagged Forge plugin release.
