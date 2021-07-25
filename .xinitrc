# feh for the wallpaper
~/.fehbg &

# 
while true
do
    LOCALTIME=$(date +%Y-%m-%d\ %H:%M)
    WIFI=$(cat /sys/class/net/wlan0/operstate)
    BATTARY="$(($(cat /sys/class/power_supply/BAT0/capacity)))%"
    FMEMORY=$(free -h | awk '(NR==2){print $4}')
#    FDISK=$(df -h | awk '{if ($6 == "/home") print $4}') #not done

    xsetroot -name "$WIFI | $BATTARY | $FMEMORY | $LOCALTIME | Hephaestus"
    sleep 20
done &

exec i3
