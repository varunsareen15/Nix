{ pkgs, ... }:

let
  unstable = import (fetchTarball "https://github.com/nixos/nixpkgs/archive/nixos-unstable.tar.gz") {
    system = pkgs.system;
  };
in {
  programs.neovim = {
    enable = true;
    package = unstable.neovim-unwrapped;
  };
}
