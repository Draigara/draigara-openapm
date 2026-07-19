# Marketplace Security and Supply Chain

**Repository:** `draigara-openapm`
**Status:** Specification
**Audience:** product owners, architects, maintainers, coding agents, security reviewers, and contributors


## Risk profile

AI assets can influence developer actions and may include executable scripts, hooks, MCP configuration, or commands. A compromised package can affect many repositories.

## Controls

- protected branches and mandatory reviews;
- signed or attested releases;
- dependency pinning;
- licence/provenance records;
- secret scanning;
- CodeQL/static analysis where applicable;
- isolated package compilation/deployment tests;
- restricted CI permissions;
- no pull-request secrets for untrusted forks;
- release environments;
- artifact allow-lists;
- checksum verification;
- maintainer ownership for each package.

## Script policy

Scripts require elevated review. They must declare:

- inputs;
- outputs;
- filesystem scope;
- network access;
- subprocesses;
- destructive effects;
- supported operating systems;
- rollback or idempotency;
- security assumptions.

Scripts that download and execute remote content are prohibited unless a dedicated ADR and verification mechanism are accepted.

## Hooks and MCP

Hooks and MCP integrations expand attack surface. Packages containing them require:

- least-privilege configuration;
- explicit user-visible behaviour;
- no silent credential collection;
- safe defaults;
- origin and version pinning;
- threat model;
- dedicated tests.

## Incident response

For a compromised package:

1. suspend affected publication;
2. publish advisory;
3. revoke or mark affected versions according to APM capabilities;
4. identify dependent Draigara packages;
5. release safe replacements;
6. notify downstream company marketplace maintainers;
7. preserve forensic data;
8. publish post-incident review.
