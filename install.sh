#!/bin/bash

# BSTerminal Installer
# Installs bsterminal busy screen simulator

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}       BSTerminal Installer${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# Check if bsterminal script exists in current directory
if [ ! -f "bsterminal" ]; then
    echo -e "${RED}Error: bsterminal script not found in current directory${NC}"
    echo "Please run this installer from the directory containing the bsterminal script"
    exit 1
fi

# Detect shell and config file
SHELL_NAME=$(basename "$SHELL")
case "$SHELL_NAME" in
    bash)
        SHELL_CONFIG="$HOME/.bashrc"
        ;;
    zsh)
        SHELL_CONFIG="$HOME/.zshrc"
        ;;
    *)
        SHELL_CONFIG="$HOME/.bashrc"
        echo -e "${YELLOW}Warning: Detected shell '$SHELL_NAME', defaulting to .bashrc${NC}"
        ;;
esac

echo -e "${BLUE}[1/4]${NC} Detected shell: $SHELL_NAME"
echo -e "${BLUE}[1/4]${NC} Config file: $SHELL_CONFIG"
echo ""

# Create ~/bin directory if it doesn't exist
echo -e "${BLUE}[2/4]${NC} Creating ~/bin directory..."
mkdir -p "$HOME/bin"
echo -e "${GREEN}✓${NC} Directory ready"
echo ""

# Copy bsterminal to ~/bin
echo -e "${BLUE}[3/4]${NC} Installing bsterminal to ~/bin..."
cp bsterminal "$HOME/bin/bsterminal"
chmod +x "$HOME/bin/bsterminal"
echo -e "${GREEN}✓${NC} bsterminal installed"
echo ""

# Add ~/bin to PATH if not already present
echo -e "${BLUE}[4/4]${NC} Configuring PATH..."
if grep -q 'export PATH="$HOME/bin:$PATH"' "$SHELL_CONFIG" 2>/dev/null; then
    echo -e "${YELLOW}⊙${NC} PATH already configured in $SHELL_CONFIG"
else
    echo '' >> "$SHELL_CONFIG"
    echo '# Added by BSTerminal installer' >> "$SHELL_CONFIG"
    echo 'export PATH="$HOME/bin:$PATH"' >> "$SHELL_CONFIG"
    echo -e "${GREEN}✓${NC} Added ~/bin to PATH in $SHELL_CONFIG"
fi
echo ""

# Export PATH for current session
export PATH="$HOME/bin:$PATH"

# Verify installation
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
if command -v bsterminal &> /dev/null; then
    echo -e "${GREEN}✓ Installation successful!${NC}"
    echo ""
    echo -e "BSTerminal is now available. Try it out:"
    echo -e "  ${BLUE}bsterminal${NC}"
    echo ""
    echo -e "Press ${YELLOW}Ctrl+C${NC} to exit when running"
else
    echo -e "${YELLOW}⚠ Installation completed but bsterminal command not found${NC}"
    echo ""
    echo "Please run one of the following:"
    echo -e "  ${BLUE}source $SHELL_CONFIG${NC}  (to load in current shell)"
    echo -e "  ${BLUE}Open a new terminal${NC}     (automatic)"
fi
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo "Installed files:"
echo "  Script:  $HOME/bin/bsterminal"
echo "  Config:  $SHELL_CONFIG"
echo ""
