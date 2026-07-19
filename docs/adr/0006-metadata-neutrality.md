# ADR-0006: Use accurate neutral metadata without Forge-specific ranking instructions

- **Status:** Accepted
- **Date:** 2026-07-18
- **Decision owners:** Draigara maintainers
- **Repository:** `draigara-openapm`

## Context

Forge relies on marketplace search and metadata, but the marketplace must remain useful to ordinary APM clients. Publishers could otherwise manipulate model ranking.

## Decision

Write concise human-facing metadata using controlled vocabulary and factual relevance signals. Prohibit keyword stuffing, imperative selection text, hidden prompts, and unsupported status claims.

## Consequences

Discovery quality improves without a proprietary ranking contract. Metadata review becomes a governance responsibility.

## Alternatives considered

Forge-only metadata fields were rejected. Letting package authors embed recommendation instructions was rejected.

## Review triggers

Review this decision when an upstream platform changes the assumptions, a security review finds the boundary insufficient, or an implementation proves the selected approach cannot meet the documented acceptance criteria.
