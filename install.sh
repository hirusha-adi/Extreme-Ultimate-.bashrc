#!/bin/bash

# dir="$HOME/"
dir="./tmp/"

# colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m' # reset


download_file() {
    echo -e "${YELLOW}Starting to download: $1${NC}"
    wget -O "$1" "$2"
}

# ~/
download_file "${dir}.bashrc" https://sourceforge.net/projects/ultimate-bashrc/files/_bashrc/download
download_file "${dir}.bashrc_help" https://sourceforge.net/projects/ultimate-bashrc/files/_bashrc_help/download
download_file "${dir}.bashrc_prompt" https://sourceforge.net/projects/ultimate-bashrc/files/_bashrc_prompt/download

# ~/support/
mkdir -p "${dir}support/"
download_file "${dir}support/.Xresources" "https://sourceforge.net/projects/ultimate-bashrc/files/support/_Xresources/download"
download_file "${dir}support/.wezterm.lua" "https://sourceforge.net/projects/ultimate-bashrc/files/support/_wezterm.lua/download"
download_file "${dir}support/.Xresources" "https://sourceforge.net/projects/ultimate-bashrc/files/support/_Xresources/download"
download_file "${dir}support/.zshrc" "https://sourceforge.net/projects/ultimate-bashrc/files/support/_zshrc/download"
download_file "${dir}support/.screenrc" "https://sourceforge.net/projects/ultimate-bashrc/files/support/_screenrc/download"
download_file "${dir}support/.nanorc" "https://sourceforge.net/projects/ultimate-bashrc/files/support/_nanorc/download"
download_file "${dir}support/.inputrc" "https://sourceforge.net/projects/ultimate-bashrc/files/support/_inputrc/download"
download_file "${dir}support/.xprofile" "https://sourceforge.net/projects/ultimate-bashrc/files/support/_xprofile/download"
download_file "${dir}support/.Xmodmap" "https://sourceforge.net/projects/ultimate-bashrc/files/support/_Xmodmap/download"
download_file "${dir}support/.vimrc" "https://sourceforge.net/projects/ultimate-bashrc/files/support/_vimrc/download"
download_file "${dir}support/.tmux.conf" "https://sourceforge.net/projects/ultimate-bashrc/files/support/_tmux.conf/download"
download_file "${dir}support/upd" "https://sourceforge.net/projects/ultimate-bashrc/files/support/upd/download"
download_file "${dir}support/alacritty.toml" "https://sourceforge.net/projects/ultimate-bashrc/files/support/alacritty.toml/download"

# ~/bashrc.d/
mkdir -p "${dir}bashrc.d/"
download_file "${dir}bashrc.d/clear_color_spark" "https://sourceforge.net/projects/ultimate-bashrc/files/bashrc.d/clear_color_spark/download"
download_file "${dir}bashrc.d/trueline_config" "https://sourceforge.net/projects/ultimate-bashrc/files/bashrc.d/trueline_config/download"
download_file "${dir}bashrc.d/tty_terminal_color_scheme" "https://sourceforge.net/projects/ultimate-bashrc/files/bashrc.d/tty_terminal_color_scheme/download"
download_file "${dir}bashrc.d/arch_mirrors_support" "https://sourceforge.net/projects/ultimate-bashrc/files/bashrc.d/arch_mirrors_support/download"


# final msg
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Downloaded everything!${NC}"
else
    echo -e "${RED}An error occurred!${NC}"
fi
