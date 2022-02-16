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


# Install Global NPM Packages

if nodexists trash-cli; then
  echo "CLI trash already installed \n$(trash --version)"
else
  echo "Installing trash-cli with npm"
  npm install --global trash-cli
fi

if nodexists serverless; then
  echo "Serverless already installed \n$(sls --version)"
else
  echo "Installing serverless with npm"
  npm install --global serverless
fi

if nodexists log4brains; then
  echo "Log4brains already installed \n$(log4brains --version)"
else
  echo "Installing log4brains with npm"
  npm install --global log4brains
fi


echo "Global NPM Packages Installed:"
npm list --global --depth=0