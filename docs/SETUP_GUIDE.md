# 🕉️ Complete Setup Guide

## Prerequisites

- Git installed
- GitHub account
- Terminal access (Linux/Mac) or Git Bash (Windows)

## Step-by-Step Setup

### 1. Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `yantra-contributions`
3. Set to **Public** (required for contribution graph)
4. **Do NOT** initialize with README
5. Click "Create repository"
6. Copy the repository URL

### 2. Clone This Project

```bash
cd ~
git clone 
cd yantra-contributions
```

### 3. Run Initial Yantra Setup

Choose ONE yantra to start with:

```bash
chmod +x setup/*.sh
./setup/01_sri_yantra.sh
```

### 4. Configure Git Remote

Edit the yantra script and add your GitHub URL:

```bash
nano setup/01_sri_yantra.sh
# Find and uncomment these lines:
# git remote add origin https://github.com/YOUR_USERNAME/yantra-contributions.git
# git push -u origin main
```

Run the script again:

```bash
./setup/01_sri_yantra.sh
```

### 5. Push to GitHub

```bash
cd ~/yantra-contributions
git push -u origin main
```

### 6. Setup Daily Automation

```bash
chmod +x automation/*.sh
./automation/auto_commit.sh  # Test it first
```

Edit to enable auto-push:

```bash
nano automation/auto_commit.sh
# Uncomment: git push origin main --quiet
```

### 7. Install Cron Job

```bash
./automation/install_cron.sh
```

Or manually:

```bash
crontab -e
# Add: 0 9 * * * cd ~/yantra-contributions && ./automation/auto_commit.sh
```

### 8. Verify

Wait 24 hours and check your GitHub profile!

## Alternative: GitHub Actions

Copy the workflow file:

```bash
mkdir -p .github/workflows
cp automation/github_actions.yml .github/workflows/
git add .github/workflows/
git commit -m "Add GitHub Actions automation"
git push
```

🕉️ Om Shanti Shanti Shanti 🕉️