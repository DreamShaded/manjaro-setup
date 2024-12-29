export EDITOR=/usr/bin/vim
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export BROWSER=/usr/bin/google-chrome-stable

. "$HOME/.cargo/env"

export PATH=$PATH:/usr/local/go/bin:/opt/telegram/:/home/r/.local/bin

bash -c 'sleep 2 ; setxkbmap -layout us,ru -option grp:shifts_toggle'&
bash -c 'sleep 3 ; xset r rate 170 50' &
