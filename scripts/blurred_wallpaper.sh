blurredwallpaper="$HOME/.cache/blurred_wallpaper.jpg"
used_wallpaper="$HOME/.cache/current_wallpaper.jpg"
blur="50x30"

magick $used_wallpaper -resize 75% $blurredwallpaper
echo ":: Resized to 75%"
if [ ! "$blur" == "0x0" ]; then
        magick $blurredwallpaper -blur $blur $blurredwallpaper
        echo ":: Blurred"
    fi
