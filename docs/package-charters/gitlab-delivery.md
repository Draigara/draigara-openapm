# Package Charter: GitLab Delivery

- **Proposed package ID:** `gitlab-delivery`
- **Status:** Charter
- **Publication authorised:** No
- **Initial owner:** Unassigned

## Outcome

Guide agents through GitLab-native merge requests, CI/CD, components, runners, security, environments, and releases.

## Audience

Repositories hosted on GitLab.com or self-managed GitLab.

## Typical relevance signals

- `.gitlab-ci.yml`
- GitLab CI components
- GitLab remote metadata
- merge-request terminology

These signals are explanatory, not a Forge-specific rules engine. The package must remain discoverable to ordinary APM users.

## Proposed scope

- merge-request workflow
- GitLab CI includes/components
- runner and executor awareness
- protected variables and environments
- child/parent pipelines
- release and package features
- self-managed differences
- GitLab CLI/API use where appropriate

## Upstream strategy

Prefer GitLab primary documentation and reviewed GitLab-oriented assets. Avoid translating GitHub Actions patterns mechanically.

Before implementation, create a provenance record for every selected upstream package or asset. Verify licence compatibility, maintenance, security, names, context footprint, and collision behaviour.

## Explicit non-goals

- GitHub Actions syntax
- assuming SaaS-only features
- requiring Docker-in-Docker
- company runner topology
- autonomous merge or deployment

## Composition notes

Provider-specific. Must coexist with Jira or other work-management packages without assuming GitLab Issues are used.

APM owns all dependency resolution. The package must not rely on Forge understanding its downstream composition.

## Behaviour evaluation scenarios

- custom CI component
- self-managed instance
- protected environment
- merge request pipeline
- preview environment
- release job

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
