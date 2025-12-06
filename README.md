# Polymer Forge Solutions

A modern React + TypeScript + Vite web application.

## Deployment

This project is configured for easy deployment on multiple platforms. Choose one of the following options:

### Option 1: Deploy to Vercel (Recommended)

1. **Install Vercel CLI** (if not already installed):
   ```bash
   npm install -g vercel
   ```

2. **Deploy**:
   ```bash
   vercel
   ```
   Follow the prompts to link your project and deploy.

   Or deploy directly from GitHub:
   - Push your code to GitHub
   - Go to [vercel.com](https://vercel.com)
   - Import your repository
   - Vercel will automatically detect the Vite configuration and deploy

### Option 2: Deploy to Netlify

1. **Install Netlify CLI** (if not already installed):
   ```bash
   npm install -g netlify-cli
   ```

2. **Build the project**:
   ```bash
   npm install
   npm run build
   ```

3. **Deploy**:
   ```bash
   netlify deploy --prod
   ```

   Or deploy directly from GitHub:
   - Push your code to GitHub
   - Go to [netlify.com](https://netlify.com)
   - Import your repository
   - Netlify will automatically detect the build settings

### Option 3: Manual Build & Deploy

1. **Install dependencies**:
   ```bash
   npm install
   ```

2. **Build the project**:
   ```bash
   npm run build
   ```

3. **Deploy the `dist` folder** to any static hosting service:
   - GitHub Pages
   - AWS S3 + CloudFront
   - Azure Static Web Apps
   - Any web server

## Development

```bash
npm install
npm run dev
```

## Build

```bash
npm run build
```

The built files will be in the `dist` directory.
