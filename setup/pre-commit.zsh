#!/usr/bin/env zsh


echo "\n<<< Starting pre-commit Setup >>>\n"

if ! exists pipx; then
  echo "Unable to install pre-commit. Pipx not found."
else
  pipx reinstall pre-commit
fi