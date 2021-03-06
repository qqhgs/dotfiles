# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Created by powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/clone/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
# setopt autocd		            # Automatically cd into typed directory.
setopt interactive_comments

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Import fn form .fn
[ -f ~/.fn ] && source ~/.fn

# Import alias form .aliases
[ -f ~/.aliases ] && source ~/.aliases

# Import bindkey form .bindkey
[ -f ~/.bindkey ] && source ~/.bindkey

# Suckless Terminal window title
case $TERM in
    st*)
    precmd () {
        # menampilkan direktori aktif (kondisi default)
        print -Pn "\e]0;st:%~\a"
    }
    preexec () {
        # menampilkan program yang sedang berjalan
        print -Pn "\e]0;st:$1\a"
    }
    ;;
esac

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# EDITOR
export EDITOR="nvim"

# PATH
export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source "$HOME/.cargo/env"

DISABLE_AUTO_TITLE="true"

# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
