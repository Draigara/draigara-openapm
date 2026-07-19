# Company Marketplace Layering Example

**Repository:** `draigara-openapm`
**Status:** Specification
**Audience:** product owners, architects, maintainers, coding agents, security reviewers, and contributors


## Purpose

Show how an organisation can build private packages from public Draigara and other APM packages without requiring Forge to understand composition.

## Example

A private marketplace exposes:

```text
Company API Engineering
Company Frontend Engineering
Company Data Platform Integration
Company Delivery Workflow
```

The APM manifest for `Company API Engineering` may declare dependencies conceptually equivalent to:

```text
Draigara .NET Engineering
Draigara Aspire Engineering
Draigara Engineering Foundations
Draigara GitLab Delivery
Draigara Jira Work Management
Company Security Standards
Company Platform Integration
Company Architecture Decisions
```

The private package can also override or extend assets according to official APM semantics.

## Forge experience

Forge retrieves only the private marketplace's exposed entries and may recommend:

```text
[x] Company API Engineering
[ ] Company Delivery Workflow
```

Forge does not need to know why the first package resolves to .NET, Aspire, GitLab, Jira, or company assets. After selection, APM reports the actual plan.

## Company responsibilities

- select and pin downstream packages;
- define company-specific standards;
- verify licence and provenance;
- test combinations;
- version and publish top-level packages;
- write accurate metadata;
- establish governance;
- handle GitHub/GitLab/Bitbucket/Azure DevOps and Jira/Linear/Trello/Azure Boards according to actual organisational choices.

## Avoid

- publishing one package per trivial file;
- requiring developers to select every downstream component manually;
- encoding company policy in Forge prompts;
- forking public packages without need;
- leaking private package metadata into Draigara OpenAPM Community.
