{ ... }:
{
  programs.waybar.settings = [
    {
      "name" = "left_bar";
      "layer" = "top";
      "position" = "left";
      "width" = 20;
      "margin-left" = 5;
      "margin-bottom" = 5;
      "margin-top" = 5;
      "modules-left" = [ "hyprland/workspaces" ];
      "modules-right" = [
        "cpu"
        "memory"
        "pulseaudio"
      ];

      # modules-left
      "hyprland/workspaces" = {
        "on-click" = "activate";
        "format" = "{icon}";
        "on-scroll-up" = "hyprctl dispatch workspace e+1";
        "on-scroll-down" = "hyprctl dispatch workspace e-1";
        "format-icons" = {
          "active" = "";
          "default" = "";
          "empty" = "";
        };
        "show-special" = true;
        "persistent-workspaces" = {
          "*" = 10;
        };
      };

      # modules-right
      "cpu" = {
        "format" = "  {usage}%";
        "max-usage" = 100;
        "min-usage" = 0;
        "interval" = 2;
        "tooltip" = false;
        "rotate" = 90;
      };
      "memory" = {
        "format" = "  {used}GB";
        "max-usage" = 100;
        "min-usage" = 0;
        "interval" = 2;
        "tooltip" = false;
        "rotate" = 90;
      };
      "pulseaudio" = {
        "format" = "  {volume}%";
        "format-muted" = " 0%";
        "min-volume" = 0;
        "max-volume" = 100;
        "interval" = 2;
        "on-click" = "pactl set-sink-mute @DEFAULT_SINK@ toggle";
        "on-scroll-up" = "pactl set-sink-volume @DEFAULT_SINK@ +2%";
        "on-scroll-down" = "pactl set-sink-volume @DEFAULT_SINK@ -2%";
        "tooltip" = false;
        "rotate" = 90;
      };
    }
  ];

}
