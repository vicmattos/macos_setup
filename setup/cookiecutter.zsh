#!/usr/bin/env zsh


echo "\n<<< Starting cookiecutter Setup >>>\n"

if ! exists pipx; then
  echo "Unable to install cookiecutter. Pipx not found."
else
  pipx reinstall cookiecutter
fi