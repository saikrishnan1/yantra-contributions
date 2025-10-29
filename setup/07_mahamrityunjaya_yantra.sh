#!/bin/bash
# Mahamrityunjaya Yantra - Protection from death and diseases
# Mantra: Om Tryambakam Yajamahe Sugandhim Pushtivardhanam

REPO_NAME="yantra-contributions"
REPO_PATH="$HOME/$REPO_NAME"

if [ ! -d "$REPO_PATH" ]; then
    echo "Error: Repository not found. Run Sri Yantra script first!"
    exit 1
fi

cd "$REPO_PATH"

echo "" >> yantra_log.txt
echo "🕉️ Mahamrityunjaya Yantra - Protection Pattern" >> yantra_log.txt
echo "Mantra: Om Tryambakam Yajamahe Sugandhim Pushtivardhanam" >> yantra_log.txt
echo "" >> yantra_log.txt

# Mahamrityunjaya Yantra Pattern - 9x9 protective square
# Full protective boundary
DATE=$(date -d "133 days ago" +"%Y-%m-%d 12:00:00")
for row in {0..8}; do
    for col in {0..8}; do
        DAYS_AGO=$((133 - row * 7 - col))
        DATE=$(date -d "$DAYS_AGO days ago" +"%Y-%m-%d 12:00:00")
        
        # Determine intensity (higher at edges and center)
        if [ $row -eq 0 ] || [ $row -eq 8 ] || [ $col -eq 0 ] || [ $col -eq 8 ]; then
            INTENSITY=8
        elif [ $row -eq 4 ] && [ $col -eq 4 ]; then
            INTENSITY=16
        else
            INTENSITY=12
        fi
        
        for i in $(seq 1 $INTENSITY); do
            echo "$(date -d "$DAYS_AGO days ago" +"%Y-%m-%d") - Om Tryambakam Yajamahe Sugandhim Pushtivardhanam" >> yantra_log.txt
            git add yantra_log.txt
            export GIT_AUTHOR_DATE="$DATE"
            export GIT_COMMITTER_DATE="$DATE"
            git commit -m "🕉️ Mahamrityunjaya Yantra - Protection [$row,$col]" --quiet
        done
    done
done

echo "✨ Mahamrityunjaya Yantra complete! Divine protection activated!"