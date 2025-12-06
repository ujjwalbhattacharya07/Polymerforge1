# Simple Way to Run Production Build (No Admin, No Scripts)

## Quick Method: Manual Portable Node.js Setup

### Step 1: Download Node.js Portable
1. Open your browser and go to:
   ```
   https://nodejs.org/dist/v20.18.0/node-v20.18.0-win-x64.zip
   ```
2. Download the ZIP file to your Downloads folder

### Step 2: Extract It
1. Right-click the ZIP file → Extract All
2. Extract to: `C:\Users\Ujjwal.Bhattacharya\Downloads\node-portable`
3. You should have: `C:\Users\Ujjwal.Bhattacharya\Downloads\node-portable\node-v20.18.0-win-x64`

### Step 3: Use It (In PowerShell)
Run these commands one by one:

```powershell
# Add Node.js to PATH for this session
$env:PATH = "C:\Users\Ujjwal.Bhattacharya\Downloads\node-portable\node-v20.18.0-win-x64;$env:PATH"

# Verify it works
node --version
npm --version

# Navigate to your project (if not already there)
cd "C:\Users\Ujjwal.Bhattacharya\Downloads\polymer-forge-solutions-main"

# Install dependencies
npm install

# Build for production
npm run build

# Run production preview
npm run preview
```

Your site will open at `http://localhost:4173` (or similar port)

---

## Alternative: Use Online Service (Easiest!)

### Option A: StackBlitz (Recommended)
1. Go to https://stackblitz.com
2. Click "Import from GitHub" or "New Project"
3. Upload your project folder
4. It automatically builds and runs!

### Option B: CodeSandbox
1. Go to https://codesandbox.io
2. Click "Import Project"
3. Upload your project
4. Done!

---

## If You Have Python Installed

If Python is available, I can create a simple server script, but you still need to build the project first (which requires Node.js).

