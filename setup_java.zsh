#!/usr/bin/env zsh

echo "\n<<< Starting Java Setup >>>\n"

# Node versions are managed with `n`, which is in the Brewfile.
# See zshrc for N_PREFIX variable and addition to $path array.

if exists java; then
  echo "Java already installed \n$(java --version)"
else
  echo "Configuring Java with jEnv"
  jenv add $(brew --prefix openjdk)/libexec/openjdk.jdk/Contents/Home
  jenv add $(brew --prefix openjdk@8)/libexec/openjdk.jdk/Contents/Home
  jenv add $(brew --prefix openjdk@11)/libexec/openjdk.jdk/Contents/Home
  jenv global 11
fi
