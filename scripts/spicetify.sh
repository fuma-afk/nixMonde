#!/bin/bash

#Found this script over at https://github.com/prasanthrangan/hyprdots and it works so much better

if 
	pgrep -x spotify > /dev/null ; then
        pkill -x spicetify
        spicetify -q watch -s &
    fi

#my script to update spicetify without restarting it, kinda janky ngl, sometimes it does restart but idk why it does that, if you can improve it, please let me know. I use it in my wallpaper changer script 
#
#file=~/.config/spicetify/Themes/def/color.ini
#
#if [ -e "$file" ]; then
# rm $file && cp ~/.cache/wal/color.ini $file && spicetify watch -s -n
#else
#  touch $file && rm $file && cp ~/.cache/wal/color.ini $file && spicetify watch -s -n
#
#fi
