for_window [app_id="float_foot"] floating enable

define(term, foot)
define(menu, script_dir/app_menu.sh)
define(clip_hist, script_dir/clipboard_history.sh)
define(clip_edit, script_dir/clipboard_edit.sh)

dnl == Clipboard ==
exec wl-paste --watch cliphist store
bindsym mod+v exec clip_hist
bindsym mod+Shift+v exec clip_edit

dnl == Applications ==
bindsym mod+x exec term
bindsym mod+Space exec menu
bindsym mod+s exec grim ~/Pictures/$(date +'%s_grim.png')
bindsym mod+Shift+s exec grim -g "$(slurp -p)" -t ppm - | convert - -format '%[pixel:p{0,0}]' txt:- | wl-copy
