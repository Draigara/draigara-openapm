# OpenAPM Repository Layout

```text
.
├── apm.yml                                  # production marketplace source
├── .github/workflows/                       # validation, security, release
├── docs/
│   ├── adr/                                 # accepted architecture decisions
│   ├── architecture.md
│   ├── implementation-plan.md
│   └── open-questions.md
├── fixtures/
│   ├── local-marketplace/
│   │   ├── marketplace.apm.yml              # scratch template only
│   │   └── README.md
│   └── packages/
│       ├── composition-smoke/                # depends on upstream-skill
│       └── upstream-skill/
└── tools/
    ├── New-LocalMarketplace.ps1             # copies sibling sources privately
    └── Validate-Repository.ps1
```

`apm.yml` is the only production marketplace definition. APM generates the
Claude and Codex marketplace documents during release; maintainers do not edit
those outputs by hand.

The fixture marketplace is deliberately separate from production. Its generator
copies the sibling `draigara-forge-plugin` checkout and composition fixtures into
a private scratch root because APM marketplace package paths cannot escape their
marketplace directory. Nothing under `fixtures/` may be published as a community
package.
