#!/bin/bash
source funcs.sh

# Check whether the script is run as root
if [ -n "$USERID" ] && [ "$USERID" != "0" ]; then
    printf "${CR}Run the installer as root\n${CN}"
    exit 1
fi

# Get the user's home directory
USER_HOME=$(eval echo ~${SUDO_USER:-$USER})

# Install directory
INSTALL_DIR="$USER_HOME/.local/bin"

# Check if the rshell and funcs.sh files exist in the install directory
if [ -f "$INSTALL_DIR/revshell" ] && [ -f "$INSTALL_DIR/funcs.sh" ] && [ -f "$INSTALL_DIR/rshell" ]; then
    echo -e "${CG}Uninstalling RevShell Scripts...${CN}"
    rm "$INSTALL_DIR/revshell"
    rm "$INSTALL_DIR/funcs.sh"
    # rm "$INSTALL_DIR/rshell"
    echo -e "${CG}Script removed successfully.${CN}"
else
    echo -e "${CR}RevShell Script not found in $INSTALL_DIR${CN}"
fi
