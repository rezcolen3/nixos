{ config, ... }:
{
  imports = [
    ./boot.nix
    ./locale.nix
    ./network.nix
    ./system.nix
    ./seatd.nix
    ./hardware.nix
    ./nixpkgs.nix
    ./audio.nix
    ./bluetooth.nix
    ./user.nix
  ];
}
