define(USER, collin)
define(script_dir, /home/USER/.config/sway/scripts)
define(m4_dir, /home/USER/.config/sway/m4)

dnl == Keybindings ==
define(mod, Mod4)
include(m4_dir/localkeys.m4)
include(m4_dir/globalkeys.m4)

dnl == Input Devices ==
input "type:touchpad" {
    dwt disabled
    tap enabled
    natural_scroll disabled
    middle_emulation disabled
}
input "type:keyboard" {
    xkb_options caps:super
}

dnl == Borders ==
default_border pixel 2
smart_gaps on
smart_borders on
gaps inner 10
client.focused #61AFEF #61AFEF #61AFEF 
client.unfocused #282C34 #282C34 #282C34

dnl == Status Bar ==
bar {
    position bottom
    status_command while script_dir/status.sh; do sleep 1; done
    mode hide
    modifier mod
    workspace_buttons no
    height 31
    font "Iosevka Nerd Font" 12
    colors {
        statusline #abb2bf
        background #353B45
    }
}

include(m4_dir/systemd-user.conf)
