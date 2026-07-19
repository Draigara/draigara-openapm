param(
    [string] $OutputDirectory
)

$ErrorActionPreference = 'Stop'
$repositoryRoot = Split-Path -Parent $PSScriptRoot
$projectsRoot = Split-Path -Parent $repositoryRoot
$pluginSource = Join-Path $projectsRoot 'draigara-forge-plugin'
$fixtureRoot = Join-Path $repositoryRoot 'fixtures\packages'
$template = Join-Path $repositoryRoot 'fixtures\local-marketplace\marketplace.apm.yml'

if (-not (Test-Path -LiteralPath (Join-Path $pluginSource 'apm.yml'))) {
    throw "Forge plugin source was not found at $pluginSource"
}

if ([string]::IsNullOrWhiteSpace($OutputDirectory)) {
    $OutputDirectory = Join-Path ([System.IO.Path]::GetTempPath()) ("draigara-openapm-local-" + [Guid]::NewGuid().ToString('N'))
}

$resolvedOutput = [System.IO.Path]::GetFullPath($OutputDirectory)
if (Test-Path -LiteralPath $resolvedOutput) { throw "Output directory already exists: $resolvedOutput" }

function Copy-TrackedTree([string] $Source, [string] $Destination) {
    New-Item -ItemType Directory -Path $Destination -Force | Out-Null
    $tracked = & git -C $Source ls-files
    if ($LASTEXITCODE -ne 0) { throw "Unable to enumerate tracked files in $Source" }
    foreach ($relative in $tracked) {
        $input = Join-Path $Source $relative
        if (-not (Test-Path -LiteralPath $input -PathType Leaf)) { continue }
        $output = Join-Path $Destination $relative
        New-Item -ItemType Directory -Path (Split-Path -Parent $output) -Force | Out-Null
        Copy-Item -LiteralPath $input -Destination $output
    }
}

$packages = Join-Path $resolvedOutput 'packages'
New-Item -ItemType Directory -Path $packages -Force | Out-Null
Copy-TrackedTree $pluginSource (Join-Path $packages 'draigara-forge')
Copy-Item -LiteralPath (Join-Path $fixtureRoot 'composition-smoke') -Destination (Join-Path $packages 'composition-smoke') -Recurse
Copy-Item -LiteralPath (Join-Path $fixtureRoot 'upstream-skill') -Destination (Join-Path $packages 'upstream-skill') -Recurse
Copy-Item -LiteralPath $template -Destination (Join-Path $resolvedOutput 'apm.yml')

Write-Output $resolvedOutput
