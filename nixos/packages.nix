{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    discord
    spotify
    flameshot
    inkscape
    vlc
    xournalpp
    git
    ffmpeg
    pandoc
    firefox
    pcmanfm
    chromium
    xarchiver
    wget
    gthumb
    feh
    neovim-unwrapped
    kitty
    qpwgraph
    kitty-themes
    pavucontrol
    virt-manager
    arandr
    looking-glass-client
    scream
    unrar
    fzf
    (python310.withPackages(ps: [ps.matplotlib ps.torch ps.opencv4 ps.python-lsp-server]))
    go
    gcc
    zig
    oh-my-zsh
    zsh
  ];
}
