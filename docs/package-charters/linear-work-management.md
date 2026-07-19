# Package Charter: Linear Work Management

- **Proposed package ID:** `linear-work-management`
- **Status:** Charter
- **Publication authorised:** No
- **Initial owner:** Unassigned

## Outcome

Help agents use Linear issues, projects, cycles, labels, and lightweight product-development workflows.

## Audience

Teams using Linear as their work-management system.

## Typical relevance signals

- Linear issue identifiers/URLs
- Linear project/cycle terminology
- explicit user intent

These signals are explanatory, not a Forge-specific rules engine. The package must remain discoverable to ordinary APM users.

## Proposed scope

- issue context
- project and cycle awareness
- status and label use
- acceptance criteria
- comments and evidence
- safe API/MCP use
- lightweight workflow conventions

## Upstream strategy

Use Linear primary documentation and reviewed integration assets. Keep API permissions narrow.

Before implementation, create a provenance record for every selected upstream package or asset. Verify licence compatibility, maintenance, security, names, context footprint, and collision behaviour.

## Explicit non-goals

- mapping Linear to Jira abstractions
- assuming sprint methodology
- automatic status changes
- company-specific team identifiers
- provider delivery semantics

## Composition notes

Independent of source-control provider. Company packages may add team templates and status conventions.

APM owns all dependency resolution. The package must not rely on Forge understanding its downstream composition.

## Behaviour evaluation scenarios

- issue implementation
- project milestone context
- cycle scope
- custom status
- read-only access
- confirmed update

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
