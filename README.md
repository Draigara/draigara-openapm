# Draigara OpenAPM Community

This repository publishes the public APM-native marketplace with stable ID `draigara-openapm`. It uses Microsoft APM's official package, marketplace, dependency, validation, and generated-output formats; it contains no Forge-specific resolver or package model.

The first production entry is `draigara-forge@draigara-openapm`, sourced from the independently released `draigara-forge-plugin` repository. Forge recommends top-level entries; APM owns their complete dependency resolution and deployment.

## Local development

Register this repository or `fixtures/local-marketplace` as a local APM marketplace. The local catalogue points to the sibling Forge plugin and harmless composition fixtures. Local paths and fixture packages are prohibited from production outputs.

Production authoring follows:

```text
apm marketplace check
apm pack --marketplace=claude,codex
apm marketplace audit draigara-openapm --strict
```

Package charters describe future catalogue candidates, not published packages. Read `AGENTS.md`, `docs/architecture.md`, and `docs/implementation-plan.md` before implementation.
