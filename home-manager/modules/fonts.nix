{ pkgs, inputs, lib, ... }: {
       
fonts.fontconfig.enable = true;

home.packages = [


			pkgs.font-awesome
			pkgs.nerd-fonts.caskaydia-cove
			pkgs.nerd-fonts.jetbrains-mono
			pkgs.fira-sans
			pkgs.roboto
			];

}
