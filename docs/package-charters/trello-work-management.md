# Package Charter: Trello Work Management

- **Proposed package ID:** `trello-work-management`
- **Status:** Charter
- **Publication authorised:** No
- **Initial owner:** Unassigned

## Outcome

Help agents interpret and update Trello boards, lists, cards, checklists, labels, and comments without imposing heavier issue-tracker semantics.

## Audience

Teams using Trello for lightweight planning or delivery coordination.

## Typical relevance signals

- Trello card/board URLs
- board/list/card terminology
- explicit Trello integration

These signals are explanatory, not a Forge-specific rules engine. The package must remain discoverable to ordinary APM users.

## Proposed scope

- card context
- checklists and acceptance items
- list movement awareness
- labels and comments
- attachments/links
- confirmed mutation
- board-specific flexibility

## Upstream strategy

Use Atlassian/Trello primary documentation and reviewed API/MCP assets.

Before implementation, create a provenance record for every selected upstream package or asset. Verify licence compatibility, maintenance, security, names, context footprint, and collision behaviour.

## Explicit non-goals

- pretending cards have Jira workflow semantics
- automatic card movement
- requiring Scrum fields
- source-control provider behaviour
- company board identifiers

## Composition notes

Independent of delivery provider. Keep guidance lightweight and do not force specification assets into every card.

APM owns all dependency resolution. The package must not rely on Forge understanding its downstream composition.

## Behaviour evaluation scenarios

- simple card
- checklist-driven task
- custom lists
- comment with implementation evidence
- move confirmation
- read-only summary

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
