# ADR-0003: Curate upstream assets rather than importing collections wholesale

- **Status:** Accepted
- **Date:** 2026-07-18
- **Decision owners:** Draigara maintainers
- **Repository:** `draigara-openapm`

## Context

The user wants to benefit from .NET, Aspire, Awesome Copilot, Superpowers, SpecKit, Squad, and other assets. Collections vary in quality, licence, maintenance, overlap, and security.

## Decision

Review and select upstream packages/assets individually. Record provenance and rationale. Prefer official maintained APM packages. Treat awesome lists as discovery sources, not packages to ingest wholesale.

## Consequences

The catalogue stays smaller and more trustworthy. Curation takes time and requires maintenance. Users gain transparent decisions rather than an opaque bundle.

## Alternatives considered

Importing entire repositories or lists was rejected. Rewriting all upstream content was rejected. Depending only on one ecosystem was rejected.

## Review triggers

Review this decision when an upstream platform changes the assumptions, a security review finds the boundary insufficient, or an implementation proves the selected approach cannot meet the documented acceptance criteria.
