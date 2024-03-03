#!/bin/bash
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:-1,hl+:#61afef
--color=info:#98c379,prompt:#c678dd,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef

--ansi
--reverse
--no-scrollbar
--prompt "App Search: "
--no-info
'

foot --app-id=float_foot -- sh -c "cat ~/.cache/dmenu_run | fzf | xargs swaymsg exec --"

unset FZF_DEFAULT_OPTS