export PS1="\[\033[1;32m\][\[\e]0;\u@\h: \w\a\]\u@\h:\w]\$\[\033[0m\] "


alias lr="ls -lRh"
alias rebuild-system="sudo cp .nixos-config/* /etc/nixos/ && sudo nixos-rebuild switch"
alias set-brightness="xrandr --output eDP --brightness"

