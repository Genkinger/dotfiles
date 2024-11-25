# xinput set-button-map $(xinput | rg Kensington | rg -v Keyboard | rg id=\(\\d+\) -or '$1') 1 2 3 4 5 6 7 8 9
# xinput set-button-map $(xinput | rg Kensington | rg -v Keyboard | rg id=\(\\d+\) -or '$1') 1 2 8 4 5 6 7 3 9
xinput set-button-map $(xinput | rg Kensington | rg -v Keyboard | rg id=\(\\d+\) -or '$1') 1 2 2 4 5 6 7 3 9
