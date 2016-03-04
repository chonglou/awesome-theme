#!/bin/sh
. /etc/profile

export LANG=zh_CN.utf8
export LC_ALL=zh_CN.utf8
export LANGAGE=zh_CN.utf8


#fcitx
export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XIM=fcitx
export XIM_PROGRAM=fcitx

exec xrdb $HOME/.Xresources &
eval `dbus-launch --sh-syntax --exit-with-session`
fcitx -d &
xhost + localhost
#sudo ntpdate 0.pool.ntp.org &

exec awesome

exec pkill fcitx
