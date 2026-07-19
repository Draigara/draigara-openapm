# Marketplace Non-Functional Requirements

**Repository:** `draigara-openapm`
**Status:** Specification
**Audience:** product owners, architects, maintainers, coding agents, security reviewers, and contributors


## Reproducibility

- released package dependencies are pinned;
- package can be validated/compiled from immutable source;
- artifact maps to commit, workflow, manifest digest, and provenance;
- no release depends on mutable branch content.

## Quality

- all stable packages have owner, README, changelog, licence, provenance, tests, and compatibility statement;
- metadata is reviewed;
- package payload contains only intended files;
- composition tests cover declared common combinations;
- behavioural evaluation shows value over baseline.

## Security

- no secrets;
- scripts/hooks/MCP receive risk-tier review;
- dependency and licence scanning;
- protected release environment;
- incident/deprecation/revocation process;
- limited workflow permissions;
- untrusted fork PRs receive no release credentials.

## Maintainability

- independent versions/tags;
- automated update PRs include upstream diffs;
- stale/unowned packages are deprecated;
- package boundaries minimise duplicated assets;
- primary-source documentation is preferred.

## Accessibility and neutrality

AI assets should encourage accessible output and avoid discriminatory assumptions. Public packages remain company-neutral and provider claims are accurate.

## Discoverability

Titles, summaries, and tags are concise and semantically useful without keyword stuffing or Forge-specific manipulation.

## Portability

Every package declares and tests actual harness/platform support. Compilation alone does not constitute behavioural support.
