# Run Local Production Build (No Admin Rights Required)

Since you can't install Node.js with admin rights, here are **two options** to run the production build:

## Option 1: Portable Node.js (Recommended - No Installation)

### Step 1: Download Portable Node.js
1. Go to: https://nodejs.org/dist/v20.18.0/node-v20.18.0-win-x64.zip
2. Download the ZIP file (no installation needed!)

### Step 2: Extract and Use
1. Extract the ZIP to a folder (e.g., `C:\Users\Ujjwal.Bhattacharya\Downloads\node-portable`)
2. Add to PATH temporarily for this session:

```powershell
# In PowerShell, run:
$env:PATH = "C:\Users\Ujjwal.Bhattacharya\Downloads\node-portable\node-v20.18.0-win-x64;$env:PATH"
```

### Step 3: Build and Run
```powershell
# Navigate to project
cd "C:\Users\Ujjwal.Bhattacharya\Downloads\polymer-forge-solutions-main"

# Install dependencies (first time only)
npm install

# Build for production
npm run build

# Preview production build
npm run preview
```

The site will be available at `http://localhost:4173` (or the port shown)

---

## Option 2: Use Online Build Service (Easiest)

### Using StackBlitz (Runs in Browser - No Installation)
1. Go to: https://stackblitz.com
2. Click "Import from GitHub" or "New Project"
3. Upload your project files
4. It will automatically build and run!

### Using CodeSandbox
1. Go to: https://codesandbox.io
2. Create new project → Import from local
3. Upload your project folder
4. It builds automatically!

---

## Option 3: Quick Test Script

I'll create a PowerShell script that helps you set up portable Node.js automatically.

