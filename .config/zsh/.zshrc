# Lines configured by zsh-newuser-install
HISTFILE=~/.local/state/zsh/history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch
bindkey -e
export ZDOTDIR=~/.config/zsh

zstyle :compinstall filename '/home/collin/.zshrc'
autoload -Uz compinit
compinit -d ~/.cache/zsh/zcompdump-"$ZSH_VERSION"

# starship prompt
# eval "$(starship init zsh)"
PROMPT="%F{blue}%~%f %B%(?.%F{green}.%F{red})λ%f%b "

PATH=~/bin:$PATH
EDITOR=nvim

test -r "~/.dir_colors" && eval $(dircolors ~/.config/zsh/dir_colors)

. $ZDOTDIR/xdg.sh
. $ZDOTDIR/aliasrc
. $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
. $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
