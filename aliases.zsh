alias cl="clear"

if command -v "nvim" > /dev/null; then
    alias vi="nvim"
    alias vim="nvim"
fi

if command -v "rg" > /dev/null; then
    alias grep="rg"
fi

if command -v "lsd" > /dev/null; then
    alias ls="lsd"
    alias ll="lsd -l"
    alias la="lsd --almost-all"
    alias l="lsd -l --almost-all"
else
    alias ll="ls -lh"
    alias la="ls -a"
    alias l="ls -alh"
fi

if command -v "zoxide" > /dev/null; then
    alias cd="z"
fi

alias ssh="TERM=xterm-256color ssh"

alias tmux="SHELL=$(which zsh) tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf"

