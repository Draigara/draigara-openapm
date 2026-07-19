$ErrorActionPreference = 'Stop'

$pins = @(
    @{
        Name = 'frontend-design'
        Remote = 'https://github.com/anthropics/skills.git'
        Ref = 'refs/heads/main'
        Expected = 'fa0fa64bdc967915dc8399e803be67759e1e62b8'
    },
    @{
        Name = 'security-review'
        Remote = 'https://github.com/github/awesome-copilot.git'
        Ref = 'refs/heads/main'
        Expected = '26fe2d126bf79aafb38f43344d450b69632200f8'
    }
)

foreach ($pin in $pins) {
    $output = & git ls-remote --exit-code $pin.Remote $pin.Ref 2>&1
    if ($LASTEXITCODE -ne 0) {
        throw "Unable to resolve reviewed upstream ref for $($pin.Name): $output"
    }

    $resolved = (($output | Select-Object -First 1) -split '\s+')[0].ToLowerInvariant()
    if ($resolved -ne $pin.Expected) {
        throw "$($pin.Name) upstream moved: expected $($pin.Expected), resolved $resolved. Review the change before updating provenance."
    }

    Write-Output "$($pin.Name): $resolved"
}

