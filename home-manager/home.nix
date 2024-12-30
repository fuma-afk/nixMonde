{ pkgs, ... }:
{
	imports = [
		./modules/bundle.nix

	];

	home = {
		username = "fuma";
		homeDirectory = "/home/fuma";
		stateVersion = "25.05";
	};


	
}
