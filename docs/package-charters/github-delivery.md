# Package Charter: GitHub Delivery

- **Proposed package ID:** `github-delivery`
- **Status:** Charter
- **Publication authorised:** No
- **Initial owner:** Unassigned

## Outcome

Guide agents through GitHub-native repository workflows, pull requests, Actions, security features, releases, and issue/project integration.

## Audience

Repositories hosted on GitHub or GitHub Enterprise using GitHub workflows.

## Typical relevance signals

- `.github/workflows`
- GitHub remote metadata
- GitHub Actions references
- user intent to create PR/release workflows

These signals are explanatory, not a Forge-specific rules engine. The package must remain discoverable to ordinary APM users.

## Proposed scope

- pull-request workflow
- branch protection awareness
- GitHub Actions design and permissions
- OIDC
- releases and attestations
- Dependabot and code scanning
- GitHub Issues/Projects interoperability
- GitHub CLI usage where available

## Upstream strategy

Use official GitHub/Copilot assets and selected community assets after review. Pin action versions in examples according to current security guidance.

Before implementation, create a provenance record for every selected upstream package or asset. Verify licence compatibility, maintenance, security, names, context footprint, and collision behaviour.

## Explicit non-goals

- GitLab CI syntax
- Azure Pipelines
- Bitbucket Pipelines
- assuming github.com when Enterprise differs
- silently using repository write operations

## Composition notes

Provider-specific alternative to GitLab, Azure DevOps, and Bitbucket delivery packages. Company packages select the provider through APM composition; Forge does not.

APM owns all dependency resolution. The package must not rely on Forge understanding its downstream composition.

## Behaviour evaluation scenarios

- create least-privilege workflow
- release provenance
- fork PR security
- GitHub Enterprise endpoint
- PR review and status checks

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
