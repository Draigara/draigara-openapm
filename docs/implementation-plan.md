# Draigara OpenAPM Community Implementation Plan

**Status:** Approved preview plan

## Milestone 0: Catalogue and provenance

- Keep stable ID draigara-openapm and display name Draigara OpenAPM Community.
- Publish Forge, Superpowers, Frontend Design, Security Review, and Caveman with factual scope/target tags.
- Record source, licence, reviewed release or commit, package shape, and limitations for every entry.

Exit: APM 0.26 accepts every entry and active documentation matches the preview catalogue.

## Milestone 1: Reproducible generation

- Verify upstream advertised refs against reviewed commits before generation.
- Verify every advertised tag or exact commit with the upstream-pin gate, then run APM pack for Claude/Copilot and Codex. APM 0.26 `marketplace check` cannot confirm unadvertised commit SHAs, so it is not a release gate for this catalogue.
- Commit generated artifacts and fail CI on drift, local paths, fixtures, secrets, or unexpected commits.

Exit: both generated marketplaces resolve only reviewed upstream content.

## Milestone 2: End-to-end onboarding

- Publish an immutable draigara-forge-plugin preview tag and update its catalogue entry.
- Test direct APM install and Forge setup from a clean scratch home.
- Test organisation marketplace adoption and safe unlinking with Draigara/acme-apm.
- Exercise repository init, candidate selection, confirmed apply, status, and removal.

Exit: the CLI -> APM -> marketplace -> plugin -> MCP workflow succeeds and repeated setup converges.

## Milestone 3: Preview release

- Run validators, upstream-pin checks, APM pack, licence review, generated-output drift checks, and security workflows.
- Publish immutable Git tags, checksums, attestations, and release notes.

Stable promotion requires native integration evidence for Claude Code, Codex, and GitHub Copilot CLI. Additional catalogue entries follow the same provenance and compatibility gates.
