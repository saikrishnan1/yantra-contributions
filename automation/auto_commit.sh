#!/bin/bash
# Daily Yantra Mantra Automation
# This script makes fresh commits daily with rotating mantras

REPO_PATH="$HOME/yantra-contributions"

if [ ! -d "$REPO_PATH" ]; then
    echo "Error: Repository not found at $REPO_PATH"
    echo "Please run the initial yantra setup script first!"
    exit 1
fi

cd "$REPO_PATH"

# Get current date
CURRENT_DATE=$(date +"%Y-%m-%d %H:%M:%S")
DAY_OF_YEAR=$(date +%j)

# Rotate through yantras based on day of year
YANTRA_INDEX=$((DAY_OF_YEAR % 10))
MANTRAS=(
    "Om Shreem Hreem Shreem Kamale Kamalalaye Praseed Praseed"
    "Om Gam Ganapataye Namaha"
    "Om Dum Durgayei Namaha"
    "Om Shreem Om Hreem Shreem Hreem Kleem Shreem Kleem Vitteshvaraya Namaha"
    "Om Aim Saraswatyai Namaha"
    "Om Krim Kalikayai Namaha"
    "Om Tryambakam Yajamahe Sugandhim Pushtivardhanam"
    "Om Shreem Maha Lakshmiyei Namaha"
    "Om Hanumate Namaha"
    "Om Navagraha Devata Namaha"
)
YANTRA_NAMES=(
    "Sri Yantra"
    "Ganesh Yantra"
    "Durga Yantra"
    "Kubera Yantra"
    "Saraswati Yantra"
    "Kali Yantra"
    "Mahamrityunjaya Yantra"
    "Lakshmi Yantra"
    "Hanuman Yantra"
    "Navagraha Yantra"
)

TODAY_MANTRA="${MANTRAS[$YANTRA_INDEX]}"
TODAY_YANTRA="${YANTRA_NAMES[$YANTRA_INDEX]}"

# Create daily mantra entry
echo "" >> yantra_log.txt
echo "=== $CURRENT_DATE ===" >> yantra_log.txt
echo "🕉️ Daily Yantra: $TODAY_YANTRA" >> yantra_log.txt
echo "📿 Mantra: $TODAY_MANTRA" >> yantra_log.txt

# Make 1-3 commits (random for natural appearance)
NUM_COMMITS=$((RANDOM % 3 + 1))

for i in $(seq 1 $NUM_COMMITS); do
    git add yantra_log.txt
    git commit -m "🕉️ Daily meditation - $TODAY_YANTRA ($i/$NUM_COMMITS)" --quiet
done

# Auto-push (uncomment after initial setup and testing)
# git push origin main --quiet

echo "✨ Daily yantra meditation complete: $TODAY_YANTRA"
echo "📿 Mantra recited: $TODAY_MANTRA"
echo "💫 Commits made: $NUM_COMMITS"
echo ""
echo "To enable auto-push, edit this script and uncomment the git push line"