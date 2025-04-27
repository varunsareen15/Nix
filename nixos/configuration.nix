{ config, lib, pkgs, inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./packages.nix
      ./modules/bundle.nix
    ];

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  disabledModules = [
    ./modules/xserver.nix
    # ./modules/hyprland.nix
  ];

  networking.hostName = "unit"; 

  time.timeZone = "America/Chicago";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "24.11"; 
}

