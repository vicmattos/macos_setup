echo 'Hello from .zshrc'


# Set Veriables
export HOMEBREW_CASK_OPTS="--no-quarantine"


# Change ZSH Options


# Create Aliases
# alias ls='ls -lAFh'
alias ls='exa --long --all --classify --header --git' # -laFh --git
alias exa='exa --long --all --classify --header --git' # -laFh --git
alias man=batman
alias bbd='brew bundle dump --force --describe'


# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to the PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"


# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}


# Use ZSH Plugins


# ...and Other Surprises
