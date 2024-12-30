{ pkgs, config, ... }:
{
  home.packages = with pkgs; [

	vesktop
	];
	# since vesktop doesn't have a module in home manager
	# we are importing the them file for pywal in a declarative way from our nix folders
	# while leaving it writeable - this is a niche use since waypaper needs the config to be writeable
	# but we want to push the post command for the script in a declarative way
	home.file.".config/vesktop/themes/pywal-vencord.theme.css".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nix/home-manager/modules/vesktop/theme/pywal-vencord.theme.css";

}
