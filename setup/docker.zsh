#!/usr/bin/env zsh

echo "\n<<< Starting Docker Setup >>>\n"

# Installation unnecessary; it's in the Brewfile.

if exists docker; then
  echo 'Docker commands linked. Skipping.'
else
  echo "Enable Docker Desktop first run to create commands symlinks."
  # https://forums.docker.com/t/docker-command-not-found-after-installing-docker-desktop-on-mac/93837/2
  open /Applications/Docker.app
fi
