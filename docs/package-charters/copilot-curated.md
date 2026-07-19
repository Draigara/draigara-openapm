# Package Charter: Curated GitHub Copilot Assets

- **Proposed package ID:** `copilot-curated`
- **Status:** Charter
- **Publication authorised:** No
- **Initial owner:** Unassigned

## Outcome

Provide a deliberately selected, tested subset of community Copilot assets rather than importing an entire awesome list.

## Audience

GitHub Copilot users seeking broadly useful commands, skills, agents, or instructions with reviewed quality and provenance.

## Typical relevance signals

- Copilot harness
- request for curated community capabilities
- company package depending on selected Copilot assets

These signals are explanatory, not a Forge-specific rules engine. The package must remain discoverable to ordinary APM users.

## Proposed scope

- asset-by-asset curation
- compatibility and collision testing
- clear provenance
- security review
- maintenance tracking
- documentation of why each asset is included

## Upstream strategy

Awesome Copilot is a discovery source. Each selected asset must have its own review record, licence, pin, tests, and maintainer.

Before implementation, create a provenance record for every selected upstream package or asset. Verify licence compatibility, maintenance, security, names, context footprint, and collision behaviour.

## Explicit non-goals

- mirroring all Awesome Copilot content
- claiming upstream endorsement
- provider delivery workflows covered by GitHub Delivery
- opaque bundled scripts
- keyword-based automatic inclusion

## Composition notes

Keep this package intentionally small. Higher-level packages should depend on specific selected packages/assets if APM permits, rather than forcing every curated asset.

APM owns all dependency resolution. The package must not rely on Forge understanding its downstream composition.

## Behaviour evaluation scenarios

- installation with other Draigara packages
- command/agent collision
- prompt injection review
- upstream version update
- asset removal/deprecation

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
