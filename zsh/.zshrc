export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="steeef"
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 7
	
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

export EDITOR='nano'

if test -d ~/.local/bin
then
    if not contains -- ~/.local/bin $PATH
    then
        set -p PATH ~/.local/bin
    fi
fi

if test -d ~/Applications/depot_tools
then
    if not contains -- ~/Applications/depot_tools $PATH
    then
        set -p PATH ~/Applications/depot_tools
    fi
fi

source /usr/share/doc/find-the-command/ftc.zsh

alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.='exa -ald --color=always --group-directories-first --icons .*' # show only dotfiles
alias ip='ip -color'

alias cat='bat --style header --style snip --style changes --style header'
[ ! -x /usr/bin/yay ] && [ -x /usr/bin/paru ] && alias yay='paru'
alias fixpacman="sudo rm /var/lib/pacman/db.lck"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='grep -F --color=auto'
alias egrep='grep -E --color=auto'

alias jctl="journalctl -p 3 -xb"
alias sctl="sudo systemctl"
alias snano="sudo nano"
