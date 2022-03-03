#!/usr/bin/env zsh

echo "\n<<< Starting Go Setup >>>\n"

# Go versions are managed with `goenv`, which is in the Brewfile.
# See zshrc.d/goenv.zshrc for GOENV_ROOT variable, in addition to $path array.

if [ $(goenv versions $1 >/dev/null 2>&1) ]; then
  echo "Installing Go with goenv..."
  goenv install 1.11.4
else
  echo "Go already installed: $(goenv version)"
fi

goenv global 1.11.4
