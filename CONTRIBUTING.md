# Contributing to Draigara OpenAPM Community

Contributions are welcome under the repository's
[Apache License 2.0](./LICENSE). By submitting a contribution, you agree that
it may be distributed under that license. Referenced upstream work keeps its
original copyright and license. Draigara names and logos remain subject to the
separate [trademark notice](./TRADEMARKS.md).

## Before starting

Read, in order:

1. [`README.md`](./README.md)
2. [`PRODUCT-CONTEXT.md`](./PRODUCT-CONTEXT.md)
3. [`AGENTS.md`](./AGENTS.md) when using a coding agent
4. the [curation policy](./docs/curation-policy.md)
5. the [package authoring standard](./docs/package-authoring.md)
6. the [Accepted ADRs](./docs/adr/README.md)

A new Draigara-authored package requires an approved charter under
[`docs/package-charters`](./docs/package-charters) before implementation.
Transparent pointers to existing upstream packages instead require an
individual provenance, license, pin, compatibility, and security review.

## Run from source

Install `uv`, Git, and PowerShell 7. Clone the repository and run:

```powershell
./tools/Test-UpstreamPins.ps1
uvx --from apm-cli==0.26.0 apm pack --marketplace claude,codex
./tools/Validate-Repository.ps1
```

To exercise sibling development packages without publishing machine paths,
generate a disposable local marketplace:

```powershell
$marketplace = ./tools/New-LocalMarketplace.ps1
$marketplace
```

Generated production marketplaces must contain only intentional tracked inputs
and immutable public package locations.

## Contribution workflow

- Propose one focused package or catalogue change at a time.
- Record immutable upstream provenance before adding a public pointer.
- Add failing-first fixtures for validation or behavior changes.
- Keep package descriptions neutral and free of recommendation manipulation.
- Do not import upstream collections wholesale or silently vendor their assets.
- Update generated marketplaces in the same commit as their source manifest.
- Use conventional commits where practical.

AI-assisted contributions have the same correctness, provenance, licensing,
testing, and security obligations as human-written work.
