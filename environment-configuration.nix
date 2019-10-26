{ config, pkgs, ... }:

{
environment = {
    systemPackages = with pkgs; [ 
        anki
        wget 
        vim 
        git 
        compton 
        ranger 
        zsh
        rofi 
        chromium 
        vlc 
        zip 
        unzip 
        feh
        thunderbird
        vscode
        discord 
        transmission 
        arandr 
        pavucontrol 
        wine 
        winetricks 
        htop
        gotop
        nim
        ldc
        dmd
        dub
        kitty
        anydesk
        farbfeld
        ghostscript
        openvpn
        jetbrains.clion
        texlive.combined.scheme-full
        solvespace
	alacritty
	xdg_utils
	emacs
	obs-studio
	krita
    ];

    pathsToLink = [ "/libexec" ];
    variables = {
        #PULSE_LATENCY_MSEC = "90" ;
    };
  };
}
