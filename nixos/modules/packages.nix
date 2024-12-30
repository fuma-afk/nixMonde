{ pkgs, inputs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
	};


 environment.systemPackages = with pkgs; [

	#desktop app
	gparted
	gimp
	#theme editor
	dconf-editor	
	# file manager
	nemo-with-extensions	
	usbutils # USB devices utility
	udiskie # automounter for usb disks
	udisks # Daemon, tools and libraries to access and manipulate disks, storage devices and technologies
	#CLI utils
	git
	unzip
	ntfs3g
	zip
	htop
	#termminal stuff
	neofetch
	eza # ls alternative
	#System stuff
	networkmanager	
	networkmanagerapplet
	firefox
	inputs.zen-browser.packages."${system}".default
#	wofi	
	#authentication manager and keyring
	polkit
	polkit_gnome
	gnome-keyring
	seahorse

	#hyprland stuff
	brightnessctl #control brightness
	swww #wallpapaer daemon

	hyprcursor
	#bluetooth
	blueman
	#video and image stuff:
	davinci-resolve
	obs-studio
	krita
#	ags
#	gnome-bluetooth
#	pkgs.libgtop       #Reads information about processes and the running system
#	bluez
	
	#clipboard utilities
	wl-clipboard
#	dart-sass
#	brightnessctl	

	


	#notification system
	swaynotificationcenter
	libnotify
	#screenshot utility
	hyprshot
	#audio
	pavucontrol
	mission-center
	#productivity
	thunderbird
	kdePackages.okular
	remmina
	virt-viewer
	#wayland stuff
	xwayland
	#gaming
	btop-rocm
	python312Packages.gpustat
	mangohud
	lutris
	heroic
	protonup
	polychromatic #razer stuff	
	openrazer-daemon	
	#emulation
	bottles
	#Multimedia
	mpv
	vlc
	playerctl #command line media key utility
	evtest #keyboard debugging tool to get media keys codes
	#p2p
	qbittorrent
	amule
	openvpn
#	openvpn3
	#backup tools:
	backrest	
	#img viewers
	digikam
	#utility
	smile #smile pickers
	baobab #space sniffer
	qalculate-gtk  #calculator
	virt-viewer   #virtualization viewer spice proxmox
	killall
	ventoy-full
	cryptomator
	whatsapp-for-linux
	rclone  #mount g drive	
	telegram-desktop
	vscode
	fuse3
	simple-scan
#	brscan4 #daemon scansioni brother rimosso messo in config
	#3d print
#	haskellPackages.jsaddle-webkit2gtk
	#3d printing
	orca-slicer
	freecad-wayland
	];
	environment.sessionVariables = {
		STEAM_EXTRA_COMPAT_TOOLS_PATHS =
		   "/home/fuma/.steam/root/compatibilitytools.d";
	};
}
