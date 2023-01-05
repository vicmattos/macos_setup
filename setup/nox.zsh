#!/usr/bin/env zsh


echo "\n<<< Starting nox Setup >>>\n"

if ! exists pipx; then
  echo "Unable to install nox. Pipx not found."
else
  pipx reinstall nox
  pipx inject nox nox-poetry
fi