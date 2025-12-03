{ ... }:
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
    ./hyprpicker # Color picker
    ./bibata # Cursor theme
    ./hyprlock # Screen locker

    # Apps
    ./kitty # Terminal
    ./neovim # Code Editor
    ./firefox # Browser
    ./vscode # Visual Code Editor
    ./prismlauncher # Minecraft launcher
    ./tor

    # Tools
    ./node # JS stuff
    ./git # Version control
    ./nixfmt # Nix formatter
    ./java # Java runtime

    # Misc
    ./btop # System monitor
    ./fastfetch # System info tool // Flex tool
    ./zsh # Shell
    ./starship # Shell Prompt
    ./clippy # screenshots & clipboard management
    ./bluetui # Bluetooth TUI
  ];
}
