# ADR-0004: Version packages independently

- **Status:** Accepted
- **Date:** 2026-07-18
- **Decision owners:** Draigara maintainers
- **Repository:** `draigara-openapm`

## Context

A monorepo makes shared tooling convenient, but unrelated package changes should not force coordinated releases or imply compatibility changes.

## Decision

Use semantic versions per package and an unambiguous package-tag convention. Update the marketplace index only for released package versions.

## Consequences

Consumers receive precise changes and company marketplaces can pin packages independently. Release automation must detect changed packages and manage multiple tags.

## Alternatives considered

One version for the entire marketplace was rejected. Mutable unversioned package branches were rejected.

## Review triggers

Review this decision when an upstream platform changes the assumptions, a security review finds the boundary insufficient, or an implementation proves the selected approach cannot meet the documented acceptance criteria.
