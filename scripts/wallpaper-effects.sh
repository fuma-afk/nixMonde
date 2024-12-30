# __        ______    _____  __  __           _       
# \ \      / /  _ \  | ____|/ _|/ _| ___  ___| |_ ___ 
#  \ \ /\ / /| |_) | |  _| | |_| |_ / _ \/ __| __/ __|
#   \ V  V / |  __/  | |___|  _|  _|  __/ (__| |_\__ \
#    \_/\_/  |_|     |_____|_| |_|  \___|\___|\__|___/
#                                                    

# Get current wallpaper
cache_file="$HOME/nix/assets/cache/current_wallpaper"

# Open rofi to select the Hyprshade filter for toggle
options="$(ls ~/nix/assets/hypr/effects/)\noff"

# Open rofi
choice=$(echo -e "$options" | rofi -dmenu -replace -config ~/nix/home-manager/modules/rofi/ml4w/config-themes.rasi -i -no-show-icons -l 5 -width 30 -p "Hyprshade") 
if [ ! -z $choice ] ;then
    echo "$choice" > ~/nix/assets/settings/wallpaper-effect.sh
    notify-send "Changing Wallpaper Effect to " "$choice"
    waypaper --wallpaper $(cat $cache_file)
fi
