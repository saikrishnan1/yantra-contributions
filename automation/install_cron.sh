#!/bin/bash
# Install cron job for daily automation

echo "🕉️ Installing Daily Yantra Meditation Cron Job"
echo ""
echo "Choose your schedule:"
echo "1) Daily at 9:00 AM"
echo "2) Twice daily (9 AM and 6 PM)"
echo "3) Every 6 hours"
echo "4) Custom schedule"
echo ""
read -p "Enter choice (1-4): " choice

case $choice in
    1)
        CRON_SCHEDULE="0 9 * * *"
        ;;
    2)
        CRON_SCHEDULE="0 9,18 * * *"
        ;;
    3)
        CRON_SCHEDULE="0 */6 * * *"
        ;;
    4)
        read -p "Enter custom cron schedule: " CRON_SCHEDULE
        ;;
    *)
        echo "Invalid choice"
        exit 1
        ;;
esac

CRON_COMMAND="cd ~/yantra-contributions && ./automation/auto_commit.sh"

# Check if cron job already exists
if crontab -l 2>/dev/null | grep -q "auto_commit.sh"; then
    echo "⚠️  Cron job already exists. Remove it first with: crontab -e"
    exit 1
fi

# Add cron job
(crontab -l 2>/dev/null; echo "$CRON_SCHEDULE $CRON_COMMAND") | crontab -

echo "✨ Cron job installed successfully!"
echo "📅 Schedule: $CRON_SCHEDULE"
echo ""
echo "To view: crontab -l"
echo "To remove: crontab -e (then delete the line)"