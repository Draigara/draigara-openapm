# Draigara OpenAPM Community

Draigara OpenAPM Community is a public, curated Microsoft APM marketplace. Its stable marketplace ID is `draigara-openapm`; its display name is “Draigara OpenAPM Community.” APM owns package resolution, lock state, validation, and deployment.

## Get started

The recommended path installs Forge as a global plugin bundle and registers this marketplace:

```sh
npx @draigara/forge setup
```

The generated public marketplace source is:

```text
https://raw.githubusercontent.com/Draigara/draigara-openapm/main/.claude-plugin/marketplace.json
```

## Preview catalogue

- `draigara-forge`: global Forge bootstrap plugin; not a repository recommendation.
- `superpowers`: intact upstream plugin for Claude and Codex.
- `frontend-design`: Anthropic's standalone repository skill.
- `security-review`: GitHub's standalone repository security-review skill.
- `caveman`: the upstream core output-reduction skill, with its token-cost tradeoff documented.

Every entry is pinned and has a provenance record under [`docs/provenance`](./docs/provenance). Draigara does not decompose whole plugins, copy upstream collections wholesale, or add hidden Forge ranking instructions.

## Contributing

Use APM 0.26.x:

```sh
pwsh ./tools/Test-UpstreamPins.ps1
uvx --from apm-cli==0.26.0 apm pack --marketplace claude,codex
pwsh ./tools/Validate-Repository.ps1
```

The local generator creates a disposable marketplace from intentional tracked inputs only:

```powershell
$marketplace = ./tools/New-LocalMarketplace.ps1
```

Start with [AGENTS.md](./AGENTS.md), the [curation policy](./docs/curation-policy.md), and the [Accepted ADRs](./docs/adr/README.md).
