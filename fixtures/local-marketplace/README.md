# Generated local marketplace

Run `tools/New-LocalMarketplace.ps1` from the repository root. It creates a private scratch catalogue containing copies of the sibling Forge plugin and local composition fixtures. APM forbids path traversal in marketplace sources, so the scratch copy is intentional and is never a production artifact.
