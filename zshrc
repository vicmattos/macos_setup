echo 'Hello from .zshrc'


# Enable custom auto completion for commands
autoload -Uz compinit
compinit -D

# Removes duplicates of the path array
typeset -U path


# Configure Tools
source ~/.zshrc.d/hello.zshrc
source ~/.zshrc.d/homebrew.zshrc
source ~/.zshrc.d/pyenv.zshrc
source ~/.zshrc.d/vscode.zshrc
# source ~/.zshrc.d/zsh.zshrc


# Create Functions
source ~/.zshrc.d/function/mkcd.zshrc
source ~/.zshrc.d/function/git_clone_dir.zshrc


# Set Veriables
export EDITOR="code --wait"


# Create Aliases
alias ls='exa --long --all --classify --header --git' # -laFh --git
alias exa='exa --long --all --classify --header --git' # -laFh --git
alias grep='grep --color=auto'
alias trail='<<<${(F)path}'
alias rm=trash # Installed from node


# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'
