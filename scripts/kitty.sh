#set pywall generated file as source file
source=~/.cache/wal/colors-kitty.conf
#set kitty theme as destination file
destination=~/.config/kitty/current-theme.conf

#empty destination file whitout deleting so it doesn't piss off the nix store write-able symlink
> "$destination"
# Copy the content of the source file to the destination file to upgrade discord theme
cat "$source" > "$destination"
