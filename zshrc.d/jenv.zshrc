
export JENV_ROOT="$HOME/.jenv"

# jEnv configuration
eval "$(jenv init -)"

path=(
  "$JENV_ROOT/bin"
  $path
)
