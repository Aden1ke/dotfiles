#!/usr/bin/env bash
set -euo pipefail
# basic packages
sudo apt update
sudo apt install -y build-essential curl git unzip ca-certificates
# ensure aliases load on fresh machines
grep -q 'dotfiles/bashrc.d/aliases.sh' ~/.bashrc || \
 echo '[ -f "$HOME/dotfiles/bashrc.d/aliases.sh" ] && . "$HOME/dotfiles/bashrc.d/aliases.sh"' >> ~/.bashrc
echo "Done. Open a new shell or run: source ~/.bashrc"
