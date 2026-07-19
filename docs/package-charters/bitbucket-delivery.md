# Package Charter: Bitbucket Delivery

- **Proposed package ID:** `bitbucket-delivery`
- **Status:** Charter
- **Publication authorised:** No
- **Initial owner:** Unassigned

## Outcome

Guide agents through Bitbucket pull requests, Pipelines, deployment environments, permissions, and Cloud/Data Center differences.

## Audience

Repositories using Bitbucket Cloud or Bitbucket Data Center.

## Typical relevance signals

- `bitbucket-pipelines.yml`
- Bitbucket remote metadata
- Bitbucket pull-request terminology

These signals are explanatory, not a Forge-specific rules engine. The package must remain discoverable to ordinary APM users.

## Proposed scope

- pull-request workflow
- Pipelines steps/caches/services
- deployment environments
- secured variables
- OIDC where available
- branch permissions
- Cloud versus Data Center capability distinctions

## Upstream strategy

Use Atlassian primary documentation and reviewed assets. Explicitly identify whether guidance applies to Cloud, Data Center, or both.

Before implementation, create a provenance record for every selected upstream package or asset. Verify licence compatibility, maintenance, security, names, context footprint, and collision behaviour.

## Explicit non-goals

- assuming Jira is always used
- GitHub Actions translations
- unsupported Data Center pipeline features
- company-specific runners
- silent repository mutations

## Composition notes

Provider-specific delivery package; Jira is optional and separate.

APM owns all dependency resolution. The package must not rely on Forge understanding its downstream composition.

## Behaviour evaluation scenarios

- Cloud pipeline
- Data Center repository workflow
- secured variables
- deployment permission
- Jira-linked branch without requiring Jira package

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
