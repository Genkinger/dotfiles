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
    audacity
    pandoc
    firefox
    pcmanfm
    unzip
    nodePackages.vscode-html-languageserver-bin
    chromium
    libreoffice-fresh
    ripgrep
    htop
    gnumake
    xarchiver
    wget
    gthumb
    tree-sitter
    feh
    nil
    renoise
    clang-tools
    jdk17
    # jdk
    kitty
    julia
    marksman
    helix   
    # minecraft
    prismlauncher
    zotero
    texlab
    texlive.combined.scheme-full
    zathura
    reaper
    groff
    ghostscript
    qpwgraph
    kitty-themes
    pavucontrol
    xclip
    black
    virt-manager
    arandr
    looking-glass-client
    scream
    unrar
    fzf
    (python311.withPackages(ps: [ps.matplotlib ps.torch-bin (ps.opencv4.override { enableGtk2 = true; }) ps.python-lsp-server ps.rope ps.pyflakes ps.pyglet ps.pyaudio ps.bokeh ps.pandas]))
    go
    gopls
    gcc
    raylib
    nix-index
    zig
    oh-my-zsh
    ranger
    highlight
    ffmpegthumbnailer
    atool
    teams
    tmux
    xorg.xkill
    w3m
    zsh
  ];
}
