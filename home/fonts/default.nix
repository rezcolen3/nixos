{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nerd-fonts.space-mono
  ];

  fonts.fontconfig.enable = true;
}
