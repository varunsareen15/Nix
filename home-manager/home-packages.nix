{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop apps
    code-cursor
    imv
    mpv
    obs-studio
    pavucontrol
    teams-for-linux
    brave
    discord
    spotify
    zathura
    vscode
    ranger

    # CLI utils
    bc
    bottom
    brightnessctl
    cliphist
    ffmpeg
    ffmpegthumbnailer
    fzf
    git-graph
    grimblast
    htop
    hyprpicker
    ntfs3g
    mediainfo
    fastfetch
    playerctl
    ripgrep
    showmethekey
    silicon
    udisks
    ueberzugpp
    unzip
    w3m
    wget
    wl-clipboard
    wtype
    yt-dlp
    zip
    tree
    btop
    ani-cli
    bat

    # Coding stuff
    nodejs
    zig
    nodejs
    rustup
    cmake
    clang

    # WM packages
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    hyprshot

    # Misc
    cmatrix
    bemoji
    nix-prefetch-scripts
    rtorrent
    openvpn
  ];
}
