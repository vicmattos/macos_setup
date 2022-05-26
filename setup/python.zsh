#!/usr/bin/env zsh

echo "\n<<< Starting Python Setup >>>\n"

# Python versions are managed with `pyenv`, which is in the Brewfile.
# See zshrc for PYENV_ROOT and PYENV_SHELL variables, 
#   addition to $path array and occult pyenv() function.

if [ $(pyenv versions --bare) ]; then
  echo "Python $(pyenv versions --bare) already installed"
else
  # CC=$(brew --prefix gcc) pyenv install 3.8.12
  echo "Installing Python & Conda with pyenv..."
  pyenv install miniforge3-4.9.2 # Python 3.8.8
  pyenv install miniforge3-4.10.3-10 # Python 3.9.7
  pyenv global miniforge3-4.10.3-10
fi

pip install --user --upgrade pip

echo "Global Python Versions Installed:"
pyenv versions
