#!/bin/bash
# Navagraha Yantra - Balances nine planetary influences
# Mantra: Om Navagraha Devata Namaha

REPO_NAME="yantra-contributions"
REPO_PATH="$HOME/$REPO_NAME"

if [ ! -d "$REPO_PATH" ]; then
    echo "Error: Repository not found. Run Sri Yantra script first!"
    exit 1
fi

cd "$REPO_PATH"

echo "" >> yantra_log.txt
echo "🕉️ Navagraha Yantra - Planetary Balance Pattern" >> yantra_log.txt
echo "Mantra: Om Navagraha Devata Namaha" >> yantra_log.txt
echo "" >> yantra_log.txt

# Navagraha Yantra Pattern - 9x9 grid with 9 points (planets)
PATTERN=(
    "1 0 1 0 1 0 1 0 1"
    "0 2 0 2 0 2 0 2 0"
    "1 0 3 0 3 0 3 0 1"
    "0 2 0 4 0 4 0 2 0"
    "1 0 3 0 4 0 3 0 1"
    "0 2 0 4 0 4 0 2 0"
    "1 0 3 0 3 0 3 0 1"
    "0 2 0 2 0 2 0 2 0"
    "1 0 1 0 1 0 1 0 1"
)

# Nine planetary mantras
PLANET_MANTRAS=(
    "Om Suryaya Namaha"     # Sun
    "Om Chandraya Namaha"   # Moon
    "Om Mangalaya Namaha"   # Mars
    "Om Budhaya Namaha"     # Mercury
    "Om Brihaspataye Namaha" # Jupiter
    "Om Shukraya Namaha"    # Venus
    "Om Shanaye Namaha"     # Saturn
    "Om Rahave Namaha"      # Rahu
    "Om Ketave Namaha"      # Ketu
)

for row in {0..8}; do
    IFS=' ' read -ra COLS <<< "${PATTERN[$row]}"
    for col in {0..8}; do
        INTENSITY=${COLS[$col]}
        if [ $INTENSITY -gt 0 ]; then
            DAYS_AGO=$((70 - row * 7 - col))
            DATE=$(date -d "$DAYS_AGO days ago" +"%Y-%m-%d 12:00:00")
            COMMITS=$((INTENSITY * 4))
            PLANET_IDX=$(( (row + col) % 9 ))
            PLANET_MANTRA="${PLANET_MANTRAS[$PLANET_IDX]}"
            
            for i in $(seq 1 $COMMITS); do
                echo "$(date -d "$DAYS_AGO days ago" +"%Y-%m-%d") - $PLANET_MANTRA" >> yantra_log.txt
                git add yantra_log.txt
                export GIT_AUTHOR_DATE="$DATE"
                export GIT_COMMITTER_DATE="$DATE"
                git commit -m "🕉️ Navagraha Yantra - $PLANET_MANTRA [$row,$col]" --quiet
            done
        fi
    done
done

echo "✨ Navagraha Yantra complete! All planets balanced!"