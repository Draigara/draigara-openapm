# ADR-0007: Prefer pinned dependencies over vendoring

- **Status:** Accepted
- **Date:** 2026-07-18
- **Decision owners:** Draigara maintainers
- **Repository:** `draigara-openapm`

## Context

Vendoring upstream AI assets creates stale copies, unclear provenance, and duplicated maintenance. APM supports dependency composition.

## Decision

Depend on released upstream APM packages at pinned compatible versions when legal, secure, and technically suitable. Vendor only after documented review and with attribution/update ownership.

## Consequences

Upstream fixes can be adopted transparently and package boundaries remain clear. Availability and breaking upstream changes require active maintenance.

## Alternatives considered

Copying all upstream assets into Draigara packages was rejected. Floating latest dependencies were rejected.

## Review triggers

Review this decision when an upstream platform changes the assumptions, a security review finds the boundary insufficient, or an implementation proves the selected approach cannot meet the documented acceptance criteria.
