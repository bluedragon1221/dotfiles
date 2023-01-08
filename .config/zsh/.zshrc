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

EDITOR=nvim

# substring search (see below)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

. $ZDOTDIR/xdg.sh
. $ZDOTDIR/aliasrc
. $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
. $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. $ZDOTDIR/zsh-history-substring-search/zsh-history-substring-search.zsh
