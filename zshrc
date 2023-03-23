echo 'Hello from .zshrc'


# Enable custom auto completion for commands
autoload -Uz compinit
compinit

# Removes duplicates of the path array
typeset -U path


# Configure Tools
source ~/.zshrc.d/hello.zshrc
source ~/.zshrc.d/homebrew.zshrc
source ~/.zshrc.d/jenv.zshrc
source ~/.zshrc.d/n.zshrc # Node version manager
source ~/.zshrc.d/pipx.zshrc
source ~/.zshrc.d/pyenv.zshrc
source ~/.zshrc.d/tfenv.zshrc
source ~/.zshrc.d/vscode.zshrc
# source ~/.zshrc.d/zsh.zshrc


# Create Functions
source ~/.zshrc.d/function/mkcd.zshrc

source ~/.zshrc.d/function/sothebys/aws-profile.zshrc
source ~/.zshrc.d/function/sothebys/vm-active.zshrc
source ~/.zshrc.d/function/sothebys/vm-logs.zshrc


# Set Veriables
export EDITOR="code --wait"
export NULLCMD=bat


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
