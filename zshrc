echo 'Hello from .zshrc'


# Enable custom auto completion for commands
autoload -Uz compinit
compinit


source ~/.zshrc.d/hello.zshrc
source ~/.zshrc.d/homebrew.zshrc
source ~/.zshrc.d/pyenv.zshrc
source ~/.zshrc.d/pipx.zshrc
source ~/.zshrc.d/jenv.zshrc # Java version manager
source ~/.zshrc.d/n.zshrc # Node version manager
source ~/.zshrc.d/k3d.zshrc


# Set Veriables
export EDITOR="code --wait"
export NULLCMD=bat
export SNOWFLAKE_TRANSFORM_WAREHOUSE=DATATECH_XS
export SNOWFLAKE_LOAD_DATABASE=RAW
export SNOWFLAKE_SNAPSHOT_DATABASE='SNOWFLAKE'


# Create Aliases
alias ls='exa --long --all --classify --header --git' # -laFh --git
alias exa='exa --long --all --classify --header --git' # -laFh --git
alias man=batman
alias grep='grep --color=auto'
alias trail='<<<${(F)path}'
alias rm=trash # Installed from node
alias l4b=log4brains


# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'


# Add Locations to the $path Array

typeset -U path # removes duplicates of the path array

path=(
  "$PYENV_ROOT/bin"
  "$PYENV_ROOT/shims"
  "$N_PREFIX/bin"
  "$JENV_ROOT/bin"
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
  "$HOME/.local/bin" # pipx ensurepath
)


# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}


# Use ZSH Plugins


# ...and Other Surprises

