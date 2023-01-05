#!/usr/bin/env zsh


echo "\n<<< Starting log4brains Setup >>>\n"

if ! exists node; then
  echo "Unable to install log4brains. Node not found."
elif nodexists log4brains; then
  echo "Log4brains already installed \n$(log4brains --version)"
else
  echo "Installing log4brains with npm"
  npm install --global log4brains
fi
