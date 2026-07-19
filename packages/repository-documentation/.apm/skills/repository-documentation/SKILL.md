---
name: repository-documentation
description: Use when creating, rewriting, or auditing repository-facing documentation such as README.md, CONTRIBUTING.md, installation guides, or project onboarding instructions.
---

# Repository Documentation

## Overview

Write repository documentation for the person trying to use the project first.
Keep contributor setup discoverable without making it the product introduction.

## Document contract

Shape the main `README.md` in this order:

1. Local brand asset when one exists, product name, and one-sentence purpose.
2. The shortest supported way to consume or install the product, using copyable commands.
3. The normal first-use workflow and expected result.
4. Supported platforms, package managers, or integrations, limited to verified claims.
5. Important safety, ownership, compatibility, and troubleshooting boundaries.
6. Links to `CONTRIBUTING.md`, architecture or security documentation, license, notices, and trademark guidance where present.

Put clone, build, test, and contribution details in `CONTRIBUTING.md`. Keep each
third-party work under its own copyright and license; describe the repository's
license as applying only to material actually offered under it.

## Workflow

1. Read the product manifests, release workflow, existing documentation, and repository instructions before writing claims.
2. Identify the actual user entry point and lead with it. Distinguish one-shot use, global installation, and source development.
3. Include multiple common package-manager or platform options only when each command is valid and maintained.
4. Reuse repository-local logos with meaningful alternative text. Do not depend on a developer-machine path or another repository's mutable branch.
5. Add a screenshot only when it is captured from the real product, materially improves understanding, remains readable, and contains no private or machine-specific data.
6. Move contributor-only material to `CONTRIBUTING.md` and link it from the README.

## Quick reference

| Reader need | Location |
|---|---|
| What the project is | README opening |
| Copyable install or use command | README first sections |
| Supported environments | README, beside the workflow |
| Build and test from source | `CONTRIBUTING.md` |
| Architecture and security detail | Linked focused documents |
| License and brand boundaries | `LICENSE`, `NOTICE`, and trademark notice |

## Verification

Before finishing:

- run every safe local validation command documented for the repository;
- confirm command names, package names, links, anchors, and local images resolve;
- search public documentation for absolute machine paths and credentials;
- verify every supported-platform or integration statement against tests;
- inspect package output to ensure required README, license, and notice files ship;
- compare screenshots with current real output and remove stale images.

## Common mistakes

- Leading with cloning and building when most readers need an install command.
- Claiming "all platforms" or "all package managers" without evidence.
- Mixing source contribution steps into user onboarding.
- Relicensing referenced or downloaded third-party material by implication.
- Using fabricated terminal screenshots or assets that resolve only locally.
