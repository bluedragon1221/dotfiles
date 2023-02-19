#!/bin/bash

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

export LESSHISTFILE=/dev/null
export XAUTHORITY=~/.cache/xauthority
export CARGO_HOME=~/.local/share/cargo
export RUSTUP_HOME=~/.local/share/rustup
export GTK2_RC_FILES=~/.config/gtk-2.0/gtkrc
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
export PYTHONSTARTUP="/etc/python/pythonrc"
