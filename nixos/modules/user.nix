{ pkgs, user, ... }:

{
  programs.fish.enable = true;

  users = {
    users.${user} = {
      isNormalUser = true;
      extraGroups = [ "wheel" "libvirtd" "kvm" "docker" ];
      shell = pkgs.fish;
    };
  };
}
