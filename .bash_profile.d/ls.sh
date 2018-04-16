if ls --color >/dev/null 2>&1; then
    alias ls="ls --color=auto"
    export LS_COLORS="di=34:ln=36:so=35:pi=33:ex=31:bd=33:cd=33:su=30;41:sg=37;41:tw=30;44:ow=37;44"
else
    alias ls="ls -G"
    export LSCOLORS="exgxfxdxbxdxdxabhbaehe"
fi
alias l="ls -l"
alias la="ls -al"
