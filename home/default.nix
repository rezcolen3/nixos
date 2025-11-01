{ config, ... }:
{
  home.username = "rez";
  home.homeDirectory = "/home/rez";
  home.stateVersion = "25.05";

  imports = [
    # Environment
    ./hyprland # Window Manager
    ./wofi # App launcher
    ./waybar # Status bar
    ./dunst # Notifications
    ./fonts # Fonts
    ./swww # Wallpaper manager

    # Apps
    ./kitty # Terminal
    ./neovim # Code Editor
    ./firefox # Browser
    ./vscode # Visual Code Editor
    ./prismlauncher # Minecraft launcher

    # Tools
    ./node # JS stuff
    ./git # Version control
    ./nixfmt # Nix formatter

    # Misc
    ./pulseaudio # Audio stuff
    ./btop # System monitor
    ./fastfetch # System info tool // Flex tool
    ./zsh # Shell
    ./clippy # custom file for screenshots & clipboard management
  ];
}
