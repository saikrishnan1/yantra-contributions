#!/bin/bash
# Quick Setup - Run this after creating GitHub repo

echo "🕉️ Quick Yantra Setup"
echo "===================="
echo ""

# Verify we're in the right directory
if [ ! -f "README.md" ]; then
    echo "❌ Please run from yantra-contributions directory"
    exit 1
fi

# Choose yantra
echo "Select your yantra:"
echo "1) Sri Yantra (Prosperity)"
echo "2) Ganesh Yantra (Remove obstacles)"
echo "3) Durga Yantra (Protection)"
echo "4) Kubera Yantra (Wealth)"
echo "5) Saraswati Yantra (Knowledge)"
echo "6) Kali Yantra (Transformation)"
echo "7) Mahamrityunjaya Yantra (Health protection)"
echo "8) Lakshmi Yantra (Fortune)"
echo "9) Hanuman Yantra (Strength)"
echo "10) Navagraha Yantra (Planetary balance)"
echo ""
read -p "Enter choice (1-10): " CHOICE

case $CHOICE in
    1) SCRIPT="setup/01_sri_yantra.sh" ;;
    2) SCRIPT="setup/02_ganesh_yantra.sh" ;;
    3) SCRIPT="setup/03_durga_yantra.sh" ;;
    4) SCRIPT="setup/04_kubera_yantra.sh" ;;
    5) SCRIPT="setup/05_saraswati_yantra.sh" ;;
    6) SCRIPT="setup/06_kali_yantra.sh" ;;
    7) SCRIPT="setup/07_mahamrityunjaya_yantra.sh" ;;
    8) SCRIPT="setup/08_lakshmi_yantra.sh" ;;
    9) SCRIPT="setup/09_hanuman_yantra.sh" ;;
    10) SCRIPT="setup/10_navagraha_yantra.sh" ;;
    *)
        echo "❌ Invalid choice"
        exit 1
        ;;
esac

# Make executable
chmod +x $SCRIPT

# Run setup
echo ""
echo "🕉️ Running yantra setup..."
./$SCRIPT

# Push to GitHub
echo ""
read -p "Push to GitHub now? (y/n): " PUSH
if [ "$PUSH" = "y" ]; then
    git push -u origin main
    echo ""
    echo "✨ Complete! Check your GitHub profile in 24 hours!"
else
    echo ""
    echo "⚠️  Remember to push: git push -u origin main"
fi

# Setup automation
echo ""
read -p "Setup daily automation? (y/n): " AUTO
if [ "$AUTO" = "y" ]; then
    chmod +x automation/auto_commit.sh
    ./automation/auto_commit.sh
    echo ""
    echo "✨ Test successful! Now installing cron job..."
    chmod +x automation/install_cron.sh
    ./automation/install_cron.sh
fi

echo ""
echo "🕉️ Setup complete! May your contributions be blessed!"