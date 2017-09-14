from i3pystatus import Status
from i3pystatus.core import desktop

status = Status(logfile='/tmp/i3pystatus.log')

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
                hints={"separator": False, "separator_block_width": 0},
                format="\uf017 %a %-d %b %H:%M Week%V")

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("load",
                color = "#ffe957",
                format="\uf1fe {avg1} {avg5} {avg15}   ",
                hints={"separator": False, "separator_block_width": 0})

# Shows your CPU temperature, if you have a Intel CPU
status.register("temp",
                hints={"separator": False, "separator_block_width": 0},
                format="\uf17c {temp:.0f}°C   ",)


# Displays whether a DHCP client is running
status.register("runwatch",
                name="\uf065 DHCP  ",
                hints={"separator": False, "separator_block_width": 0},
                path="/var/run/dhclient*.pid",)

# Shows the address and up/down state of eth0. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)
#
# Note: the network module requires PyPI package netifaces
status.register("network",
                interface="eth0",
                hints={"separator": False, "separator_block_width": 0},
                format_up="\uf124 {v4cidr}  ",)


# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
                hints={"separator": False, "separator_block_width": 0},
                path="/",
                format="\uf1c0 [{avail}G]   ",)

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
                hints={"separator": False, "separator_block_width": 0},
                format= '  \uf001'  + " {volume}   ",)


#status.register("spotify",
#                color = "#2EBD59",
#                status = {'playing': '\uf144', 'paused': '\uf1bc'},
#                format = "  {status} - {title}",
#                hints={"separator": False, "separator_block_width": 0})

status.register("pomodoro",
                log_level=True,
                format=" \uf13d {current_pomodoro}/{total_pomodoro} {time}  ",
                sound = "/usr/share/sounds/gnome/default/alerts/not-alert.wav",
                hints={"separator": False, "separator_block_width": 0})


# echo -n "black" | nc -4u -w0 localhost 1738
status.register("anybar")


# Shows mpd status
# Format:
# Cloud connected▶Reroute to Remain

status.run()
