# ADR-0001: Use APM-native package and marketplace formats

- **Status:** Accepted
- **Date:** 2026-07-18
- **Decision owners:** Draigara maintainers
- **Repository:** `draigara-openapm`

## Context

Draigara OpenAPM Community exists to curate and publish AI engineering assets in the Microsoft APM ecosystem. A parallel format would require custom tooling and prevent normal APM use.

## Decision

Use current official APM manifests, dependencies, validation, compile/deploy, and marketplace publication. Do not create a Forge-specific package format or index.

## Consequences

Any APM client can consume packages. The repository follows upstream format evolution and must test compatibility. Forge remains only one discovery experience.

## Alternatives considered

A custom Draigara manifest and resolver were rejected. Wrapping arbitrary Git repositories without APM packaging was rejected.

## Review triggers

Review this decision when an upstream platform changes the assumptions, a security review finds the boundary insufficient, or an implementation proves the selected approach cannot meet the documented acceptance criteria.
