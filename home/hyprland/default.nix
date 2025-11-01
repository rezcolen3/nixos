{ ... }:
{

  imports = [
    ./binds.nix
    ./cursor.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";

      exec-once = [
        "waybar"
        "dunst"
        "swww init && swww img /etc/nixos/home/swww/use.png"
      ];

      general = {
        border_size = 1;
        gaps_in = 5;
        gaps_out = 5;
        resize_on_border = true;
        "col.active_border" = "0xff0000ff";
        "col.inactive_border" = "0xff0000ff";
      };

      decoration = {
        rounding = 5;
        active_opacity = 0.9;
        inactive_opacity = 0.7;

        shadow = {
          enabled = false;
        };
      };

      misc = {
        disable_hyprland_logo = true;
      };
    };
  };

  home.sessionVariables.NIXOS_OZONE_WL = "1";
}
