# ADR-0010: Keep public packages company-neutral

- **Status:** Accepted
- **Date:** 2026-07-18
- **Decision owners:** Draigara maintainers
- **Repository:** `draigara-openapm`

## Context

Draigara OpenAPM Community is intended for public use and as a base for private company marketplaces. Internal assumptions would reduce reuse and risk disclosure.

## Decision

Do not include company names, internal endpoints, policies, systems, or proprietary workflows. Company-specific requirements belong in private marketplaces layered through APM.

## Consequences

Public assets remain reusable and safe. Organisations do additional authoring for their actual standards.

## Alternatives considered

Using a known employer as the default example was rejected. Offering private overlays from this public repository was rejected.

## Review triggers

Review this decision when an upstream platform changes the assumptions, a security review finds the boundary insufficient, or an implementation proves the selected approach cannot meet the documented acceptance criteria.
