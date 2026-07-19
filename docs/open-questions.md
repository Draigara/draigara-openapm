# OpenAPM Open Questions

**Repository:** `draigara-openapm`
**Status:** Living document

Only unresolved decisions belong here. A coding agent must not invent answers to
these questions.

1. What public Git repository and immutable `v0.1.0` tag will publish the
   `draigara-forge` package source referenced by the production marketplace?
2. Which additional community packages should follow Forge, and what review,
   licensing, maintenance, and provenance requirements must each package meet?
3. Does a future preview channel justify a separate marketplace identity, or
   should v1 remain stable-only?
4. How does the supported APM release represent package revocation and
   deprecation, and what marketplace procedure should maintainers follow?

Stable publication is blocked until question 1 is resolved and the production
`apm marketplace check` and `apm pack` commands succeed against the published
source and tag. The local fixture marketplace is not a substitute for that gate.
