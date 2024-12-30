# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, lib, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/bundle.nix
     ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
#  boot.initrd.systemd.enable = true;  ##Strange error on boot?
  boot.kernelPackages = pkgs.linuxPackages_zen;
  boot.initrd.luks.devices."luks-ae636880-29fb-4c81-a66b-4ec1a83c8fbb".device = "/dev/disk/by-uuid/ae636880-29fb-4c81-a66b-4ec1a83c8fbb";
   #SSD optimization for luks
  boot.initrd.luks.devices."luks-ae636880-29fb-4c81-a66b-4ec1a83c8fbb".allowDiscards = true;
  boot.initrd.luks.devices."luks-ae636880-29fb-4c81-a66b-4ec1a83c8fbb".bypassWorkqueues = true;
  services.fstrim.enable = true;
  networking.hostName = "nixMonde"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  #enabling flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  #auto garbage collect config older than 30 days
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };
  #auto store optimization
  nix.settings.auto-optimise-store = true;
  #enable font folder
  fonts.fontDir.enable = true;

  # Enable networking
  networking.networkmanager.enable = true;
  # Enable Podman Daemon
  virtualisation.containers.enable = true;
 # virtualisation = {
 #   podman = {
 #     enable = true;

      # Create a `docker` alias for podman, to use it as a drop-in replacement
 #     dockerCompat = true;

      # Required for containers under podman-compose to be able to talk to each other.
 #     defaultNetwork.settings.dns_enabled = true;
 #   };
#  };
  # Set your time zone.
  time.timeZone = "Europe/Rome";

  # Select internationalisation properties.
  i18n.defaultLocale = "it_IT.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "it_IT.UTF-8";
    LC_IDENTIFICATION = "it_IT.UTF-8";
    LC_MEASUREMENT = "it_IT.UTF-8";
    LC_MONETARY = "it_IT.UTF-8";
    LC_NAME = "it_IT.UTF-8";
    LC_NUMERIC = "it_IT.UTF-8";
    LC_PAPER = "it_IT.UTF-8";
    LC_TELEPHONE = "it_IT.UTF-8";
    LC_TIME = "it_IT.UTF-8";
  };

  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
#  services.xserver.enable = true;
#  services.displayManager.sddm.wayland.enable = true;
#  Enable the KDE Plasma Desktop Environment.
#  services.displayManager.sddm.enable = true;
#  services.desktopManager.plasma6.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "it";
    variant = "";
  };

  # Enable Bluetooth
  hardware.bluetooth.enable = true ;

  # Enable Brother Scanner
  hardware.sane = {
		enable = true;
		brscan4.enable = true;
		brscan4.netDevices = {
				Brother = { model = "MF-2700DW"; 
					    ip = "192.168.155.175";
					};
				};
		};

  # enable Open Razer
  hardware.openrazer.enable = true;

  # Configure console keymap
  console.keyMap = "it2";

  # Enable CUPS to print documents.
  services.printing.enable = true;
  #enable network and automount tools for file managers:
  services.gvfs.enable = true;
  services.udisks2.enable = true;

    # Enable sound with pipewire.
   
    hardware.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
};

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.fuma = {
    isNormalUser = true;
    description = "Fuma";
    extraGroups = [ "networkmanager" "wheel" "openrazer" "podman" "scanner" ];
#    packages = with pkgs; [
#      kdePackages.kate
#      thunderbird
 #   ];
  };

#  environment.variables = {
#    MOZ_ENABLE_WAYLAND = 0;  maybe fix crash on firefox
#     __GLX_VENDOR_LIBRARY_NAME=mesa; #maybe fix orca?
#      __EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/50_mesa.json;

#  };
  #enable hyprland
  programs.hyprland = {
		enable = true;
		withUWSM = true;
		

		};
#  programs.hyprland.package = inputs.hyprland.packages."${pkgs.system}".hyprland;
 #authentication daemons and keyring stuff 
  services.gnome.gnome-keyring.enable = true;
  security.polkit.enable = true;
  security.pam.services.hyprlock = {};
  #steam
  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;
  programs.gamemode.enable = true;  
	  

  
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    sl
    home-manager
    
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ 4662 ];
  # networking.firewall.allowedUDPPorts = [ 4672 ];
  # Or disable the firewall altogether.
   networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?

}
