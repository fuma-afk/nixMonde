#set pywall generated file as source file
sourcedisc=~/.cache/wal/colors-discord.css
#set vencord theme as destination file
destinationdisc=~/.config/vesktop/themes/pywal-vencord.theme.css

#empty destination file whitout deleting so it doesn't piss off the nix store write-able symlink
> "$destinationdisc"
# Copy the content of the source file to the destination file to upgrade discord theme
cat "$sourcedisc" > "$destinationdisc"
