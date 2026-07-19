# ADR-0005: Keep delivery and work-management providers explicit

- **Status:** Accepted
- **Date:** 2026-07-18
- **Decision owners:** Draigara maintainers
- **Repository:** `draigara-openapm`

## Context

GitHub, GitLab, Azure DevOps, Bitbucket, Jira, Linear, Trello, and Azure Boards differ materially. A generic abstraction would erase important permissions, workflow, API, and hosting distinctions.

## Decision

Publish provider-specific packages. Higher-level or company packages may compose the provider they use through APM dependencies.

## Consequences

Guidance remains accurate. The catalogue contains more packages, but their scope is clear. Forge does not choose transitive providers.

## Alternatives considered

A universal source-control package and universal issue-tracker package were rejected. Making provider choice an interactive Forge capability was rejected as misplaced.

## Review triggers

Review this decision when an upstream platform changes the assumptions, a security review finds the boundary insufficient, or an implementation proves the selected approach cannot meet the documented acceptance criteria.
