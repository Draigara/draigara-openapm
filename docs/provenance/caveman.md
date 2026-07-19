# caveman provenance

- Source: `JuliusBrussee/caveman`, subdirectory `skills/caveman`
- Pin: `v1.9.1`
- Licence: MIT
- Shape: standalone upstream core skill, not the complete plugin
- Preview targets: Codex, Claude, GitHub Copilot CLI
- Tradeoff: adds roughly 1–1.5k input tokens per turn while targeting lower output usage; terse workloads may see no net saving
- Review note: the complete plugin is deferred because its hooks and agent restrictions are not portable across all preview targets
