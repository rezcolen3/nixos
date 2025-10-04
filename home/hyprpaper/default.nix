{ config, pkgs, ... }:

{
  home.packages = [ pkgs.hyprpaper ];

  home.file.".config/hypr/hyprpaper.conf".text = ''
    preload = /etc/nixos/home/hyprpaper/hyprland-anime-girl.png
    wallpaper = *,/etc/nixos/home/hyprpaper/hyprland-anime-girl.png
    splash = true
  '';
}
