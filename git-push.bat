@echo off
echo 🚀 Setting up Bitcoin24 repository for GitHub...

REM Check if git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git is not installed. Please install Git first.
    echo    Download from: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo 📁 Initializing git repository...
git init

echo ⚙️ Configuring git user...
set /p GIT_NAME="Enter your name (for git commits): "
set /p GIT_EMAIL="Enter your email (for git commits): "

git config user.name "%GIT_NAME%"
git config user.email "%GIT_EMAIL%"

echo 📋 Adding files to git...
git add .

echo 💾 Creating initial commit...
git commit -m "Initial commit: Bitcoin24 knowledge base

- Comprehensive Bitcoin data recovery knowledge base
- Real-world production incident documentation  
- Multi-source data collection strategies
- Best practices and implementation guidelines
- Community contribution framework"

echo 🔗 Adding GitHub remote origin...
git remote add origin https://github.com/nadinev6/bitcoin24.git

echo ⬆️ Pushing to GitHub...
git branch -M main
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ✅ Bitcoin24 repository successfully pushed to GitHub!
    echo.
    echo 🔗 Repository URL: https://github.com/nadinev6/bitcoin24
    echo 📊 Next steps:
    echo    1. Go to your repository settings
    echo    2. Add repository topics: bitcoin, financial-data, data-recovery, nextjs, timescaledb
    echo    3. Enable Issues, Wikis, and Projects if desired
    echo    4. Configure GitHub Pages (optional) for documentation hosting
    echo.
    echo 🎉 Your knowledge base is now live!
) else (
    echo ❌ Push failed. Please check your GitHub credentials and try again.
    echo    You may need to use a personal access token instead of your password.
)

pause