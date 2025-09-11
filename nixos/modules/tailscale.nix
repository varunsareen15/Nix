{ config, pkgs, ... }:
{
  services.tailscale = {
    enable = true;
    # Disable Tailscale's tests (they poke /proc and fail in the Nix sandbox)
    package = pkgs.tailscale.overrideAttrs (_: { doCheck = false; });
  };
}

