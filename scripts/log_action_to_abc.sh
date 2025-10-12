#!/data/data/com.termux/files/usr/bin/bash
# ♠️🌿🎸🧵 G.Music Assembly — Terminal Action Logger
# Captures terminal commands and writes ABC notation fragments

# Configuration
GMUSIC_HOME="${HOME}/workspace/gmusic"
SESSION_DIR="${GMUSIC_HOME}/sessionABC"
TONE_MAP="${GMUSIC_HOME}/config/tone_map.conf"
TODAY=$(date +%Y%m%d)
SESSION_FILE="${SESSION_DIR}/${TODAY}.abc"
TIMESTAMP=$(date +%H:%M:%S)

# Get the command from argument (passed by PROMPT_COMMAND)
COMMAND="$1"

# Skip empty commands or commands that are just whitespace
[[ -z "$COMMAND" || "$COMMAND" =~ ^[[:space:]]*$ ]] && exit 0

# Skip internal/noise commands that shouldn't generate music
case "$COMMAND" in
    ls|ls\ *|pwd|cd|cd\ *|echo|echo\ *|clear|history|history\ *)
        exit 0
        ;;
esac

# Function to match command to tone map
match_tone_map() {
    local cmd="$1"

    # Read tone_map.conf and find first matching pattern
    while IFS='|' read -r pattern key meter motif description; do
        # Skip comments and empty lines
        [[ "$pattern" =~ ^#.*$ || -z "$pattern" ]] && continue

        # Check if command starts with pattern
        if [[ "$cmd" == $pattern* ]]; then
            echo "$key|$meter|$motif|$description"
            return 0
        fi
    done < "$TONE_MAP"

    return 1
}

# Try to match command to a musical motif
if MATCH=$(match_tone_map "$COMMAND"); then
    IFS='|' read -r KEY METER MOTIF DESCRIPTION <<< "$MATCH"

    # Initialize session file if it doesn't exist
    if [[ ! -f "$SESSION_FILE" ]]; then
        cat > "$SESSION_FILE" << EOF
X:1
T:Terminal Session $(date +%Y-%m-%d)
C:JamAI (G.Music Assembly - Auto-generated)
M:4/4
L:1/8
K:G
% ♠️🌿🎸🧵 Assembly Mode — Terminal-to-Music Session Log
% This file is auto-generated from terminal commands
% Edit freely to enhance the narrative

EOF
    fi

    # Append the musical fragment with context
    cat >> "$SESSION_FILE" << EOF
% [$TIMESTAMP] $COMMAND
% $DESCRIPTION (Key: $KEY, Meter: $METER)
$MOTIF |

EOF

fi

exit 0
