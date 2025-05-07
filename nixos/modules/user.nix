{ pkgs, user, ... }:

{
  programs.fish.enable = true;

  users = {
    users.${user} = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      shell = pkgs.fish;
    };
  };
}
