#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

# Node versions are managed with `n`, which is in the Brewfile.
# See zshrc for N_PREFIX variable and addition to $path array.

if exists node; then
  echo "Node $(node --version) and NPM $(npm --version) already installed"
else
  echo "Installing Node & NPM with n..."
  n latest
fi
