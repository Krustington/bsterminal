# BSTerminal - Busy Screen Terminal Simulator

![Version](https://img.shields.io/badge/version-1.0.0-blue)
![Platform](https://img.shields.io/badge/platform-Linux%20%7C%20WSL-lightgrey)
![License](https://img.shields.io/badge/license-MIT-green)

**BSTerminal** is a fun terminal application that makes it look like you're doing something important and technical. It simulates realistic terminal operations like package installations, compilations, database operations, and more - perfect for when you need to look busy!

## Features

BSTerminal simulates a variety of realistic terminal operations:

- **Package Management**: APT and NPM package installations with progress bars
- **Version Control**: Git operations (clone, pull, fetch)
- **Compilation**: C++ compilation with realistic build output
- **Docker Operations**: Container image pulls with layer downloads
- **System Updates**: OS update simulations with progress tracking
- **Database Operations**: Migrations, backups, and optimizations
- **Network Diagnostics**: Ping tests and connectivity checks
- **Log Analysis**: System log parsing with color-coded severity levels

## Preview

```
╔════════════════════════════════════════════════════════════╗
║  BSTerminal - Busy Screen Terminal Simulator              ║
║  Press Ctrl+C to exit                                      ║
╚════════════════════════════════════════════════════════════╝

Reading package lists...
Building dependency tree...
Reading state information...
The following NEW packages will be installed:
  libssl-dev
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 2847 kB of archives.
After this operation, 14832 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libssl-dev amd64 3.21 [2847 kB]
Fetching [██████████████████████████████████████████████████] 100%
Unpacking libssl-dev...
Setting up libssl-dev...
Processing triggers...
```

## Installation

### Quick Install

1. Clone or download this repository
2. Navigate to the bsterminal directory
3. Run the installation script:

```bash
cd bsterminal
./install.sh
```

4. Reload your shell configuration or open a new terminal:

```bash
source ~/.bashrc  # or ~/.zshrc for Zsh users
```

### Manual Installation

If you prefer to install manually:

```bash
# Create ~/bin directory if it doesn't exist
mkdir -p ~/bin

# Copy the script
cp bsterminal ~/bin/bsterminal
chmod +x ~/bin/bsterminal

# Add ~/bin to PATH (if not already in PATH)
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

## Usage

Simply run:

```bash
bsterminal
```

The program will run indefinitely, displaying random realistic terminal operations. To exit, press `Ctrl+C`.

### What It Does

BSTerminal randomly cycles through various simulated operations:
- Each operation is designed to look realistic
- Random delays make the output feel natural
- Color-coded output matches real terminal applications
- Progress bars show realistic completion percentages
- All operations are cosmetic - nothing is actually being installed or modified

## Use Cases

- **Meetings**: Look productive during video calls
- **Public Spaces**: Terminal eye-candy for coffee shops
- **Screenshots**: Create impressive terminal screenshots
- **Learning**: Study what various terminal operations look like
- **Fun**: Just enjoy watching realistic terminal output

## Technical Details

- **Language**: Bash
- **Dependencies**: Basic Unix utilities (all standard on Linux/WSL)
- **Size**: Single lightweight script (~10KB)
- **Performance**: Minimal resource usage
- **Safety**: No actual system modifications - purely visual

## Simulated Operations

| Operation | Description |
|-----------|-------------|
| APT Install | Debian/Ubuntu package installation |
| NPM Install | Node.js package installation |
| Git Operations | Repository cloning and updates |
| Compilation | C++ source code compilation |
| Docker Pull | Container image downloads |
| System Update | OS updates with progress bars |
| Database Ops | Migrations, backups, optimizations |
| Network Tests | Ping and connectivity checks |
| Log Analysis | System log parsing and analysis |

## Color Scheme

BSTerminal uses ANSI color codes for realistic output:
- **Green**: Success messages and completion
- **Red**: Error messages (simulated)
- **Yellow**: Warnings and progress indicators
- **Blue**: Information and headers
- **Cyan**: Process descriptions
- **Gray**: Secondary information

## Customization

You can easily customize BSTerminal by editing the script:

1. Add new simulation functions following the existing pattern
2. Add your function name to the `simulations` array
3. Use the color variables for consistent styling
4. Use `random_delay` and `show_progress` for realistic timing

Example:
```bash
simulate_custom_operation() {
    echo -e "${CYAN}Running custom operation...${NC}"
    random_delay 0.3 0.5
    show_progress 2 "Processing"
    echo -e "${GREEN}✓${NC} Custom operation complete"
    echo ""
}
```

## FAQ

**Q: Does this actually install anything?**
A: No! BSTerminal is purely visual. It doesn't install packages, modify files, or change your system in any way.

**Q: Will it slow down my system?**
A: No, BSTerminal uses minimal resources - just some text output and sleep commands.

**Q: Can I use this on macOS?**
A: It should work on macOS since it uses standard bash and Unix utilities. Try it out!

**Q: How do I stop it?**
A: Press `Ctrl+C` to exit cleanly.

**Q: Can I contribute new simulations?**
A: This is a standalone script, but feel free to fork and customize it for your needs!

## Inspiration

Inspired by tools like:
- `cmatrix` - The classic Matrix screen effect
- `hollywood` - Terminal screen savers
- Various "hacker typer" web applications

## License

MIT License - Feel free to use, modify, and distribute.

## Disclaimer

This tool is for entertainment and educational purposes. It creates the appearance of system activity without actually performing any operations. Use responsibly and ethically.

---

**Made with ❤️ for terminal enthusiasts**

Press `Ctrl+C` when you're done looking busy! 😎
