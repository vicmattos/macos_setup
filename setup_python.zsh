#!/usr/bin/env zsh

echo "\n<<< Starting Python Setup >>>\n"

# Python versions are managed with `pyenv`, which is in the Brewfile.
# See zshrc for PYENV_ROOT and PYENV_SHELL variables, 
#   addition to $path array and occult pyenv() function.

if [ $(pyenv versions --bare) ]; then
  echo "Python $(pyenv versions --bare) already installed"
else
  echo "Installing Python & conda with pyenv..."
  pyenv install miniforge3-4.10.1-5
  pyenv global miniforge3-4.10.1-5
fi

pip install --upgrade pip
echo "Global Python Versions Installed:"
pyenv versions
