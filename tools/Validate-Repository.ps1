$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$errors = [System.Collections.Generic.List[string]]::new()

foreach ($required in @('NOTICE', 'TRADEMARKS.md')) {
    if (-not (Test-Path -LiteralPath (Join-Path $root $required))) { $errors.Add("Missing legal notice: $required") }
}

foreach ($required in @(
    'docs/package-charters/repository-documentation.md',
    'docs/provenance/repository-documentation.md',
    'fixtures/repository-documentation/baseline.md',
    'fixtures/repository-documentation/expected-checks.json',
    'packages/repository-documentation/apm.yml',
    'packages/repository-documentation/LICENSE',
    'packages/repository-documentation/NOTICE',
    'packages/repository-documentation/TRADEMARKS.md',
    'packages/repository-documentation/README.md',
    'packages/repository-documentation/.apm/skills/repository-documentation/SKILL.md'
)) {
    if (-not (Test-Path -LiteralPath (Join-Path $root $required))) {
        $errors.Add("Missing repository-documentation contract file: $required")
    }
}

$active = @('README.md', 'AGENTS.md', 'PRODUCT-CONTEXT.md') + (Get-ChildItem (Join-Path $root 'docs') -File | ForEach-Object { "docs/$($_.Name)" })
foreach ($relative in $active) {
    $content = Get-Content -Raw -LiteralPath (Join-Path $root $relative)
    if ($content -match 'draigara-open(?!apm)|globally installed native executable|Native AOT|Bridge protocol|process bridge|plan.?token|exact APM plan|C:\\Projects') {
        $errors.Add("$relative contains superseded marketplace or integration identity")
    }
}

$manifest = Get-Content -Raw -LiteralPath (Join-Path $root 'apm.yml')
$license = Get-Content -Raw -LiteralPath (Join-Path $root 'LICENSE')
if ($manifest -notmatch '(?m)^license: Apache-2\.0$') {
    $errors.Add('apm.yml must declare Apache-2.0')
}
if ($license -notmatch '^\s*Apache License\s+Version 2\.0, January 2004' -or $license -notmatch '7\. Disclaimer of Warranty\.' -or $license -notmatch '8\. Limitation of Liability\.') {
    $errors.Add('LICENSE must contain the official Apache License 2.0 terms')
}
foreach ($required in @(
    'name: draigara-openapm',
    'version: 0.1.0-preview.0',
    'name: draigara-forge',
    'source: draigara-forge-plugin',
    'include_prerelease: true',
    'name: superpowers',
    'source: github.com/obra/superpowers',
    'name: frontend-design',
    'source: github.com/anthropics/skills',
    'name: security-review',
    'source: github.com/github/awesome-copilot',
    'name: caveman',
    'source: github.com/JuliusBrussee/caveman',
    'name: repository-documentation',
    'source: ./packages/repository-documentation',
    'codex: {}',
    'claude: {}'
)) {
    if (-not $manifest.Contains($required)) { $errors.Add("apm.yml is missing required production declaration: $required") }
}
if ($manifest -match 'fixture-|\.\./|0\.0\.0-development') { $errors.Add('Production apm.yml contains a fixture, traversal, or development version') }
foreach ($commit in @('fa0fa64bdc967915dc8399e803be67759e1e62b8', '26fe2d126bf79aafb38f43344d450b69632200f8')) {
    if (-not $manifest.Contains("ref: $commit")) { $errors.Add("apm.yml is missing reviewed immutable ref: $commit") }
}

foreach ($name in @('draigara-forge', 'superpowers', 'frontend-design', 'security-review', 'caveman', 'repository-documentation')) {
    if (-not (Test-Path -LiteralPath (Join-Path $root "docs/provenance/$name.md"))) {
        $errors.Add("Missing provenance record for $name")
    }
}

$expectationsPath = Join-Path $root 'fixtures/repository-documentation/expected-checks.json'
$skillPath = Join-Path $root 'packages/repository-documentation/.apm/skills/repository-documentation/SKILL.md'
if (Test-Path -LiteralPath $expectationsPath) {
    try { $expectations = Get-Content -Raw -LiteralPath $expectationsPath | ConvertFrom-Json }
    catch { $errors.Add('Invalid repository-documentation expected-checks.json'); $expectations = $null }
    if ($null -ne $expectations -and (Test-Path -LiteralPath $skillPath)) {
        $skill = Get-Content -Raw -LiteralPath $skillPath
        foreach ($required in @($expectations.requiredSkillSections) + @($expectations.requiredGuidance)) {
            if (-not $skill.Contains($required)) { $errors.Add("repository-documentation skill is missing contract text: $required") }
        }
    }
}

$baselinePath = Join-Path $root 'fixtures/repository-documentation/baseline.md'
if (Test-Path -LiteralPath $baselinePath) {
    $baseline = Get-Content -Raw -LiteralPath $baselinePath
    if ($baseline -notmatch 'C:\\Projects') { $errors.Add('Repository-documentation baseline no longer covers a machine-specific path') }
    if ($baseline -notmatch 'works everywhere') { $errors.Add('Repository-documentation baseline no longer covers an unsupported platform claim') }
    if ($baseline.IndexOf('## Install') -lt 0 -or $baseline.IndexOf('## Development') -gt $baseline.IndexOf('## Install')) {
        $errors.Add('Repository-documentation baseline no longer buries installation after development setup')
    }
}

foreach ($relative in @('.claude-plugin/marketplace.json', '.agents/plugins/marketplace.json')) {
    $path = Join-Path $root $relative
    if (-not (Test-Path -LiteralPath $path)) {
        $errors.Add("Missing APM-generated marketplace: $relative")
        continue
    }
    try { Get-Content -Raw -LiteralPath $path | ConvertFrom-Json | Out-Null }
    catch { $errors.Add("Invalid generated marketplace JSON: $relative") }
}

if ($errors.Count -gt 0) { $errors | ForEach-Object { Write-Error $_ }; exit 1 }
Write-Output 'Draigara OpenAPM repository validation passed.'
