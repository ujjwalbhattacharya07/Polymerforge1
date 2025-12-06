# Vercel Deployment Helper Script
# This script opens Vercel's deployment page and provides instructions

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Vercel Deployment - No Installation Required" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Option 1: Deploy via Vercel Web Interface" -ForegroundColor Yellow
Write-Host "1. Opening Vercel dashboard..." -ForegroundColor Green
Start-Process "https://vercel.com/new"

Write-Host ""
Write-Host "2. Sign in with GitHub (or create account)" -ForegroundColor Green
Write-Host ""
Write-Host "3. You have two options:" -ForegroundColor Yellow
Write-Host "   a) Import from GitHub (recommended):" -ForegroundColor White
Write-Host "      - Create a repo on GitHub first" -ForegroundColor Gray
Write-Host "      - Upload this folder to GitHub" -ForegroundColor Gray
Write-Host "      - Import the repo in Vercel" -ForegroundColor Gray
Write-Host ""
Write-Host "   b) Deploy via Vercel CLI (if you get Node.js later):" -ForegroundColor White
Write-Host "      - Run: npx vercel" -ForegroundColor Gray
Write-Host ""

Write-Host "Your project is already configured with vercel.json!" -ForegroundColor Green
Write-Host "Vercel will automatically detect Vite and build settings." -ForegroundColor Green
Write-Host ""

Write-Host "Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

