# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1=' '

# Parse git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Change title on window
# PROMPT_COMMAND='printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/"~"}"'
PROMPT_COMMAND='printf "\033]0;>_ %s %s\007" "${PWD/#$HOME/"~"}" "$(parse_git_branch)"'

# Docker
alias d="docker"

# Git
alias graph="git log --all --oneline --decorate --graph"

# NVIM
alias v="nvim"
alias nvimdir="cd ~/Dotfiles/nvim"

# Enable/Disable touchpad using xorg-xinit
alias touchpadoff="xinput --disable 12"
alias touchpadon="xinput --enable 12"

# Other things
alias re-apache-mysqld="sudo sv restart apache mysqld"
alias la="ls -A --color=auto"
alias ls="ls --color=auto"

# TMUX shorthand
alias t="tmux"
alias tks="t kill-session -t"
alias tns="t new-session -t"
alias ta="t a -t"
alias trs="t rename-session -t"
alias tl="t ls"
slk() {
    t new-session -d -s slk -n code
    t new-window -d -n run
    t send-keys -t slk:code "cd ~/Project/hugo/sialoka" Enter "v" Enter
    t send-keys -t "slk:run" "cd ~/Project/hugo/sialoka" Enter "hugo server -b http://localhost:1313/" Enter
    t attach-session -d -t slk
}

# modmap
alias resetmodmap="setxkbmap -layout us"
alias keys="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\n\", \$5, \$8 }'"
cmap() {
	setxkbmap -option "ctrl:swapcaps"
	xcape -e 'Control_L=Escape'
	xmodmap -e 'keycode 108 = BackSpace'
}
kmap() {
	setxkbmap -option
	killall xcape
}
alias remap="kmap && cmap"
alias relog="exec bash --login"
alias poweroff="sudo laptop_mode && sudo poweroff"

# use vi as terminal navigation
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# Add more aliases to complete the short version of CRUD commands:
# `cd`, `cp`, `ls`, `md`, `mv`, `rd`, `rm`
md() { mkdir "$@"; }
rd() { rmdir "$@"; }



export EDITOR="nvim"
export PATH="$HOME/.local/bin:$PATH"
# export XDEB_PKGROOT="$HOME/.config/xdeb"
# export TZ="Asia/Jakarta"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# source "$HOME/.cargo/env"
. "$HOME/.cargo/env"
