{ ... }:
{
  imports = [
    ./left_bar.nix
    ./top_bar.nix
    ./styles.nix
  ];

  programs.waybar.enable = true;
}
