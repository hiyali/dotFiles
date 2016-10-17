
# exec i3
exec /usr/bin/i3 >~/i3log-$(date +'%F-%k-%M-%S') 2>&1
/usr/bin/numlockx on

# exec ibus
ibus-daemon --xim -d
