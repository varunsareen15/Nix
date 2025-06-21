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
      upd = "nix flake update --flake ${flakeDir}";
      upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

      hms = "home-manager switch --flake ${flakeDir}";

      conf = "nvim /home/varun/nix/hosts/unit/configuration.nix";
      pkgs = "nvim /home/varun/nix/home-manager/home-packages.nix";

      ff = "fastfetch";
      hotspot = "sudo nmcli device wifi connect 'Varun (2)'";
      wifi = "sudo ifconfig wlp4s0";
      eth = "sudo ifconfig eno1";
      gsync = "git pull https://github.com/varunsareen15/Nix main";
      BX17 = "bluetoothctl connect 59:21:E5:C7:1E:2B";
      bose = "bluetoothctl connect C8:7B:23:A1:D6:F8";
      zen = "flatpak run --socket=wayland app.zen_browser.zen";
      mssql = "sqlcmd -S onanatrials.database.windows.net -U onana -P sqltrial@123";
      cal = "tui-calendar";
      branch-reset = "git fetch origin && git reset --hard origin/main";
      hypridle = "hyprctl dispatch exec hypridle";
    };
  };
}
