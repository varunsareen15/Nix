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

      conf = "nvim /home/varun/nix/nixos/configuration.nix";
      pkgs = "nvim /home/varun/nix/nixos/packages.nix";

      ff = "fastfetch";
      xfix = "xrandr --output HDMI-1-1 --mode 1920x1080 --rate 144 --same-as eDP-2 && xrandr --output eDP-2 --mode 1920x1080";
      wfix = "xwallpaper --zoom ~/Pictures/Wallpapers/fog_forest_2.png";
      rename_manga = "/home/varun/.scripts/rename_manga.sh";
      zen = "flatpak run app.zen_browser.zen";
      hotspot = "sudo nmcli device wifi connect 'Varun (2)'";
      wifi = "sudo ifconfig wlp4s0";
      eth = "sudo ifconfig eno1";
    };
  };
}
