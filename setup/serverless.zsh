#!/usr/bin/env zsh


echo "\n<<< Starting serverless Setup >>>\n"

if ! exists node; then
  echo "Unable to install serverless. Node not found."
elif nodexists serverless; then
  echo "Serverless already installed \n$(sls --version)"
else
  echo "Installing serverless with npm"
  npm install --global serverless
fi
