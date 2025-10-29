#!/bin/bash
# Kubera Yantra - Attracts wealth and abundance
# Mantra: Om Shreem Om Hreem Shreem Hreem Kleem Shreem Kleem Vitteshvaraya Namaha

REPO_NAME="yantra-contributions"
REPO_PATH="$HOME/$REPO_NAME"

if [ ! -d "$REPO_PATH" ]; then
    echo "Error: Repository not found. Run Sri Yantra script first!"
    exit 1
fi

cd "$REPO_PATH"

echo "" >> yantra_log.txt
echo "🕉️ Kubera Yantra - Wealth Attraction Pattern" >> yantra_log.txt
echo "Mantra: Om Shreem Om Hreem Shreem Hreem Kleem Shreem Kleem Vitteshvaraya Namaha" >> yantra_log.txt
echo "" >> yantra_log.txt

# Kubera Yantra Pattern - 9x9 square wealth mandala
# Full square representing abundance
DATE=$(date -d "196 days ago" +"%Y-%m-%d 12:00:00")
for i in {1..16}; do
    echo "$(date -d "196 days ago" +"%Y-%m-%d") - Om Shreem Om Hreem Shreem Hreem Kleem Shreem Kleem Vitteshvaraya Namaha" >> yantra_log.txt
    git add yantra_log.txt
    export GIT_AUTHOR_DATE="$DATE"
    export GIT_COMMITTER_DATE="$DATE"
    git commit -m "🕉️ Kubera Yantra - Wealth flowing in" --quiet
done

echo "✨ Kubera Yantra complete! Abundance is manifesting!"