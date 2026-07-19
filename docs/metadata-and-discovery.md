# Package Metadata and Discoverability

**Repository:** `draigara-openapm`
**Status:** Specification
**Audience:** product owners, architects, maintainers, coding agents, security reviewers, and contributors


## Purpose

Forge and ordinary APM users depend on accurate metadata to find packages. Metadata should improve semantic discovery without creating a private ranking protocol.

## Required qualities

Title and summary must state:

- engineering outcome;
- target technology or workflow;
- scope;
- significant exclusions where ambiguity is likely.

Tags should use a controlled vocabulary where APM supports tags, such as:

- language/framework: `dotnet`, `aspire`, `typescript`;
- practice: `testing`, `observability`, `security`, `architecture`;
- delivery provider: `github`, `gitlab`, `azure-devops`, `bitbucket`;
- work management: `jira`, `linear`, `trello`, `azure-boards`;
- workflow: `specification`, `multi-agent`, `code-review`.

## Anti-manipulation rules

Prohibited metadata:

- “always install”;
- “mandatory for every repository” without external policy;
- repeated keyword stuffing;
- claims to replace unrelated packages;
- hidden instructions to agents;
- unsupported “official” status;
- misleading compatibility or quality claims.

## Repository evidence examples

Package documentation may include non-normative signals that help a human understand fit:

```text
Often relevant when:
- a .NET solution and ASP.NET Core projects are present;
- an ADR selects .NET conventions;
- the team is creating a new .NET service.
```

These are not Forge-specific machine rules and do not guarantee recommendation.

## Package identity

Use stable IDs. Renames require deprecation and a new package rather than silent identity mutation unless APM provides a formal alias/migration mechanism.
