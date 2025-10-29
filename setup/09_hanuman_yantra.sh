#!/bin/bash
# Hanuman Yantra - Strength, courage and devotion
# Mantra: Om Hanumate Namaha

REPO_NAME="yantra-contributions"
REPO_PATH="$HOME/$REPO_NAME"

if [ ! -d "$REPO_PATH" ]; then
    echo "Error: Repository not found. Run Sri Yantra script first!"
    exit 1
fi

cd "$REPO_PATH"

echo "" >> yantra_log.txt
echo "🕉️ Hanuman Yantra - Strength Pattern" >> yantra_log.txt
echo "Mantra: Om Hanumate Namaha" >> yantra_log.txt
echo "" >> yantra_log.txt

# Hanuman Yantra Pattern - 9x9 powerful square
PATTERN=(
    "0 0 0 1 1 1 0 0 0"
    "0 0 1 2 2 2 1 0 0"
    "0 1 2 3 3 3 2 1 0"
    "0 1 3 4 4 4 3 1 0"
    "1 2 3 4 4 4 3 2 1"
    "0 1 3 4 4 4 3 1 0"
    "0 1 2 3 3 3 2 1 0"
    "0 0 1 2 2 2 1 0 0"
    "0 0 0 1 1 1 0 0 0"
)

for row in {0..8}; do
    IFS=' ' read -ra COLS <<< "${PATTERN[$row]}"
    for col in {0..8}; do
        INTENSITY=${COLS[$col]}
        if [ $INTENSITY -gt 0 ]; then
            DAYS_AGO=$((91 - row * 7 - col))
            DATE=$(date -d "$DAYS_AGO days ago" +"%Y-%m-%d 12:00:00")
            COMMITS=$((INTENSITY * 4))
            
            for i in $(seq 1 $COMMITS); do
                echo "$(date -d "$DAYS_AGO days ago" +"%Y-%m-%d") - Om Hanumate Namaha" >> yantra_log.txt
                git add yantra_log.txt
                export GIT_AUTHOR_DATE="$DATE"
                export GIT_COMMITTER_DATE="$DATE"
                git commit -m "🕉️ Hanuman Yantra - Strength building [$row,$col]" --quiet
            done
        fi
    done
done

echo "✨ Hanuman Yantra complete! Strength and courage activated!"