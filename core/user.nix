{
  config,
  lib,
  pkgs,
  ...
}:
let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz";
in
{
  programs.zsh.enable = true;

  users.users.rez = {
    isNormalUser = true;
    description = "Rez"; # Set a password with ‘passwd’.
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
      "input"
      "tty"
    ];
    packages = with pkgs; [ ];
    shell = pkgs.zsh;
  };

  imports = [
    (import "${home-manager}/nixos")
  ];

  home-manager.useUserPackages = true;
  home-manager.useGlobalPkgs = true;
  home-manager.backupFileExtension = "backup";
  home-manager.users.rez = import ../home;

  services.flatpak.enable = true;
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
}
