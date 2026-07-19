$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$errors = [System.Collections.Generic.List[string]]::new()

$active = @('README.md', 'AGENTS.md', 'PRODUCT-CONTEXT.md') + (Get-ChildItem (Join-Path $root 'docs') -File | ForEach-Object { "docs/$($_.Name)" })
foreach ($relative in $active) {
    $content = Get-Content -Raw -LiteralPath (Join-Path $root $relative)
    if ($content -match 'draigara-open(?!apm)|globally installed native executable|Native AOT|Bridge protocol|process bridge|plan.?token|exact APM plan|C:\\Projects') {
        $errors.Add("$relative contains superseded marketplace or integration identity")
    }
}

$manifest = Get-Content -Raw -LiteralPath (Join-Path $root 'apm.yml')
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
    'codex: {}',
    'claude: {}'
)) {
    if (-not $manifest.Contains($required)) { $errors.Add("apm.yml is missing required production declaration: $required") }
}
if ($manifest -match 'fixture-|\.\./|0\.0\.0-development') { $errors.Add('Production apm.yml contains a fixture, traversal, or development version') }
foreach ($commit in @('fa0fa64bdc967915dc8399e803be67759e1e62b8', '26fe2d126bf79aafb38f43344d450b69632200f8')) {
    if (-not $manifest.Contains("ref: $commit")) { $errors.Add("apm.yml is missing reviewed immutable ref: $commit") }
}

foreach ($name in @('draigara-forge', 'superpowers', 'frontend-design', 'security-review', 'caveman')) {
    if (-not (Test-Path -LiteralPath (Join-Path $root "docs/provenance/$name.md"))) {
        $errors.Add("Missing provenance record for $name")
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
