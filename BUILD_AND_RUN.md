# Build and Run Production Locally (Step-by-Step)

## Prerequisites: Portable Node.js

Since you can't install Node.js normally, use a portable version:

### 1. Download Node.js Portable
- Go to: https://nodejs.org/dist/v20.18.0/node-v20.18.0-win-x64.zip
- Save to: `C:\Users\Ujjwal.Bhattacharya\Downloads\`

### 2. Extract It
- Extract the ZIP to: `C:\Users\Ujjwal.Bhattacharya\Downloads\node-portable\`
- You should have: `C:\Users\Ujjwal.Bhattacharya\Downloads\node-portable\node-v20.18.0-win-x64\`

---

## Build and Run (Copy-Paste These Commands)

Open PowerShell in your project folder and run:

```powershell
# Step 1: Add Node.js to PATH (for this session only)
$env:PATH = "C:\Users\Ujjwal.Bhattacharya\Downloads\node-portable\node-v20.18.0-win-x64;$env:PATH"

# Step 2: Verify Node.js works
node --version
npm --version

# Step 3: Install dependencies (first time only - takes a few minutes)
npm install

# Step 4: Build for production
npm run build

# Step 5: Serve the production build
# Option A: Using npm preview (recommended)
npm run preview

# Option B: Using Python server (if npm preview doesn't work)
python3 serve-production.py
```

After running `npm run preview` or `python3 serve-production.py`, open:
**http://localhost:4173** in your browser

---

## Quick Reference

### Build Only
```powershell
$env:PATH = "C:\Users\Ujjwal.Bhattacharya\Downloads\node-portable\node-v20.18.0-win-x64;$env:PATH"
npm run build
```

### Run Production Server
```powershell
# Using npm
npm run preview

# OR using Python
python3 serve-production.py
```

### Stop Server
Press `Ctrl+C` in the terminal

---

## Troubleshooting

**"node is not recognized"**
- Make sure you ran the `$env:PATH` command
- Check the Node.js path is correct

**"Port already in use"**
- Close other applications using port 4173
- Or change the port in `vite.config.ts` or `serve-production.py`

**"dist folder not found"**
- Run `npm run build` first

---

## Alternative: Online Build Services

If portable Node.js doesn't work, use:
- **StackBlitz**: https://stackblitz.com (runs in browser)
- **CodeSandbox**: https://codesandbox.io (runs in browser)

