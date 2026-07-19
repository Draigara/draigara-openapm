# ADR-0002: Keep Git and immutable releases canonical

- **Status:** Accepted
- **Date:** 2026-07-18
- **Decision owners:** Draigara maintainers
- **Repository:** `draigara-openapm`

## Context

Marketplace packages require transparent history, review, provenance, and reproducibility. A cloud database as the hidden source would undermine trust and portability.

## Decision

Author packages in Git, review through pull requests, tag independently, and publish immutable artifacts. Websites and Draigara Cloud are projections or authoring assistants.

## Consequences

Community and companies can audit and fork. Publication automation is more deliberate. Cloud features cannot make unreviewed changes canonical.

## Alternatives considered

SaaS-only package authoring was rejected. A generated repository mirrored from a database was rejected as an unnecessary dual source of truth.

## Review triggers

Review this decision when an upstream platform changes the assumptions, a security review finds the boundary insufficient, or an implementation proves the selected approach cannot meet the documented acceptance criteria.
