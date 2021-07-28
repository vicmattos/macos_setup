echo 'Hello from .zshrc'


# Set Veriables


# Change ZSH Options


# Create Aliases
alias ls='ls -lAFh'


# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to the PATH Variable


# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}


# Use ZSH Plugins


# ...and Other Surprises
