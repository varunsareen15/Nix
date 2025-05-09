{ config, ...}:

{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';

    shellAliases =
      let
        flakeDir = "/home/varun/nix";
      in {
      nrs = "sudo nixos-rebuild switch --flake ${flakeDir}";
      upd = "nix flake update ${flakeDir}";
      upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

      hms = "home-manager switch --flake ${flakeDir}";

      conf = "nvim /home/varun/nix/hosts/unit/configuration.nix";
      pkgs = "nvim /home/varun/nix/home-manager/home-packages.nix";

      ff = "fastfetch";
      hotspot = "sudo nmcli device wifi connect 'Varun (2)'";
      wifi = "sudo ifconfig wlp4s0";
      eth = "sudo ifconfig eno1";
      token = "echo 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";
      gsync = "git pull https://github.com/varunsareen15/Nix main";
    };
  };
}
