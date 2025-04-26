{ pkgs, ... }:

{
  programs.fish.enable = true;

  users = {
    users.varun = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      packages = with pkgs; [];
      shell = pkgs.fish;
    };
  };
}
