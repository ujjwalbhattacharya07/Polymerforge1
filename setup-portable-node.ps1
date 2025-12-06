# Portable Node.js Setup Script (No Admin Required)
# This script downloads and sets up portable Node.js

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Portable Node.js Setup" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$nodeVersion = "v20.18.0"
$nodeUrl = "https://nodejs.org/dist/$nodeVersion/node-$nodeVersion-win-x64.zip"
$downloadPath = "$env:USERPROFILE\Downloads\node-portable"
$extractPath = "$downloadPath\node-$nodeVersion-win-x64"

Write-Host "Step 1: Creating directory..." -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path $downloadPath | Out-Null

Write-Host "Step 2: Downloading Node.js portable..." -ForegroundColor Yellow
Write-Host "This may take a few minutes..." -ForegroundColor Gray

try {
    $zipPath = "$downloadPath\node.zip"
    Invoke-WebRequest -Uri $nodeUrl -OutFile $zipPath -UseBasicParsing
    Write-Host "Download complete!" -ForegroundColor Green
} catch {
    Write-Host "Error downloading. Please download manually from:" -ForegroundColor Red
    Write-Host $nodeUrl -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Then extract to: $extractPath" -ForegroundColor Yellow
    exit 1
}

Write-Host "Step 3: Extracting..." -ForegroundColor Yellow
Expand-Archive -Path $zipPath -DestinationPath $downloadPath -Force
Write-Host "Extraction complete!" -ForegroundColor Green

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "  Setup Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "To use Node.js in this session, run:" -ForegroundColor Yellow
Write-Host "  `$env:PATH = `"$extractPath;$env:PATH`"" -ForegroundColor Cyan
Write-Host ""
Write-Host "Then verify with:" -ForegroundColor Yellow
Write-Host "  node --version" -ForegroundColor Cyan
Write-Host "  npm --version" -ForegroundColor Cyan
Write-Host ""
Write-Host "After that, you can run:" -ForegroundColor Yellow
Write-Host "  npm install" -ForegroundColor Cyan
Write-Host "  npm run build" -ForegroundColor Cyan
Write-Host "  npm run preview" -ForegroundColor Cyan
Write-Host ""

# Automatically add to PATH for this session
$env:PATH = "$extractPath;$env:PATH"

Write-Host "Node.js has been added to PATH for this session!" -ForegroundColor Green
Write-Host "Verifying installation..." -ForegroundColor Yellow

try {
    $nodeVersion = node --version
    $npmVersion = npm --version
    Write-Host "✓ Node.js: $nodeVersion" -ForegroundColor Green
    Write-Host "✓ npm: $npmVersion" -ForegroundColor Green
    Write-Host ""
    Write-Host "Ready to build! Run: npm install" -ForegroundColor Green
} catch {
    Write-Host "Please restart PowerShell and run the PATH command manually." -ForegroundColor Yellow
}

