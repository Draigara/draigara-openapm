# Package Versioning and Release

**Repository:** `draigara-openapm`
**Status:** Specification
**Audience:** product owners, architects, maintainers, coding agents, security reviewers, and contributors


## Independent versions

Each package uses semantic versioning independently. A monorepo tag convention should be unambiguous:

```text
engineering-foundations--v1.2.0
dotnet-engineering--v2.0.0
gitlab-delivery--v1.1.3
```

Do not bump every package for an unrelated change.

## Change classification

Major:

- removes or renames installed assets;
- changes commands or agent behaviour incompatibly;
- changes required downstream configuration;
- switches provider semantics;
- raises compatibility floor substantially;
- changes dependency composition with breaking effects.

Minor:

- adds compatible assets;
- adds optional guidance;
- materially improves behaviour without breaking names/contracts;
- adds a supported harness.

Patch:

- fixes wording or defects;
- updates safe compatible dependencies;
- corrects metadata;
- adds tests.

## Release process

1. package-specific changelog entry;
2. APM validation;
3. dependency/provenance diff;
4. licence review if dependencies changed;
5. composition and behaviour tests;
6. maintainer approval;
7. tag;
8. immutable release artifact;
9. marketplace index update;
10. verify installation from the published source.

## Provenance

Each artifact maps to:

- repository commit;
- workflow run;
- package manifest digest;
- dependency manifest;
- SBOM/notice bundle;
- attestation.

## Pre-releases

Use semantic pre-release identifiers. The stable marketplace excludes them unless the user explicitly selects a preview channel/source.
