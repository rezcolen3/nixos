{ ... }:
{
  wayland.windowManager.hyprland.settings.bind = [
    # apps
    "$mod, d, exec, wofi --show drun"
    "$mod, RETURN, exec, kitty"

    # window management
    "$mod, q, killactive"

    # screenshot
    "$mod, s, exec, grim -g \"$(slurp -w 0)\" - | wl-copy"

    # windows
    "$mod, code:10, workspace, 1"
    "$mod, code:11, workspace, 2"
    "$mod, code:12, workspace, 3"
    "$mod, code:13, workspace, 4"
    "$mod, code:14, workspace, 5"
    "$mod, code:15, workspace, 6"
    "$mod, code:16, workspace, 7"
    "$mod, code:17, workspace, 8"
    "$mod, code:18, workspace, 9"
    "$mod, code:19, workspace, 10"

    # move to window
    "$mod SHIFT, code:10, movetoworkspace, 1"
    "$mod SHIFT, code:11, movetoworkspace, 2"
    "$mod SHIFT, code:12, movetoworkspace, 3"
    "$mod SHIFT, code:13, movetoworkspace, 4"
    "$mod SHIFT, code:14, movetoworkspace, 5"
    "$mod SHIFT, code:15, movetoworkspace, 6"
    "$mod SHIFT, code:16, movetoworkspace, 7"
    "$mod SHIFT, code:17, movetoworkspace, 8"
    "$mod SHIFT, code:18, movetoworkspace, 9"
    "$mod SHIFT, code:19, movetoworkspace, 10"
  ];
}
