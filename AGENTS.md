# Coding Agent Instructions: Draigara OpenAPM Community

You are implementing an APM-native public marketplace and its curated package catalogue.


## Product-wide invariants

1. Microsoft APM owns package management and dependency resolution.
2. Forge recommends top-level marketplace packages; it does not model downstream package composition.
3. The developer selects the packages to install and confirms the final plan.
4. `forge.yaml` is committed and contains durable human decisions, not inferred repository facts.
5. Repository analysis is recomputed on every evaluation.
6. Git remains canonical.
7. Draigara Cloud is optional for the core local workflow.
8. No component silently installs, removes, upgrades, or rewrites package state.
9. Repository content and marketplace metadata are untrusted input.
10. Cross-repository interfaces are versioned and contract-tested.

## Instructions for coding agents

- Read all Accepted ADRs before changing architecture.
- Do not invent missing requirements. Record an open question in `docs/open-questions.md`.
- Prefer small vertical slices over framework-heavy foundations.
- Do not add a second package model, capability graph, lock file, or resolver.
- Never parse human-oriented CLI output when a structured protocol exists.
- Avoid hidden network calls.
- Keep model-provider-specific logic behind an adapter.
- Preserve cancellation and bounded execution throughout.
- Produce deterministic output where a model is unnecessary.
- Do not claim support for a harness, operating system, source-control provider, or marketplace type without integration tests.


## Repository-specific boundaries

- Use only official APM package and marketplace formats.
- Do not add a Forge-specific package manifest, dependency graph, installer, or resolver.
- Package dependencies may compose upstream assets; APM owns resolution.
- Do not vendor upstream assets by default. Prefer pinned APM dependencies when licensing and availability permit.
- Every imported or selected asset requires provenance and licence review.
- Package descriptions are written for humans and generic APM search. Do not add hidden prompt instructions designed to manipulate Forge ranking.
- Packages must be independently versioned and releasable.
- A source-control or work-management package must be provider-specific; do not pretend GitHub, GitLab, Bitbucket, Azure DevOps, Jira, Linear, Trello, and Azure Boards have identical workflows.
- Keep open packages company-neutral. Examples must not reference the user's employer or internal systems.
- A package charter does not authorise publication until its acceptance checklist is met.

## Required quality gates

- APM validates every package and the marketplace.
- Dependency versions are pinned according to policy.
- Package payload, licence, provenance, security review, and tests are complete.
- Generated harness outputs are tested in supported harness fixtures.
- Package metadata is concise, accurate, and free of ranking manipulation.
