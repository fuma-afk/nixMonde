{ pkgs, config, lib, ... }:
{

 nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
             "anydesk"
	     "spotify"
           ];
              


  home.packages = with pkgs; [
	pinta	
#        spotify
        ];

}
