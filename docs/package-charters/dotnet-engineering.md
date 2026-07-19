# Package Charter: .NET Engineering

- **Proposed package ID:** `dotnet-engineering`
- **Status:** Charter
- **Publication authorised:** No
- **Initial owner:** Unassigned

## Outcome

Give AI coding agents current, practical guidance for modern .NET solution design, implementation, testing, performance, diagnostics, and maintainability.

## Audience

Repositories using current supported .NET versions, especially services, libraries, workers, and test projects.

## Typical relevance signals

- `.sln` or `.slnx`
- `.csproj` and `global.json`
- ASP.NET Core or worker SDKs
- user intent to build or migrate a .NET application

These signals are explanatory, not a Forge-specific rules engine. The package must remain discoverable to ordinary APM users.

## Proposed scope

- modern C# and .NET conventions
- dependency injection and configuration validation
- async/cancellation
- HTTP/API design
- testing with xUnit or repository-selected framework
- Native AOT awareness where relevant
- diagnostics and OpenTelemetry principles
- NuGet and central package management
- safe migrations between supported .NET versions

## Upstream strategy

Prefer official Microsoft .NET APM assets where available. Add Draigara assets only for gaps, composition, evaluation, or neutral best practices not already maintained upstream.

Before implementation, create a provenance record for every selected upstream package or asset. Verify licence compatibility, maintenance, security, names, context footprint, and collision behaviour.

## Explicit non-goals

- forcing a single architecture such as Clean Architecture
- requiring MediatR
- requiring Aspire
- company-specific libraries
- pinning every repository to the newest preview SDK

## Composition notes

May be depended on by Aspire and company service packages. Must not duplicate Aspire-specific orchestration guidance.

APM owns all dependency resolution. The package must not rely on Forge understanding its downstream composition.

## Behaviour evaluation scenarios

- minimal API addition
- library API evolution
- background worker cancellation
- Native AOT compatibility review
- dependency upgrade
- testability refactor

Each scenario needs expected invariants, fixture inputs, and a baseline comparison. Exact model wording is not an acceptance criterion.

## Security review

Review:

- executable scripts, hooks, and MCP configuration;
- network access;
- credential requirements;
- destructive operations;
- prompt injection;
- data sent to external services;
- supply-chain and update mechanism.

## Publication checklist

- [ ] Current official APM manifest validates.
- [ ] Package README and changelog exist.
- [ ] Upstream review and provenance are complete.
- [ ] Licence and notices are complete.
- [ ] Stable dependencies are pinned.
- [ ] Package compiles/deploys in declared harnesses.
- [ ] Composition and collision tests pass.
- [ ] Behaviour evaluation demonstrates value.
- [ ] Security review is approved.
- [ ] At least one maintainer accepts update responsibility.
- [ ] Metadata is accurate and contains no ranking manipulation.
