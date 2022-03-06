
# zsh-completions Caveats
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    chmod -R go-w '/usr/local/share/zsh'
    autoload -Uz compinit
    compinit
fi