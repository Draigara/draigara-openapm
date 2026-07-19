# Package Charter: Specification-Driven Delivery

- **Proposed package ID:** `spec-driven-delivery`
- **Status:** Charter
- **Publication authorised:** No
- **Initial owner:** Unassigned

## Outcome

Provide a disciplined workflow for turning uncertain requirements into reviewable specifications, plans, tasks, implementation, and validation.

## Audience

Teams using or evaluating specification-first AI development, especially greenfield features and substantial changes.

## Typical relevance signals

- specification directories or templates
- SpecKit metadata
- user intent to design before coding
- large feature with unclear acceptance criteria

These signals are explanatory, not a Forge-specific rules engine. The package must remain discoverable to ordinary APM users.

## Proposed scope

- requirements discovery
- explicit assumptions and open questions
- user stories and acceptance criteria
- technical plan
- task decomposition
- traceability from specification to tests
- change control
- review checkpoints

## Upstream strategy

Evaluate SpecKit as the principal upstream. Select compatible assets from Superpowers only where they strengthen rather than duplicate or conflict with the workflow.

Before implementation, create a provenance record for every selected upstream package or asset. Verify licence compatibility, maintenance, security, names, context footprint, and collision behaviour.

## Explicit non-goals

- forcing specifications for trivial edits
- replacing issue tracking
- autonomously approving requirements
- company-specific governance gates
- a package manager for specification files

## Composition notes

Must coexist with provider/work-management packages. It should create portable artefacts and let company packages add required templates or approvals.

APM owns all dependency resolution. The package must not rely on Forge understanding its downstream composition.

## Behaviour evaluation scenarios

- greenfield product feature
- brownfield behavioural change
- unclear non-functional requirements
- specification update after implementation discovery
- small bug where full workflow should be avoided

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
