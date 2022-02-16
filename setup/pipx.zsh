#!/usr/bin/env zsh

echo "\n<<< Starting pipx Setup >>>\n"

# Python cli tools are installed with `pipx`, which is in the Brewfile.

pipx install nox
pipx inject nox nox-poetry
pipx install cookiecutter
pipx install pre-commit
