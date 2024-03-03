include(`/usr/share/doc/m4/examples/foreach.m4')

dnl == Manage Windows ==
bindsym mod+q kill
bindsym mod+f fullscreen
floating_modifier mod normal

foreach(num, (1, 2, 3, 4, 5, 6, 7, 8, 9), `
bindsym mod+num workspace number num
bindsym mod+Shift+num move container to workspace number num
')

dnl == Manage Sway ==
bindsym mod+r reload
bindsym mod+Shift+q exec swaymsg exit

dnl == Volume ==
bindsym XF86AudioLowerVolume  exec "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
bindsym XF86AudioRaiseVolume  exec "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
bindsym XF86MonBrightnessDown exec "brighnessctl set 5%-"
bindsym XF86MonBrightnessUp   exec "brighnessctl set 5%+"
