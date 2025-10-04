{ ... }:
{
  programs.waybar.settings = [
    {
      name = "top_bar";
      layer = "top";
      position = "top";
      margin-top = 5;
      margin-right = 5;
      margin-left = 5;
      height = 25;
      modules-left = [
        "custom/nixos-btw"
        "user"
      ];
      modules-center = [
        "hyprland/window"
      ];
      modules-right = [
        "clock#time"
        "custom/separator_dot"
        "clock#calendar"
      ];

      # modules-left
      "custom/nixos-btw" = {
        format = "󱄅 btw";
        on-click = "kitty --hold fastfetch";
        tooltip = false;
      };

      "user" = {
        format = "{user} (uptime {work_d}d:{work_H}h:{work_M}m)";
        tooltip = false;
      };

      # modules-center
      "hyprland/window" = {
        "format" = "{title}";
        "max-length" = 75;
        tooltip = false;
      };

      # modules-right
      "clock#time" = {
        format = "{:%I:%M %p}";
        tooltip = false;
      };
      "custom/separator_dot" = {
        format = " • ";
        tooltip = false;
      };
      "clock#calendar" = {
        "format" = "{:%a %d-%b}";
        "tooltip-format" = "<tt><small>{calendar}</small></tt>";
        "actions" = {
          "on-click-right" = "mode";
        };
        "calendar" = {
          "mode" = "month";
          "mode-mon-col" = 3;
          "on-scroll" = 1;
          "on-click-right" = "mode";
          "format" = {
            "months" = "<span color='#4d6affff'><b>{}</b></span>";
            "days" = "<span color='#c4d0ffff'><b>{}</b></span>";
            "weekdays" = "<span color='#c4d0ffff'><b>{}</b></span>";
            "today" = "<span color='#0000ffff'><b><u>{}</u></b></span>";
          };
        };
      };
    }
  ];
}
