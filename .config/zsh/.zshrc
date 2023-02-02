# Lines configured by zsh-newuser-install
HISTFILE=~/.local/state/zsh/history
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob autocd
bindkey -e

autoload -Uz compinit
compinit -d ~/.cache/zsh/zcompdump-"$ZSH_VERSION"

PROMPT="%F{blue}%~%f %B%(?.%F{green}.%F{red})λ%f%b "

function preexec() {
  timer=${timer:-$SECONDS}
}

function precmd() {
  if [ $timer ]; then
    timer_show=$(($SECONDS - $timer))
    export RPROMPT="%F{cyan}${timer_show}s %{$reset_color%}"
    unset timer
  fi
}

PATH=~/bin:$PATH

EDITOR=nvim
. $ZDOTDIR/xdg.sh
. $ZDOTDIR/aliasrc
. $ZDOTDIR/almostontop/almostontop.plugin.zsh
. $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
. $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
