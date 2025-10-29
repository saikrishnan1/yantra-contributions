#!/bin/bash
# Kali Yantra - Transformation and destruction of negativity
# Mantra: Om Krim Kalikayai Namaha

REPO_NAME="yantra-contributions"
REPO_PATH="$HOME/$REPO_NAME"

if [ ! -d "$REPO_PATH" ]; then
    echo "Error: Repository not found. Run Sri Yantra script first!"
    exit 1
fi

cd "$REPO_PATH"

echo "" >> yantra_log.txt
echo "🕉️ Kali Yantra - Transformation Pattern" >> yantra_log.txt
echo "Mantra: Om Krim Kalikayai Namaha" >> yantra_log.txt
echo "" >> yantra_log.txt

# Kali Yantra Pattern - 9x9 with powerful corner points
DATE=$(date -d "154 days ago" +"%Y-%m-%d 12:00:00")
for i in {1..16}; do
    echo "$(date -d "154 days ago" +"%Y-%m-%d") - Om Krim Kalikayai Namaha" >> yantra_log.txt
    git add yantra_log.txt
    export GIT_AUTHOR_DATE="$DATE"
    export GIT_COMMITTER_DATE="$DATE"
    git commit -m "🕉️ Kali Yantra - Transformation in progress" --quiet
done

echo "✨ Kali Yantra complete! Negativity is being destroyed!"