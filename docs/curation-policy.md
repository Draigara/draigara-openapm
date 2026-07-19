# Curation Policy

**Repository:** `draigara-openapm`
**Status:** Specification
**Audience:** product owners, architects, maintainers, coding agents, security reviewers, and contributors


## Acceptance principles

A package is accepted when it is:

- useful to a recognisable engineering audience;
- materially better than asking a general model without assets;
- maintainable;
- legally distributable;
- secure enough for its declared operations;
- based on reliable upstream sources;
- tested in declared harnesses;
- scoped so composition remains understandable.

Popularity alone is not sufficient.

## Review stages

1. **Charter:** purpose, audience, boundaries, upstream candidates, risks.
2. **Upstream review:** source quality, activity, licence, security, duplication.
3. **Prototype:** APM package compiles and deploys into fixture harnesses.
4. **Behaviour evaluation:** representative tasks show value and no regressions.
5. **Security review:** scripts, hooks, MCP, network, and destructive guidance.
6. **Maintainer review:** ownership and update commitment.
7. **Release candidate:** reproducibility, provenance, notices.
8. **Publication:** independent version/tag and marketplace update.

## Removal and deprecation

Reasons:

- abandoned or compromised upstream;
- licence incompatibility;
- persistent poor quality;
- superseded package;
- dangerous guidance;
- name or ownership dispute.

Deprecation metadata points to a replacement where one exists. Removal from the latest marketplace does not rewrite historical releases. Security revocation may require stronger measures documented in an incident advisory.

## Neutrality

Draigara OpenAPM Community may be opinionated, but it must be transparent. Avoid covert commercial preference. Provider packages should be based on genuine workflow differences, not marketing.

## Conflicts of interest

Maintainers disclose financial or employment relationships relevant to package selection. Review by an unconflicted maintainer is required for affected packages.
