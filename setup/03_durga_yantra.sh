#!/bin/bash
# Durga Yantra - Protection from negative energies and enemies
# Mantra: Om Dum Durgayei Namaha

REPO_NAME="yantra-contributions"
REPO_PATH="$HOME/$REPO_NAME"

if [ ! -d "$REPO_PATH" ]; then
    echo "Error: Repository not found. Run Sri Yantra script first!"
    exit 1
fi

cd "$REPO_PATH"

echo "" >> yantra_log.txt
echo "🕉️ Durga Yantra - Protection Pattern" >> yantra_log.txt
echo "Mantra: Om Dum Durgayei Namaha" >> yantra_log.txt
echo "" >> yantra_log.txt

# Durga Yantra Pattern - 9x9 with protective corners
# Four corners - protective shields
DATE=$(date -d "238 days ago" +"%Y-%m-%d 12:00:00")
for i in {1..4}; do
    echo "$(date -d "238 days ago" +"%Y-%m-%d") - Om Dum Durgayei Namaha" >> yantra_log.txt
    git add yantra_log.txt
    export GIT_AUTHOR_DATE="$DATE"
    export GIT_COMMITTER_DATE="$DATE"
    git commit -m "🕉️ Durga Yantra - Protection shield activated" --quiet
done

# Center - divine power
DATE=$(date -d "217 days ago" +"%Y-%m-%d 12:00:00")
for i in {1..16}; do
    echo "$(date -d "217 days ago" +"%Y-%m-%d") - Om Dum Durgayei Namaha" >> yantra_log.txt
    git add yantra_log.txt
    export GIT_AUTHOR_DATE="$DATE"
    export GIT_COMMITTER_DATE="$DATE"
    git commit -m "🕉️ Durga Yantra - Divine protection established" --quiet
done

echo "✨ Durga Yantra complete! Protection shields active!"