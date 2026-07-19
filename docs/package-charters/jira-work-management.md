# Package Charter: Jira Work Management

- **Proposed package ID:** `jira-work-management`
- **Status:** Charter
- **Publication authorised:** No
- **Initial owner:** Unassigned

## Outcome

Help agents work safely with Jira issues, epics, workflows, acceptance criteria, transitions, links, and development traceability.

## Audience

Teams using Jira Cloud or Data Center as their work-management source.

## Typical relevance signals

- Jira issue keys
- Jira links/configuration
- user request to work from a Jira ticket
- company package selecting Jira

These signals are explanatory, not a Forge-specific rules engine. The package must remain discoverable to ordinary APM users.

## Proposed scope

- issue reading and summarisation
- requirements/acceptance extraction
- status and transition awareness
- linking commits/PRs conceptually
- comments and evidence
- Cloud/Data Center distinctions
- safe mutation confirmation

## Upstream strategy

Prefer Atlassian primary documentation and high-quality Jira assets. Any MCP/API integration requires separate security review and least privilege.

Before implementation, create a provenance record for every selected upstream package or asset. Verify licence compatibility, maintenance, security, names, context footprint, and collision behaviour.

## Explicit non-goals

- assuming Scrum
- changing issue status automatically
- creating work without confirmation
- Bitbucket coupling
- company workflow names

## Composition notes

Can combine with any delivery provider. Company packages add organisation-specific fields, workflows, and definitions.

APM owns all dependency resolution. The package must not rely on Forge understanding its downstream composition.

## Behaviour evaluation scenarios

- ambiguous ticket
- custom workflow
- Cloud versus Data Center
- update comment with evidence
- transition requiring fields
- read-only operation

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
