CWD=$(pwd)

SCRIPTS_SRC="$CWD/dotfiles/scripts"
I3_SRC="$CWD/dotfiles/i3"
SWAY_SRC="$CWD/dotfiles/sway"
KITTY_SRC="$CWD/dotfiles/kitty"
ALACRITTY_SRC="$CWD/dotfiles/alacritty"

SCRIPTS_DEST="$HOME/scripts"
I3_DEST="$HOME/.config/i3"
SWAY_DEST="$HOME/.config/sway"
KITTY_DEST="$HOME/.config/kitty"
ALACRITTY_DEST="$HOME/.config/alacritty"

SOURCES=( $ALACRITTY_SRC $SWAY_SRC $SCRIPTS_SRC $I3_SRC $KITTY_SRC)
DESTINATIONS=($ALACRITTY_DEST $SWAY_DEST $SCRIPTS_DEST $I3_DEST $KITTY_DEST)

for i in ${!DESTINATIONS[@]}; do
    if [ -L ${DESTINATIONS[$i]} ]; then 
        echo "Unlinking ${DESTINATIONS[$i]}"
        unlink ${DESTINATIONS[$i]}
    fi
        echo "Linking ${SOURCES[$i]} -> ${DESTINATIONS[$i]}"
        ln -s ${SOURCES[$i]} ${DESTINATIONS[$i]}
done
