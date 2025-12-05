#!/bin/bash

# Git Push Script for Bitcoin24 Repository
# This script initializes and pushes the repository to GitHub

echo "🚀 Setting up Bitcoin24 repository for GitHub..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    echo "   Windows: Download from https://git-scm.com/download/win"
    echo "   macOS: brew install git"
    echo "   Linux: sudo apt-get install git (Ubuntu/Debian)"
    exit 1
fi

# Initialize git repository
echo "📁 Initializing git repository..."
git init

# Configure git user (you may need to update these)
echo "⚙️  Configuring git user..."
read -p "Enter your name (for git commits): " GIT_NAME
read -p "Enter your email (for git commits): " GIT_EMAIL

git config user.name "$GIT_NAME"
git config user.email "$GIT_EMAIL"

# Add all files
echo "📋 Adding files to git..."
git add .

# Create initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: Bitcoin24 knowledge base

- Comprehensive Bitcoin data recovery knowledge base
- Real-world production incident documentation  
- Multi-source data collection strategies
- Best practices and implementation guidelines
- Community contribution framework"

# Add remote origin
echo "🔗 Adding GitHub remote origin..."
git remote add origin https://github.com/nadinev6/bitcoin24.git

# Push to GitHub
echo "⬆️  Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Bitcoin24 repository successfully pushed to GitHub!"
echo ""
echo "🔗 Repository URL: https://github.com/nadinev6/bitcoin24"
echo "📊 Next steps:"
echo "   1. Go to your repository settings"
echo "   2. Add repository topics: bitcoin, financial-data, data-recovery, nextjs, timescaledb"
echo "   3. Enable Issues, Wikis, and Projects if desired"
echo "   4. Configure GitHub Pages (optional) for documentation hosting"
echo ""
echo "🎉 Your knowledge base is now live!"