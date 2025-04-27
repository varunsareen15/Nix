{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    wget
    neovim
    alacritty
    btop
    xwallpaper
    pcmanfm
    rofi
    fastfetch
    git
    pavucontrol
    discord
    spotify
    fish
    gcc
    clang
    zig
    cmake
    pkg-config
    nodejs
    unzip
    rustup
    zathura
    docker
    rclone
    brightnessctl
    nix-ld
    tree
    bat
    gh 
    chromedriver
    cmatrix
    ani-cli
    texliveBasic
    xorg.xkill
    flameshot
    vscode
    rtorrent
    openvpn
    playerctl
    home-manager
    ranger
    wofi
    swww
    xwayland
    wl-clipboard
    cliphist
    file 
    scrot
    hyprland
    seatd
    xdg-desktop-portal-hyprland
    polybar
    waybar
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
    dina-font
    proggyfonts
    fixedsys-excelsior
    corefonts  
  ] ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues nerd-fonts);
}
