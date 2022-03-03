
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_SHELL=zsh

# Subcommands shell & rehash for pyenv
eval "$(pyenv init -)"

path=(
  "$PYENV_ROOT/bin"
  "$PYENV_ROOT/shims"
  $path
)
