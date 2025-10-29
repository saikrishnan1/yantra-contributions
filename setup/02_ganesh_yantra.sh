#!/bin/bash
# Ganesh Yantra - Removes obstacles and brings success
# Mantra: Om Gam Ganapataye Namaha

REPO_NAME="yantra-contributions"
REPO_PATH="$HOME/$REPO_NAME"

if [ ! -d "$REPO_PATH" ]; then
    echo "Error: Repository not found. Run Sri Yantra script first!"
    exit 1
fi

cd "$REPO_PATH"

echo "" >> yantra_log.txt
echo "🕉️ Ganesh Yantra - Obstacle Removal Pattern" >> yantra_log.txt
echo "Mantra: Om Gam Ganapataye Namaha" >> yantra_log.txt
echo "" >> yantra_log.txt

# Ganesh Yantra Pattern - 9x9 with elephant head shape
# Top of the head
DATE=$(date -d "280 days ago" +"%Y-%m-%d 12:00:00")
for i in {1..8}; do
    echo "$(date -d "280 days ago" +"%Y-%m-%d") - Om Gam Ganapataye Namaha" >> yantra_log.txt
    git add yantra_log.txt
    export GIT_AUTHOR_DATE="$DATE"
    export GIT_COMMITTER_DATE="$DATE"
    git commit -m "🕉️ Ganesh Yantra manifestation - Removing obstacles" --quiet
done

# Face center - highest intensity
DATE=$(date -d "259 days ago" +"%Y-%m-%d 12:00:00")
for i in {1..16}; do
    echo "$(date -d "259 days ago" +"%Y-%m-%d") - Om Gam Ganapataye Namaha" >> yantra_log.txt
    git add yantra_log.txt
    export GIT_AUTHOR_DATE="$DATE"
    export GIT_COMMITTER_DATE="$DATE"
    git commit -m "🕉️ Ganesh Yantra manifestation - Divine presence" --quiet
done

echo "✨ Ganesh Yantra complete! Obstacles are being removed!"