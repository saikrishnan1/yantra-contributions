# 🔧 Troubleshooting Guide

## Pattern Not Showing

**Issue:** Yantra pattern doesn't appear in contribution graph

**Solutions:**
- Repository must be **public**
- Wait 24 hours for GitHub to process
- Check commits exist: `git log`
- Ensure commits are on default branch (main/master)

## Cron Not Running

**Issue:** Daily automation not executing

**Solutions:**

Check cron service:
```bash
sudo service cron status
```

Check cron logs:
```bash
grep CRON /var/log/syslog
```

Test script manually:
```bash
cd ~/yantra-contributions
./automation/auto_commit.sh
```

Verify crontab:
```bash
crontab -l
```

## Push Failures

**Issue:** Cannot push to GitHub

**Solutions:**

Setup SSH keys:
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
cat ~/.ssh/id_ed25519.pub
# Add to GitHub: Settings → SSH Keys
```

Or use credential helper:
```bash
git config --global credential.helper store
git push  # Enter credentials once
```

Test connection:
```bash
git push origin main
```

## Script Permissions

**Issue:** Permission denied when running scripts

**Solution:**
```bash
chmod +x setup/*.sh
chmod +x automation/*.sh
```

## Date Command Issues (Mac)

**Issue:** `date -d` doesn't work on Mac

**Solution:**
Install GNU coreutils:
```bash
brew install coreutils
# Use 'gdate' instead of 'date'
```

Or modify scripts to use:
```bash
date -v-364d  # Mac version
```

🕉️ May your practice be blessed! 🕉️
```

---

## 🚀 Quick Start Commands

```bash
# 1. Create GitHub repo named 'yantra-contributions' (public)

# 2. Create project structure
mkdir -p ~/yantra-contributions/{setup,automation,docs}
cd ~/yantra-contributions

# 3. Create all setup scripts
# Copy the scripts from above into their respective files

# 4. Make scripts executable
chmod +x setup/*.sh
chmod +x automation/*.sh

# 5. Edit setup/01_sri_yantra.sh and add your GitHub URL
nano setup/01_sri_yantra.sh
# Uncomment and modify:
# git remote add origin https://github.com/YOUR_USERNAME/yantra-contributions.git

# 6. Run initial yantra setup
./setup/01_sri_yantra.sh

# 7. Push to GitHub
git push -u origin main

# 8. Setup daily automation
./automation/auto_commit.sh  # Test first
nano automation/auto_commit.sh  # Uncomment the git push line

# 9. Install cron job
./automation/install_cron.sh