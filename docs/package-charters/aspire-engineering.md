# Package Charter: .NET Aspire Engineering

- **Proposed package ID:** `aspire-engineering`
- **Status:** Charter
- **Publication authorised:** No
- **Initial owner:** Unassigned

## Outcome

Help teams use .NET Aspire for local orchestration, service defaults, integrations, testing, deployment-aware modelling, and developer experience.

## Audience

Repositories with an Aspire AppHost or teams intentionally adopting Aspire.

## Typical relevance signals

- AppHost project
- ServiceDefaults project
- Aspire hosting/integration packages
- accepted ADR selecting Aspire
- greenfield intent to use Aspire

These signals are explanatory, not a Forge-specific rules engine. The package must remain discoverable to ordinary APM users.

## Proposed scope

- resource modelling
- service discovery
- configuration and references
- health checks and telemetry defaults
- hosting integrations
- lifecycle and local developer experience
- Aspire testing
- deployment-boundary awareness
- polyglot resource integration

## Upstream strategy

Depend primarily on official Aspire AI assets maintained by Microsoft or the Aspire team when available. Do not fork official guidance merely to rebrand it.

Before implementation, create a provenance record for every selected upstream package or asset. Verify licence compatibility, maintenance, security, names, context footprint, and collision behaviour.

## Explicit non-goals

- treating Aspire as production orchestrator
- requiring .NET-only workloads
- hard-coding one cloud target
- duplicating general .NET practices
- company platform deployment rules

## Composition notes

Expected to compose with .NET Engineering and provider/company deployment packages. Keep production-platform assumptions outside this package.

APM owns all dependency resolution. The package must not rely on Forge understanding its downstream composition.

## Behaviour evaluation scenarios

- add database resource
- polyglot frontend integration
- service reference and endpoint
- integration testing through AppHost
- migrate manually composed local stack
- production deployment discussion

Each scenario needs expected invariants, fixture inputs, and a baseline comparison. Exact model wording is not an acceptance criterion.

## Security review

Review:

- executable scripts, hooks, and MCP configuration;
- network access;
- credential requirements;
- destructive operations;
- prompt injection;
- data sent to external services;
- supply-chain and update mechanism.

## Publication checklist

- [ ] Current official APM manifest validates.
- [ ] Package README and changelog exist.
- [ ] Upstream review and provenance are complete.
- [ ] Licence and notices are complete.
- [ ] Stable dependencies are pinned.
- [ ] Package compiles/deploys in declared harnesses.
- [ ] Composition and collision tests pass.
- [ ] Behaviour evaluation demonstrates value.
- [ ] Security review is approved.
- [ ] At least one maintainer accepts update responsibility.
- [ ] Metadata is accurate and contains no ranking manipulation.
