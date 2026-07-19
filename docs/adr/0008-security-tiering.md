# ADR-0008: Apply stronger review to executable and connected assets

- **Status:** Accepted
- **Date:** 2026-07-18
- **Decision owners:** Draigara maintainers
- **Repository:** `draigara-openapm`

## Context

Instructions and prompts influence behaviour, but scripts, hooks, and MCP servers can directly execute or access systems. They present different risk.

## Decision

Classify package assets by risk. Scripts, hooks, MCP, network access, credential use, and destructive guidance require explicit threat modelling, security ownership, and additional tests before publication.

## Consequences

High-risk assets do not enter through the same lightweight path as documentation. Review overhead is proportional to impact.

## Alternatives considered

Treating every text asset as equally risky was inefficient. Treating all community scripts as trusted was unsafe.

## Review triggers

Review this decision when an upstream platform changes the assumptions, a security review finds the boundary insufficient, or an implementation proves the selected approach cannot meet the documented acceptance criteria.
