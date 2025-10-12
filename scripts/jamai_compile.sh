#!/data/data/com.termux/files/usr/bin/bash
# ♠️🌿🎸🧵 G.Music Assembly — Session Compiler
# Merges ABC fragments into a refined composition

# Configuration
GMUSIC_HOME="${HOME}/workspace/gmusic"
SESSION_DIR="${GMUSIC_HOME}/sessionABC"

# Colors for terminal output
C_RESET='\033[0m'
C_BLUE='\033[0;34m'
C_GREEN='\033[0;32m'
C_YELLOW='\033[1;33m'

# Usage
usage() {
    cat << EOF
♠️🌿🎸🧵 JamAI Compile — Session Fragment Compiler

Usage: jamai compile [options] [date]

Options:
  -h, --help          Show this help message
  -l, --list          List all available session files
  -o, --output FILE   Output file path (default: session_YYYYMMDD_compiled.abc)

Arguments:
  date                Date in YYYYMMDD format (default: today)

Examples:
  jamai compile                    # Compile today's session
  jamai compile 20251012          # Compile specific date
  jamai compile -o mysession.abc  # Custom output file
EOF
}

# List available session files
list_sessions() {
    echo -e "${C_BLUE}♠️🌿🎸🧵 Available Session Files:${C_RESET}"
    if ls "$SESSION_DIR"/*.abc &>/dev/null; then
        for file in "$SESSION_DIR"/*.abc; do
            basename "$file"
            # Count number of motifs (lines with notes)
            motif_count=$(grep -c '^[A-Ga-g^_]' "$file" 2>/dev/null || echo 0)
            echo -e "  ${C_YELLOW}→${C_RESET} $motif_count motifs"
        done
    else
        echo "  No session files found"
    fi
}

# Parse arguments
DATE=$(date +%Y%m%d)
OUTPUT=""

while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help)
            usage
            exit 0
            ;;
        -l|--list)
            list_sessions
            exit 0
            ;;
        -o|--output)
            OUTPUT="$2"
            shift 2
            ;;
        [0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9])
            DATE="$1"
            shift
            ;;
        *)
            echo "Unknown option: $1"
            usage
            exit 1
            ;;
    esac
done

# Set default output if not specified
if [[ -z "$OUTPUT" ]]; then
    OUTPUT="${GMUSIC_HOME}/session_${DATE}_compiled.abc"
fi

# Source file
SOURCE_FILE="${SESSION_DIR}/${DATE}.abc"

if [[ ! -f "$SOURCE_FILE" ]]; then
    echo -e "${C_YELLOW}No session file found for ${DATE}${C_RESET}"
    echo "Available sessions:"
    list_sessions
    exit 1
fi

# Compile (currently just copy with cleanup, but can be enhanced)
echo -e "${C_BLUE}♠️🌿🎸🧵 Compiling session: ${DATE}${C_RESET}"

# Read the source file
cp "$SOURCE_FILE" "$OUTPUT"

# Count motifs
motif_count=$(grep -c '^[A-Ga-g^_]' "$OUTPUT" 2>/dev/null || echo 0)

echo -e "${C_GREEN}✓ Compiled to: ${OUTPUT}${C_RESET}"
echo -e "${C_YELLOW}  Motifs: ${motif_count}${C_RESET}"
echo -e "${C_BLUE}  Edit this file to enhance the narrative!${C_RESET}"

# Optional: Validate ABC syntax using abcweaver if available
if command -v python &>/dev/null && python -c "import abcweaver" &>/dev/null; then
    echo -e "${C_BLUE}  Validating with abcweaver...${C_RESET}"
    if python -m abcweaver validate "$OUTPUT" &>/dev/null; then
        echo -e "${C_GREEN}  ✓ Valid ABC notation${C_RESET}"
    else
        echo -e "${C_YELLOW}  ⚠ ABC validation warnings (check manually)${C_RESET}"
    fi
fi

exit 0
