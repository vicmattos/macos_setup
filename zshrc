echo 'Hello from .zshrc'


# Set Veriables
export HOMEBREW_CASK_OPTS="--no-quarantine"
export EDITOR="code --wait"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_SHELL=zsh
export JENV_ROOT="$HOME/.jenv"
# DBT EnvVars
export SNOWFLAKE_TRANSFORM_WAREHOUSE=DATATECH_XS
export SNOWFLAKE_LOAD_DATABASE=RAW
export SNOWFLAKE_SNAPSHOT_DATABASE='SNOWFLAKE'

# Change ZSH Options
# Enable custom auto completion for commands
autoload -Uz compinit
compinit


# Create Aliases
alias ls='exa --long --all --classify --header --git' # -laFh --git
alias exa='exa --long --all --classify --header --git' # -laFh --git
alias man=batman
alias grep='grep --color=auto'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias rm=trash
alias l4b=log4brains
alias ads='DOCKER_BUILDKIT=0 astro dev start'
# DBT helpers
alias dbt_refresh='dbt clean ; dbt deps ; dbt seed'
alias dbt_open_docs='dbt docs generate && dbt docs serve'


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
  "$JENV_ROOT/bin"
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
  "/Users/victor/.local/bin" # pipx ensurepath
)


# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}
function dbt_run_changed() {
    children=$1
    models=$(git diff --name-only | grep '\.sql$' | awk -F '/' '{ print $NF }' | sed "s/\.sql$/${children}/g" | tr '\n' ' ')
    echo "Running models: ${models}"
    dbt run --models $models
}
function dbt_cycle_logs() {
  suffix=$(date '+%Y-%m-%dT%H:%M:%S')
  mv -v logs/dbt.log logs/dbt.log.${suffix}
}


# Use ZSH Plugins


# ...and Other Surprises
# Subcommands shell & rehash for pyenv
eval "$(pyenv init -)"
# jEnv configuration
eval "$(jenv init -)"
# k3d command completion
eval "$(k3d completion zsh)"

