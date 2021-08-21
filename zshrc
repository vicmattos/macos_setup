echo 'Hello from .zshrc'


# Set Veriables
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_SHELL=zsh


# Change ZSH Options
# Enable custom auto completion for commands
autoload -Uz compinit
compinit


# Create Aliases
alias ls='exa --long --all --classify --header --git' # -laFh --git
alias exa='exa --long --all --classify --header --git' # -laFh --git
alias man=batman
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias rm=trash
alias l4b=log4brains


# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'


# Add Locations to the $path Array
typeset -U path

path=(
  "$PYENV_ROOT/bin"
  "$PYENV_ROOT/shims"
  "$N_PREFIX/bin"
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)


# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}
# Subcommands shell & rehash for pyenv
eval "$(pyenv init -)"
# k3d command completion
eval "$(k3d completion zsh)"


# Use ZSH Plugins


# ...and Other Surprises

