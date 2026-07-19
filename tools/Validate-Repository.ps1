$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$errors = [System.Collections.Generic.List[string]]::new()

$active = @('README.md', 'AGENTS.md', 'PRODUCT-CONTEXT.md') + (Get-ChildItem (Join-Path $root 'docs') -File | ForEach-Object { "docs/$($_.Name)" })
foreach ($relative in $active) {
    $content = Get-Content -Raw -LiteralPath (Join-Path $root $relative)
    if ($content -match 'draigara-open(?!apm)|globally installed native executable|Bridge protocol|process bridge') {
        $errors.Add("$relative contains superseded marketplace or integration identity")
    }
}

$manifest = Get-Content -Raw -LiteralPath (Join-Path $root 'apm.yml')
foreach ($required in @('name: draigara-openapm', 'name: draigara-forge', 'source: draigara-forge-plugin', 'codex: {}', 'claude: {}')) {
    if (-not $manifest.Contains($required)) { $errors.Add("apm.yml is missing required production declaration: $required") }
}
if ($manifest -match 'fixture-|\.\./|0\.0\.0-development') { $errors.Add('Production apm.yml contains a fixture, traversal, or development version') }

if ($errors.Count -gt 0) { $errors | ForEach-Object { Write-Error $_ }; exit 1 }
Write-Output 'Draigara OpenAPM repository validation passed.'
