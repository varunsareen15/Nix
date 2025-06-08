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
    spotify
    zathura
    vscode
    ranger
    zoom-us
    qemu
    virt-manager
    wine
    libreoffice-qt6
    qbittorrent

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
    sqlcmd
    rclone

    # Coding stuff
    nodejs
    zig
    nodejs
    rustup
    cmake
    clang
    openssl
    pkg-config
    libpq
    unixODBC
    freetds
    glibc
    dotnet-sdk
    texliveFull

    # WM packages
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    hyprshot
    wlr-randr

    # Misc
    cmatrix
    bemoji
    nix-prefetch-scripts
    rtorrent
    openvpn
    unimatrix
    cava
    vulkan-loader
    vulkan-tools
    vulkan-validation-layers
    wireguard-tools
  ];
}
