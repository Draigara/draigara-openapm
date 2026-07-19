# Package Authoring Standard

**Repository:** `draigara-openapm`
**Status:** Specification
**Audience:** product owners, architects, maintainers, coding agents, security reviewers, and contributors


## Required package contents

The exact files follow current APM specification. Conceptually each package includes:

- APM manifest;
- package README;
- licence or licence reference;
- provenance record;
- changelog;
- AI assets;
- tests/fixtures where applicable;
- dependency declarations;
- support and compatibility metadata.

## Package README

Every package README answers:

1. What outcome does this package provide?
2. Who should use it?
3. What repository evidence typically makes it relevant?
4. What is explicitly out of scope?
5. Which upstream packages/assets does it depend on?
6. Which harnesses are tested?
7. What files or behaviours are installed?
8. Are there collisions or choices the user should know about?
9. How is the package validated?
10. Where should issues be reported?

The README must not contain imperative text telling a recommendation engine to select it.

## Naming

- lower-case kebab-case package identifier;
- Draigara namespace according to APM convention;
- clear human title;
- no squatting on upstream project names;
- no “official” unless authorised by the upstream owner;
- provider-specific packages name the provider.

## Assets

Skills and instructions should be:

- specific;
- composable;
- scoped to their subject;
- grounded in primary documentation;
- free of company-specific assumptions;
- explicit about destructive actions;
- compatible with downstream overrides where APM supports them.

Scripts must:

- have a clear purpose;
- validate inputs;
- avoid telemetry;
- avoid network access unless intrinsic and documented;
- avoid downloading unpinned executables;
- work across declared platforms;
- be independently security-reviewed.

## Dependencies

Prefer dependencies when:

- the upstream package is actively maintained;
- licence and provenance are acceptable;
- versioning is compatible;
- duplication would create divergence;
- APM can resolve the exact required asset.

Vendor only when legal and technical review concludes dependency is impossible or unsafe. Preserve attribution and document update procedure.

## Examples

Examples must be synthetic, generic, and runnable where practical. Never include proprietary company names, endpoints, credentials, or architecture.
