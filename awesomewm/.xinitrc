# exec ck-launch-session dbus-launch --sh-syntax --exit-with-session awesome
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
exec dbus-launch --sh-syntax --exit-with-session fcitx & exec awesome
