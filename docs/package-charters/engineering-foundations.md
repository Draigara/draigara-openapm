# Package Charter: Engineering Foundations

- **Proposed package ID:** `engineering-foundations`
- **Status:** Charter
- **Publication authorised:** No
- **Initial owner:** Unassigned

## Outcome

Provide technology-neutral engineering practices for designing, changing, reviewing, testing, documenting, and securing software repositories.

## Audience

Teams that want a strong baseline before adding language, framework, delivery-provider, or company-specific packages.

## Typical relevance signals

- new or existing software repository
- absence of explicit engineering instructions
- team request for standard engineering practices
- company package needing a neutral public baseline

These signals are explanatory, not a Forge-specific rules engine. The package must remain discoverable to ordinary APM users.

## Proposed scope

- problem framing and clarification
- small reversible changes
- architecture decision discipline
- testing pyramid and failure-focused tests
- secure defaults and secret hygiene
- observability-by-design principles
- documentation and review expectations
- dependency and supply-chain care

## Upstream strategy

Review selected upstream assets from Superpowers, SpecKit, and high-quality engineering instruction sets. Depend only on assets that remain neutral and do not impose a conflicting end-to-end workflow.

Before implementation, create a provenance record for every selected upstream package or asset. Verify licence compatibility, maintenance, security, names, context footprint, and collision behaviour.

## Explicit non-goals

- language/framework-specific coding rules
- provider-specific CI/CD commands
- company policy enforcement
- autonomous merge/deploy
- a universal software-development methodology

## Composition notes

Designed as a dependency for many higher-level packages. Must not define command or agent names likely to collide with provider or language packages.

APM owns all dependency resolution. The package must not rely on Forge understanding its downstream composition.

## Behaviour evaluation scenarios

- ambiguous feature request
- production defect fix
- security-sensitive configuration change
- large refactor proposal
- request to skip tests or documentation

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
