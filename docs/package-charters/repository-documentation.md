# Package Charter: Repository Documentation

- **Package ID:** `repository-documentation`
- **Status:** Approved for preview
- **Publication authorised:** Yes
- **Initial owner:** Draigara maintainers

## Outcome

Help coding agents create and audit concise, human-first repository documentation
with accurate consumption paths, separate contributor guidance, verifiable
support claims, local brand assets, and explicit license boundaries.

## Audience

Maintainers and contributors creating or revising `README.md`,
`CONTRIBUTING.md`, installation guides, and repository onboarding material.

## Relevance signals

- a request to create, rewrite, review, or audit repository documentation;
- missing or confusing installation and usage guidance;
- contributor setup dominating the main README;
- broken local assets, machine-specific paths, or unsupported platform claims.

These are discovery terms, not Forge-specific ranking instructions.

## Scope

- purpose-first README structure;
- copyable consumption commands;
- separation of user and contributor workflows;
- accurate platform and integration claims;
- repository-local branding and real screenshots;
- license, notice, trademark, and third-party attribution boundaries;
- deterministic verification of links, commands, paths, and package contents.

## Non-goals

- writing product strategy or inventing missing requirements;
- generating brand assets;
- running repository code merely to improve documentation;
- changing software licenses or offering legal advice;
- claiming support that integration tests do not prove.

## Upstream strategy and provenance

This is a Draigara-authored, documentation-only skill with no upstream content,
dependencies, scripts, hooks, MCP server, network access, or credential use.

## Evaluation

The baseline fixture intentionally buries installation, uses a developer-machine
path, mixes contribution setup into onboarding, and makes an unsupported support
claim. Acceptance requires the skill to teach the corresponding positive
document shape and verification checks.

## Security classification

Low-risk instructional content. Repository text and marketplace metadata remain
untrusted; the skill grants no permission to execute code, access networks, read
credentials, or mutate files beyond the user's documentation request.

## Publication gates

- [x] Charter and provenance are complete.
- [x] Apache 2.0 license, notice, and trademark boundary are present.
- [x] Skill structure and frontmatter validate.
- [x] APM validates and generates both declared marketplace outputs.
- [x] Repository validation passes.
- [x] Generated outputs contain no machine-specific paths.
