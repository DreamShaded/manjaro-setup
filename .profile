export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/google-chrome-stable
export PATH=$PATH:/opt/:/opt/telegram/:/opt/zettlr/:/opt/docker/:/home/r/.local/bin:/usr/local/texlive/2022/bin/x86_64-linux:$JAVA_HOME/bin:/opt/oracle/instantclient_21_9:/home/r/.local/share/PortWINE/PortProton:/usr/bin/:/home/r/.local/bin:/usr/local/texlive/2022/bin/x86_64-linux:/usr/bin/core_perl/

. "$HOME/.cargo/env"

bash -c 'sleep 2 ; setxkbmap -layout us,ru -option grp:shifts_toggle'&
bash -c 'sleep 3 ; xset r rate 170 50' &
