# Marketplace Testing and Quality

**Repository:** `draigara-openapm`
**Status:** Specification
**Audience:** product owners, architects, maintainers, coding agents, security reviewers, and contributors


## Validation layers

### APM validation

- manifest schema;
- dependency resolution;
- lock/reproducibility where supported;
- compile;
- deployment into supported harness fixture;
- marketplace search/index validation.

### Package structure

- README, licence, changelog, provenance;
- no unexpected binaries;
- no secret patterns;
- referenced files exist;
- declared assets match payload;
- line endings and executable bits are correct.

### Composition

Test representative combinations to detect:

- duplicate commands;
- conflicting agent names;
- overwritten instruction files;
- incompatible hooks;
- script filename collisions;
- contradictory global instructions;
- excessive context footprint.

Provider-specific packages are tested separately and in intended higher-level combinations.

### Behaviour

Each package defines task fixtures and expected invariants. Do not assert exact model prose. Assess whether assets improve task quality, respect safety, and avoid cross-provider assumptions.

### Security

- static script analysis;
- dependency and licence scan;
- network behaviour;
- destructive action review;
- prompt injection resistance;
- MCP server permission review;
- provenance verification.

## Quality scorecard

Maintainer-facing scorecard:

- documentation completeness;
- behaviour evaluation coverage;
- harness coverage;
- dependency freshness;
- security status;
- licence status;
- support ownership;
- context/token footprint.

The scorecard is transparent and is not a hidden Forge ranking signal.
