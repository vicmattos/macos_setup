
# configured in $path
# pipx ensurepath >/dev/null 2>&1"

path=(
  $path
  "$HOME/.local/bin" # pipx ensurepath
)

# pipx completions
# eval "$(register-python-argcomplete pipx)