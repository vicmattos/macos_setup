echo 'Hello from .zshrc'


# Enable custom auto completion for commands
autoload -Uz compinit
compinit

# Removes duplicates of the path array
typeset -U path


source ~/.zshrc.d/hello.zshrc
source ~/.zshrc.d/homebrew.zshrc
# source ~/.zshrc.d/zsh.zshrc
source ~/.zshrc.d/pyenv.zshrc
source ~/.zshrc.d/goenv.zshrc
source ~/.zshrc.d/pipx.zshrc
source ~/.zshrc.d/jenv.zshrc # Java version manager
source ~/.zshrc.d/n.zshrc # Node version manager
source ~/.zshrc.d/k3d.zshrc

source ~/.zshrc.d/function/mkcd.zshrc


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


path=(
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)
