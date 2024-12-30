{ pkgs, config, ... }:
{
  home.packages = with pkgs; [

	waypaper
	];
	# since waypaper doeesn't have a module in home manager
	# we are importing the confing in a declarative way from our nix folders
	# while leaving it writeable - this is a niche use since waypaper needs the config to be writeable
	# but we want to push the post command for the script in a declarative way
	home.file.".config/waypaper/config.ini".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nix/home-manager/modules/waypaper/config/config.ini";

}
