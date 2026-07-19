# Package Charter: Azure DevOps Delivery

- **Proposed package ID:** `azure-devops-delivery`
- **Status:** Charter
- **Publication authorised:** No
- **Initial owner:** Unassigned

## Outcome

Guide agents through Azure Repos, pull requests, YAML pipelines, service connections, environments, artifacts, and Azure Boards integration.

## Audience

Repositories and teams using Azure DevOps Services or Server.

## Typical relevance signals

- `azure-pipelines.yml`
- Azure Repos metadata
- Azure Boards references
- service connection terminology

These signals are explanatory, not a Forge-specific rules engine. The package must remain discoverable to ordinary APM users.

## Proposed scope

- Azure Repos PRs and policies
- YAML templates and pipelines
- service connections and workload identity
- environments and approvals
- artifacts and feeds
- variable/secret handling
- Boards linkage
- Services versus Server differences

## Upstream strategy

Prefer Microsoft primary documentation and official assets. Validate feature availability across Azure DevOps Services and supported Server versions.

Before implementation, create a provenance record for every selected upstream package or asset. Verify licence compatibility, maintenance, security, names, context footprint, and collision behaviour.

## Explicit non-goals

- assuming GitHub Actions
- forcing classic pipelines
- company-specific agent pools
- automatic production approval
- general Azure cloud architecture

## Composition notes

Provider-specific delivery package. Azure Boards may be separately composed when deeper work-management guidance is needed.

APM owns all dependency resolution. The package must not rely on Forge understanding its downstream composition.

## Behaviour evaluation scenarios

- multi-stage pipeline
- template repository
- self-hosted agent
- OIDC/service connection
- Boards work item linkage
- Server compatibility

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
