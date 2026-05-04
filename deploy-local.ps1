param(
  [string]$Target = "public_html\ldp_FORMATION_ia"
)

$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$targetPath = Join-Path $root $Target
$assetsTarget = Join-Path $targetPath "assets"

New-Item -ItemType Directory -Force -Path $targetPath | Out-Null
New-Item -ItemType Directory -Force -Path $assetsTarget | Out-Null

Copy-Item -LiteralPath (Join-Path $root "index.html") -Destination (Join-Path $targetPath "index.html") -Force
Copy-Item -LiteralPath (Join-Path $root "styles.css") -Destination (Join-Path $targetPath "styles.css") -Force
Copy-Item -LiteralPath (Join-Path $root ".nojekyll") -Destination (Join-Path $targetPath ".nojekyll") -Force
Copy-Item -LiteralPath (Join-Path $root "assets\logo-clprepas.webp") -Destination (Join-Path $assetsTarget "logo-clprepas.webp") -Force
Copy-Item -LiteralPath (Join-Path $root "assets\hero-ia-strategie.png") -Destination (Join-Path $assetsTarget "hero-ia-strategie.png") -Force

Write-Host "Local deploy ready: $targetPath"
Write-Host "Local URL: http://localhost:8080/ldp_FORMATION_ia/"
