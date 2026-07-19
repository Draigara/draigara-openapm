# Draigara OpenAPM Community Architecture

This repository is an APM marketplace and package catalogue, not an application or APM implementation. `apm.yml` is the hand-authored source of truth. APM generates `.claude-plugin/marketplace.json` for APM, Claude, and Copilot consumers and `.agents/plugins/marketplace.json` for Codex.

The production catalogue initially contains only `draigara-forge`. Packages remain independently versioned Git releases. Marketplace entries point to immutable released versions, and generated artifacts are committed and compared in CI.

Local acceptance uses `fixtures/local-marketplace`, the sibling Forge plugin, and harmless direct/transitive fixture packages. The release pipeline rejects all fixture names, development versions, and filesystem sources.

Git history, reviewed tags, and release artifacts are canonical. APM owns validation, resolution, policy, trust, compilation, and target deployment.
