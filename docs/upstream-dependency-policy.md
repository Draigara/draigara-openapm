# Upstream Dependency and Asset Selection Policy

**Repository:** `draigara-openapm`
**Status:** Specification
**Audience:** product owners, architects, maintainers, coding agents, security reviewers, and contributors


## Objective

Use strong existing AI assets without blindly importing entire collections.

Candidate sources include .NET, Aspire, selected Awesome Copilot assets, Superpowers, SpecKit, Squad, and future projects. Each is assessed asset by asset or package by package.

## Review record

For every upstream dependency record:

- upstream repository and owner;
- exact package/version/commit;
- licence;
- files/assets consumed;
- why selected;
- alternatives considered;
- security characteristics;
- update policy;
- known overlaps/collisions;
- maintainer;
- date reviewed.

## Selection criteria

- relevance to the package outcome;
- quality and specificity;
- compatibility with APM and target harnesses;
- licence compatibility;
- provenance;
- maintenance health;
- security of scripts/hooks/MCP;
- token/context footprint;
- overlap with other dependencies;
- ability to override or compose safely.

## Awesome-list curation

A collection described as “awesome” is a discovery source, not a quality guarantee. Do not depend on the entire collection by default. Select specific upstream packages/assets and document why each was chosen.

## Pinning

- Stable packages pin a released upstream version.
- Commit pins require a documented reason.
- Floating branches and `latest` are prohibited in released generated marketplaces.
- Untagged upstreams use exact commit refs in the authoring manifest. Because APM 0.26 `marketplace check` cannot confirm unadvertised commit SHAs, a separate gate proves the recorded upstream branch names the reviewed commit before APM packs the exact SHA. Generated marketplaces and CI drift checks must preserve that SHA.
- Automated update PRs must show upstream changelog, licence delta, payload delta, and behaviour test results.

## Forks

Fork only when:

- upstream cannot accept a necessary correction;
- maintenance ownership is explicit;
- licence permits;
- divergence is documented;
- rebase/update strategy exists.

A fork is not a shortcut around contribution.
