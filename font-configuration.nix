{config, pkgs, ...}:

{
    fonts = {
        fontconfig.enable = true;
        fontconfig.ultimate.enable = true;
        enableFontDir = true;
        enableGhostscriptFonts = true;
        fonts = with pkgs; [
            source-code-pro
            nerdfonts
            noto-fonts
            noto-fonts-cjk
            noto-fonts-emoji
            ipafont
            kochi-substitute
	    terminus_font
	    cherry
        ];

        fontconfig.defaultFonts = {
            monospace = [
                "DejaVu Sans Mono"
                "IPAGothic"
            ];
            sansSerif = [
                "DejaVu Sans"
                "IPAPGothic"
            ];
            serif = [
                "DejaVu Serif"
                "IPAPMincho"
            ];
        };
    };
}
