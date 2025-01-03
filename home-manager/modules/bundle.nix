{
	imports = [
#		./bash.nix #alternate shell
		./zsh/zsh.nix #shell
		./hyprland.nix # tiling manager and our DE
#		./waybar.nix 
		./rclone.nix # grrrr google drive
		./hyprlock/hyprlock.nix #lockscreen module
		./hypridle.nix #idle module
#		./hyprpaper.nix
#		./kitty.nix
		./kitty/kitty.nix # terminal emulator
#		./starship.nix # terminal theming and styling
		./fonts.nix #font? duh
		./waybar/waybar.nix # status bar
		./pywal/pywal.nix # utility to auto-generate themes
		./cava/cava.nix # 
		./gtk/gtk.nix  #theme utility for gtp apps
		./hyprshade/hyprshade.nix #apply gamma and contrast
		./waypaper/waypaper.nix  # wallpaper management utility
		./spicetify/spicetify.nix
#		./numlock.nix
		./vesktop/vesktop.nix  # Alternate Discord for linux
		./wlogout/wlogout.nix # log out manager
		./packages.nix #packages imported in home manager unfree
		./ohmyposh/ohmyposh.nix #terminal rice
		./fastfetch/fastfetch.nix #terminal rice
		./nwg-dock/nwg-dock.nix #docking bar
		./rofi/rofi.nix # launcher
		./clipse/clipse.nix #clipboard utility
		./mime.nix
		];
}
