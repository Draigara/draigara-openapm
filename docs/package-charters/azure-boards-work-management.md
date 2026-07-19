# Package Charter: Azure Boards Work Management

- **Proposed package ID:** `azure-boards-work-management`
- **Status:** Charter
- **Publication authorised:** No
- **Initial owner:** Unassigned

## Outcome

Help agents work with Azure Boards work items, backlogs, iterations, links, states, queries, and development traceability.

## Audience

Teams using Azure Boards with Azure Repos, GitHub, or other source control.

## Typical relevance signals

- Azure Boards work item URLs/IDs
- work item terminology
- Azure DevOps configuration
- explicit user intent

These signals are explanatory, not a Forge-specific rules engine. The package must remain discoverable to ordinary APM users.

## Proposed scope

- work item context
- hierarchy and links
- area/iteration paths
- acceptance criteria
- state transitions
- comments and evidence
- Services/Server distinctions
- safe mutation

## Upstream strategy

Prefer Microsoft primary documentation and official assets. API integrations require scoped tokens or delegated auth.

Before implementation, create a provenance record for every selected upstream package or asset. Verify licence compatibility, maintenance, security, names, context footprint, and collision behaviour.

## Explicit non-goals

- requiring Azure Repos
- assuming one process template
- automatic transitions
- company area paths
- general Azure DevOps pipeline guidance

## Composition notes

May combine with Azure DevOps Delivery but remains independently useful for GitHub-hosted repositories using Boards.

APM owns all dependency resolution. The package must not rely on Forge understanding its downstream composition.

## Behaviour evaluation scenarios

- Agile/Scrum/CMMI/custom process
- GitHub-linked work item
- iteration context
- required transition fields
- read-only query
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
