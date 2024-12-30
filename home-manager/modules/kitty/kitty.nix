{ pkgs, config, ... }:
{

  #programs.kitty = {



  #  enable = true;
#    font = {
#      name = "CaskaydiaCove Nerd Font";
#      size = 14.0;
  # };
 home.packages = with pkgs; [
kitty
 ];

 #   settings = {
 #     bold_font = "auto";
 #     italic_font = "auto";
 #     bold_italic_font = "auto";
 #     background_opacity = "0.7";
 #     confirm_os_window_close = 0;
 #     enable_audio_bell = false;
 #     shell = "${pkgs.zsh}/bin/zsh";
 #   };


  #  shellIntegration.enableZshIntegration = true;
	   
 
  home.file.".config/kitty/current-theme.conf".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nix/home-manager/modules/kitty/theme/current-theme.conf";
  home.file.".config/kitty/kitty.conf".source = ./kitty.conf;
  home.file.".profile".source = ./.profile;  #placeholder this starts uwsm start select after login. it has been a pita 
#	 catppuccin.kitty.enable = true;
}

