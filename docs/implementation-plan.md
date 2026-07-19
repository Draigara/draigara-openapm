# Draigara OpenAPM Community Implementation Plan

**Status:** Approved implementation plan

## Milestone 0: Identity and official scaffold

- Keep stable ID `draigara-openapm` and display name “Draigara OpenAPM Community” consistent everywhere.
- Validate the `apm.yml` marketplace block with APM 0.26.x.
- Generate Claude/Copilot and Codex marketplace artifacts; never hand-edit them.

Exit: no active text uses the superseded marketplace identity, legacy marketplace formats, or placeholder schemas.

## Milestone 1: Local vertical slice

- Validate the local catalogue, sibling `draigara-forge-plugin`, and direct/transitive composition fixtures.
- Install into a scratch root and verify both fixture skills plus Forge MCP configuration are planned for explicit targets.
- Add a release scan rejecting local paths, fixture packages, development versions, and secrets.

Exit: local marketplace add, browse, install, update, remove, and repeated no-change flows are automated without network access.

## Milestone 2: Forge plugin publication

- Require a tagged, immutable `draigara-forge-plugin` release that passes its MCP and stable-target gates.
- Update `draigara-forge` to that exact version and regenerate marketplace outputs.
- Contract-test installation through the Forge CLI and direct APM usage.

Exit: `draigara-forge@draigara-openapm` resolves from a clean machine and starts `forge mcp` only after explicit executable trust.

## Milestone 3: Marketplace release

- Run marketplace check, pack, strict audit, provenance/licence review, and generated-output drift checks.
- Publish immutable Git tags and checksums.
- Exercise local-to-production source substitution and prove no filesystem locator ships.

Stable release remains blocked until production Git locations exist, the Forge plugin is tagged, and required structured APM operations are integration-tested.

## Later catalogue milestones

Implement Engineering Foundations and other packages only after their existing charters, provenance, security, composition, and harness gates pass. Test fixtures never graduate implicitly into catalogue entries.
