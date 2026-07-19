# Package Charter: Multi-Agent Teamwork

- **Proposed package ID:** `multi-agent-teamwork`
- **Status:** Charter
- **Publication authorised:** No
- **Initial owner:** Unassigned

## Outcome

Enable controlled delegation among specialised coding agents while preserving ownership, evidence, review, and merge safety.

## Audience

Teams using harnesses that support sub-agents or agent teams for non-trivial engineering work.

## Typical relevance signals

- Squad or sub-agent configuration
- request to parallelise implementation/research/review
- large change with separable workstreams

These signals are explanatory, not a Forge-specific rules engine. The package must remain discoverable to ordinary APM users.

## Proposed scope

- planner/researcher/implementer/reviewer roles
- task boundaries
- shared context and hand-off contracts
- parallel work safety
- independent review
- conflict avoidance
- evidence and completion reporting
- limits on delegation

## Upstream strategy

Evaluate Squad and relevant Superpowers assets. Avoid combining multiple team orchestration systems unless tests prove clear role separation.

Before implementation, create a provenance record for every selected upstream package or asset. Verify licence compatibility, maintenance, security, names, context footprint, and collision behaviour.

## Explicit non-goals

- unbounded autonomous swarms
- agents merging without human control
- duplicating issue trackers
- provider-specific CI automation
- assuming all harnesses support parallel agents

## Composition notes

May combine with Specification-Driven Delivery. Names and commands must be namespaced to avoid collisions with upstream team agents.

APM owns all dependency resolution. The package must not rely on Forge understanding its downstream composition.

## Behaviour evaluation scenarios

- parallel documentation and code work
- independent security review
- conflicting file ownership
- agent failure/retry
- small task where delegation adds overhead

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
