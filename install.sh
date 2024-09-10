#!/bin/bash

# Get the directory where this script is located
SCRIPT_DIR=$(dirname "$0")

# Source the funcs.sh file
source "$SCRIPT_DIR/funcs.sh"

# Check whether the script is run as root
if [ -n "$USERID" ] && [ "$USERID" != "0" ]; then
    printf "${CR}Run the installer as root\n${CN}"
    exit 1
fi

# Get the user's home directory
USER_HOME=$(eval echo ~${SUDO_USER:-$USER})

# Install directory
INSTALL_DIR="$USER_HOME/.local/bin"

# Create the install directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Copy the rshell and funcs.sh scripts to the install directory
sudo cp "$PWD/revshell" "$INSTALL_DIR/revshell"
sudo cp "$PWD/funcs.sh" "$INSTALL_DIR/funcs.sh"
# sudo cp "$PWD/rgen" "$INSTALL_DIR/rgen"

# Make the scripts executable
sudo chmod +x "$INSTALL_DIR/revhell"
# sudo chmod +x "$INSTALL_DIR/rgen"

echo -e "${CG}Scripts installed successfully at $INSTALL_DIR${CN}"
echo -e "${CY}You can now run the Revshell script by typing 'rgen' in your terminal.${CN}"
