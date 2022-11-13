# Lines configured by zsh-newuser-install
HISTFILE=~/.local/state/zsh/history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch
bindkey -e
export ZDOTDIR="$HOME"/.config/zsh

zstyle :compinstall filename '/home/collin/.zshrc'
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

# prompt (starship)
# eval "$(starship init zsh)"
PS1="%F{blue}%~%f %(?.%F{green}.%F{red})%%%f "

PATH=~/bin/:$PATH

test -r "~/.dir_colors" && eval $(dircolors ~/.config/zsh/dir_colors)

. ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
. ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. ~/.config/zsh/aliasrc
. ~/.config/zsh/xdg.sh
