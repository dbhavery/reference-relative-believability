$ErrorActionPreference = "Stop"

$paperDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$source = Join-Path $paperDir "reference-relative-believability-peer-anon.md"
$css = Join-Path $paperDir "peer-review.css"
$html = Join-Path $paperDir "reference-relative-believability-peer-anon.html"
$pdf = Join-Path $paperDir "reference-relative-believability-peer-anon.pdf"
$arxivDir = Join-Path $paperDir "arxiv"
$arxivTex = Join-Path $arxivDir "reference-relative-believability-peer-anon.tex"
$figureSvg = Join-Path $paperDir "assets\two-tier-avatar-engine.svg"
$figurePng = Join-Path $paperDir "assets\two-tier-avatar-engine.png"
$arxivMd = Join-Path $arxivDir "_reference-relative-believability-peer-anon-arxiv.md"
$pdfRenderer = Join-Path $paperDir "render_publication_pdf.mjs"

$chromeCandidates = @(
  "C:\Program Files\Google\Chrome\Application\chrome.exe",
  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe",
  "C:\Program Files\Microsoft\Edge\Application\msedge.exe",
  "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
)

$chrome = $chromeCandidates | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $chrome) {
  throw "Chrome or Edge is required to print the anonymized review PDF."
}

New-Item -ItemType Directory -Force -Path $arxivDir | Out-Null

& $chrome `
  --headless=new `
  --disable-gpu `
  --screenshot="$figurePng" `
  --window-size=1600,900 `
  $figureSvg

pandoc $source `
  --from gfm `
  --to html5 `
  --standalone `
  --embed-resources `
  --resource-path $paperDir `
  --css $css `
  --metadata pagetitle="Reference-relative believability - anonymized review copy" `
  --output $html

node $pdfRenderer $html $pdf $chrome

$arxivSource = (Get-Content -Path $source -Raw)
$arxivSource = $arxivSource -replace '(?m)^# Reference-relative believability in photoreal human avatars: synthetic identity as a systems constraint\r?\n\r?\n', ''
$arxivSource = $arxivSource.Replace("assets/two-tier-avatar-engine.svg", "assets/two-tier-avatar-engine.png")
Set-Content -Path $arxivMd -Value $arxivSource -Encoding utf8

pandoc $arxivMd `
  --from gfm `
  --to latex `
  --standalone `
  --resource-path $paperDir `
  --metadata title="Reference-relative believability in photoreal human avatars: synthetic identity as a systems constraint" `
  --metadata author="Anonymous" `
  --output $arxivTex

Remove-Item -Path $arxivMd -Force

# Make the arXiv package self-contained: the .tex references assets/two-tier-avatar-engine.png
$arxivAssets = Join-Path $arxivDir "assets"
New-Item -ItemType Directory -Force -Path $arxivAssets | Out-Null
Copy-Item -Path $figurePng -Destination (Join-Path $arxivAssets "two-tier-avatar-engine.png") -Force

Write-Host "Built anonymized review copy:"
Write-Host "  $html"
Write-Host "  $pdf"
Write-Host "  $arxivTex"
