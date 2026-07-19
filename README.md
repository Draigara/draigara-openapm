# Draigara OpenAPM Community

Draigara OpenAPM Community is a public, curated Microsoft APM marketplace. Its
stable marketplace ID is:

```text
draigara-openapm
```

APM owns package discovery, dependency resolution, validation, and deployment.
This repository publishes marketplace metadata and policy; it does not
implement a second package manager or resolver.

## Available packages

The initial package is Draigara Forge:

```text
draigara-forge@draigara-openapm
└─ package       └─ marketplace
```

Forge provides guided repository evaluation and package selection. Additional
package charters in this repository describe candidates, not packages currently
available to install.

## Get started

The recommended path registers the marketplace and installs Forge through one
guided setup:

```sh
npx @draigara/forge setup
```

Forge displays the complete plan before asking APM to change marketplace or
plugin state.

## Contributing packages

Community packages must follow the curation, licensing, provenance, security,
and testing requirements in [docs/package-authoring.md](./docs/package-authoring.md)
and [docs/curation-policy.md](./docs/curation-policy.md). Start with an issue or
proposal before adding a production marketplace entry.

To create a private local marketplace containing a sibling
`draigara-forge-plugin` checkout and the harmless composition fixtures, run:

```powershell
$marketplace = ./tools/New-LocalMarketplace.ps1
Push-Location $marketplace
uvx --from apm-cli apm marketplace check --offline
uvx --from apm-cli apm pack --marketplace claude,codex
Pop-Location
```

The generator accepts an optional output directory. Local paths and fixture
packages are prohibited from production marketplace output.

Marketplace maintainers validate production metadata with:

```sh
uvx --from apm-cli apm marketplace check
uvx --from apm-cli apm pack --marketplace claude,codex
```

See [CONTRIBUTING.md](./CONTRIBUTING.md) and
[docs/architecture.md](./docs/architecture.md) for repository guidance. Coding
agents must start with [AGENTS.md](./AGENTS.md) and the Accepted ADRs.
