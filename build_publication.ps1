$ErrorActionPreference = "Stop"

$paperDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoDir = Split-Path -Parent $paperDir
$source = Join-Path $paperDir "reference-relative-believability.md"
$css = Join-Path $paperDir "publication.css"
$html = Join-Path $paperDir "reference-relative-believability.html"
$pdf = Join-Path $paperDir "reference-relative-believability.pdf"
$arxivDir = Join-Path $paperDir "arxiv"
$arxivTex = Join-Path $arxivDir "reference-relative-believability.tex"
$figureSvg = Join-Path $paperDir "assets\two-tier-avatar-engine.svg"
$figurePng = Join-Path $paperDir "assets\two-tier-avatar-engine.png"
$arxivMd = Join-Path $arxivDir "_reference-relative-believability-arxiv.md"
$pdfRenderer = Join-Path $paperDir "render_publication_pdf.mjs"

$chromeCandidates = @(
  "C:\Program Files\Google\Chrome\Application\chrome.exe",
  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe",
  "C:\Program Files\Microsoft\Edge\Application\msedge.exe",
  "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
)

$chrome = $chromeCandidates | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $chrome) {
  throw "Chrome or Edge is required to print the publication PDF."
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
  --metadata pagetitle="Reference-relative believability" `
  --output $html

node $pdfRenderer $html $pdf $chrome

$arxivSource = (Get-Content -Path $source -Raw)
$arxivSource = $arxivSource -replace '(?m)^# Reference-relative believability: identity, realism, and interactivity in photoreal human avatars\r?\n\r?\n', ''
$arxivSource = $arxivSource.Replace("assets/two-tier-avatar-engine.svg", "assets/two-tier-avatar-engine.png")
Set-Content -Path $arxivMd -Value $arxivSource -Encoding utf8

pandoc $arxivMd `
  --from gfm `
  --to latex `
  --standalone `
  --resource-path $paperDir `
  --metadata title="Reference-relative believability: identity, realism, and interactivity in photoreal human avatars" `
  --metadata author="D. B. Havery" `
  --output $arxivTex

Remove-Item -Path $arxivMd -Force

Write-Host "Built:"
Write-Host "  $html"
Write-Host "  $pdf"
Write-Host "  $arxivTex"
Write-Host "  $figurePng"
