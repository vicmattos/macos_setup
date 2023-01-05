#!/usr/bin/env zsh


echo "\n<<< Starting trash-cli Setup >>>\n"

if ! exists node; then
  echo "Unable to install CLI trash. Node not found."
elif nodexists trash-cli; then
  echo "CLI trash already installed \n$(trash --version)"
else
  echo "Installing trash-cli with npm"
  npm install --global trash-cli
fi
