# If not running interactively, don't do anything
[[ $- != *i* ]] && return

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats ' %b '
precmd() {
	vcs_info
	case $TERM in (st*)
		print -Pn "\e]0;  %~\a"
		;;
	esac
}
setopt prompt_subst

PS1='%B%(#.%F{#BF616A}.%F{#ABE9B3}) %b%f%F{#96CDFB} %~%f %F{#F8BD96}${vcs_info_msg_0_}%f'

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

export EDITOR="nvim"
export BROWSER="qutebrowser"
export TERMINAL="st"

export PATH="$PATH:$HOME/dotfiles/bin:$HOME/.local/bin:/usr/bin"
export PATH="$PATH:$HOME/.config/lf"

# Load syntax highlighting; should be last.
source /home/ryn/clone/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

export FZF_DEFAULT_OPTS='
  --color fg:#646a76
  --color bg+:#7797b7,fg+:#2c2f30,hl:#D8DEE9,hl+:#26292a,gutter:#3a404c
  --color pointer:#373d49,info:#606672
  --border
  --color border:#646a76'

# alias luamake=/home/ryn/language_servers/sumneko_lua/3rd/luamake/luamake

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
