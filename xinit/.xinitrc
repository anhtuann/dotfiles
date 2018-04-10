[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec i3 --shmlog-size=26214400
