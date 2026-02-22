#!/bin/bash

# Saaz-e-Bharat VPS Deployment Script

echo "🚀 Starting Deployment for Saaz-e-Bharat..."

# 1. Update Code
echo "📥 Pulling latest changes from Git..."
git pull origin main

# 2. Install Dependencies
echo "📦 Installing Dependencies..."
npm run install:all

# 3. Build Frontend
echo "🏗️ Building Next.js Frontend..."
cd frontend
npm run build
cd ..

# 4. Restart PM2 Processes
echo "🔄 Reloading PM2 Processes..."
pm2 reload ecosystem.config.js || pm2 start ecosystem.config.js

# 5. Save PM2 State
pm2 save

echo "✅ Deployment Complete! App is running."
