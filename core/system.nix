{ ... }:
{
  system.stateVersion = "25.05";

  services.openssh.enable = true;
  services.openssh.permitRootLogin = "yes"; # or "prohibit-password" if you want only key-based login
  services.openssh.passwordAuthentication = true; # optional, use false for key-only

  networking.firewall.enable = false;

}
