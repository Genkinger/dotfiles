CWD=$(pwd)

SCRIPTS_SRC="$CWD/dotfiles/scripts"
I3_SRC="$CWD/dotfiles/i3"
KITTY_SRC="$CWD/dotfiles/kitty"

SCRIPTS_DEST="$HOME/scripts"
I3_DEST="$HOME/.config/i3"
KITTY_DEST="$HOME/.config/kitty"

SOURCES=($SCRIPTS_SRC $I3_SRC $KITTY_SRC)
DESTINATIONS=($SCRIPTS_DEST $I3_DEST $KITTY_DEST)


for i in ${!DESTINATIONS[@]}; do
    if [ -L ${DESTINATIONS[$i]} ]; then 
        echo "Unlinking ${DESTINATIONS[$i]}"
        unlink ${DESTINATIONS[$i]}
    fi
        echo "Linking ${SOURCES[$i]} -> ${DESTINATIONS[$i]}"
        ln -s ${SOURCES[$i]} ${DESTINATIONS[$i]}
done