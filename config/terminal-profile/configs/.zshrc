export ZSH="/home/"$USER"/.oh-my-zsh"
#ZSH_THEME="pixegami-agnoster"
ZSH_THEME="robbyrussell"
#ZSH_THEME="amuse"

unsetopt hist_append
unsetopt hist_expand
HISTFILE=
HISTSIZE=SAVEHIST=0
SAVEHIST=500
ENABLE_CORRECTION="false"
plugins=(git)

PS1="%F{gray}${USER}%B%F{green}💀%F{8}{%~}%f%b %F{white}"

# aliases
alias ll='ls -l'
alias dt='cd ~/Desktop'
alias dl='cd ~/Downloads'
alias doc='cd ~/Documents'
alias dev='PS1="$ ";sp3rtah;clear'
alias mkenv='python3 -m venv venv'
alias cdenv='source ./venv/bin/activate'
alias tree='tree -I venv -I __pycache__ -I node_modules'
alias rinstall='pip install -r requirements.txt'

setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify

# enable color support of ls, less and man, and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias diff='diff --color=auto'
    alias ip='ip --color=auto'

    export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
    export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
    export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
    export LESS_TERMCAP_so=$'\E[01;33m'    # begin reverse video
    export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
    export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
    export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

    # Take advantage of $LS_COLORS for completion as well
    zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
    zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
fi
#
source $ZSH/oh-my-zsh.sh

# bun completions
[ -s "/home/sp3rtah/.bun/_bun" ] && source "/home/sp3rtah/.bun/_bun"
