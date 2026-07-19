# Draigara OpenAPM Community Architecture

This repository is an APM marketplace and package catalogue, not an application or APM implementation. apm.yml is the reviewed authoring source. APM generates .claude-plugin/marketplace.json for APM, Claude, and Copilot consumers and .agents/plugins/marketplace.json for Codex.

The preview catalogue contains the global Forge and Superpowers plugins plus reviewed standalone Frontend Design, Security Review, and Caveman skills. Whole upstream plugins remain whole plugins. Forge setup installs draigara-forge globally and excludes it from repository recommendations.

Released entries resolve to immutable upstream commits. When an upstream has no advertised tag, APM 0.26 requires an advertised branch ref during generation. In that case a separate network gate proves the branch still equals the reviewed commit, and the generated artifact is audited for that commit before publication.

Local acceptance uses a generated disposable marketplace made only from tracked fixture and plugin inputs. The synthetic acme-apm repository tests organisation-owned marketplace registration and adoption. Machine paths and checkout metadata never ship.

Git history, reviewed tags, generated artifacts, and provenance records are canonical. APM owns validation, resolution, policy, trust, compilation, and target deployment.
