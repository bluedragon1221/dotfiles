# Lines configured by zsh-newuser-install
HISTFILE=~/.local/state/zsh/history
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch
bindkey -e

autoload -Uz compinit
compinit -d ~/.cache/zsh/zcompdump-"$ZSH_VERSION"

# starship prompt
## eval "$(starship init zsh)"

# ...or not
PROMPT="%F{blue}%~%f %B%(?.%F{green}.%F{red})λ%f%b "

chmod +x ~/bin/*
PATH=~/bin:$PATH

# Less Colors for Man Pages 
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking 
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold 
export LESS_TERMCAP_me=$'\E[0m'           # end mode 
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode 
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box 
export LESS_TERMCAP_ue=$'\E[0m'           # end underline 
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

EDITOR=nvim
. $ZDOTDIR/xdg.sh
. $ZDOTDIR/aliasrc
. $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
. $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
