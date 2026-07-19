# ADR-0009: Require charters before initial packages

- **Status:** Accepted
- **Date:** 2026-07-18
- **Decision owners:** Draigara maintainers
- **Repository:** `draigara-openapm`

## Context

The desired catalogue spans many ecosystems. Coding packages immediately risks overlapping scopes, poor dependencies, and quantity over quality.

## Decision

Create and approve a package charter defining outcome, audience, scope, non-goals, upstream strategy, composition, evaluation, and publication gates before implementation.

## Consequences

Agents receive narrow implementation context and maintainers can compare packages before code. Charters may evolve and do not guarantee publication.

## Alternatives considered

A backlog containing package names only was rejected. Generating all packages automatically from upstream repositories was rejected.

## Review triggers

Review this decision when an upstream platform changes the assumptions, a security review finds the boundary insufficient, or an implementation proves the selected approach cannot meet the documented acceptance criteria.
