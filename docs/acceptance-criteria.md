# Marketplace Product Acceptance Criteria

**Repository:** `draigara-openapm`
**Status:** Specification
**Audience:** product owners, architects, maintainers, coding agents, security reviewers, and contributors


## Marketplace

- Official APM tooling validates the root marketplace.
- A generic APM client can search and install packages without Forge.
- Forge can retrieve the same public top-level metadata through APM.
- Historical released versions are immutable.
- Preview packages do not appear as stable unintentionally.

## Stable package

- charter approved;
- manifest validates;
- exact dependencies resolve;
- compile/deploy passes;
- README clearly states outcome/audience/non-goals;
- provenance/licence complete;
- security review appropriate to assets;
- behaviour tests pass;
- composition collisions resolved/documented;
- release/tag/artifact verified;
- owner assigned.

## Upstream curation

- selected Awesome Copilot asset has individual review; whole-list import fails policy;
- official .NET/Aspire dependency is preferred over copied content where suitable;
- Superpowers/SpecKit/Squad overlap is assessed;
- update automation detects licence/payload changes;
- floating `latest`/branch pins fail validation.

## Provider packages

- GitHub package contains no GitLab/Azure/Bitbucket commands presented as equivalent;
- each provider variant tests hosted/self-managed differences claimed;
- work-management packages do not assume a source-control provider;
- company-specific workflow names do not enter public packages.

## Company layering

- a synthetic company package can depend on Draigara packages and private fixtures;
- APM resolves composition;
- Forge test fixture recommends only the synthetic top-level company package and does not need the dependency graph.
