# ADR-0012: Publish an upstream-first preview catalogue

- **Status:** Accepted
- **Date:** 2026-07-19
- **Decision owners:** Draigara maintainers
- **Repository:** `draigara-openapm`
- **Supersedes:** ADR-0011

## Context

The Forge bootstrap package alone cannot exercise meaningful discovery. Several mature upstream plugins and skills can be consumed directly without copying or decomposing them, while package charters remain appropriate for future Draigara-authored compositions.

## Decision

Continue using `apm.yml` and APM-generated marketplace artifacts. The preview catalogue contains the Forge bootstrap plugin plus individually reviewed, immutably pinned upstream packages. Whole plugins remain whole plugins; standalone skills may be published as skill packages when the upstream project supports that distribution.

Initial preview entries are Forge, Superpowers, Anthropic Frontend Design, Awesome Copilot Security Review, and the Caveman core skill. Each entry records provenance, licence, pin, supported targets, review notes, and factual scope metadata. Forge is excluded from repository recommendations because setup installs it as bootstrap infrastructure.

Package charters remain prerequisites for new Draigara-authored composition packages, not for transparent pointers to reviewed upstream releases. Generated artifacts must contain only intentional tracked package inputs and must never include checkout metadata or machine paths.

## Consequences

The catalogue is useful for real end-to-end testing and early adopters without creating a second package ecosystem. Compatibility limitations are visible per entry. Upstream changes require deliberate review and pin updates.

