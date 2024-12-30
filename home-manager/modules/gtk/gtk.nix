#ATTN NERD! USE DCONF-EDITOR TO SET THE ACTUAL THEME GLOBALLY

{ pkgs, ... }: {
#  home.sessionVariables = { GTK_THEME = "Nordic"; };
   home.sessionVariables = { GTK_THEME = "Dracula"; };
  home.pointerCursor = {
    name = "catppuccin-mocha-dark-cursors";
    package = pkgs.catppuccin-cursors.mochaDark;
    size = 24;
  };
  gtk = {
    enable = true;
    theme = {
       name = "Dracula";
       package = pkgs.dracula-theme;	
#      name = "Nordic";
#      package = pkgs.nordic;


    };
    cursorTheme = {
      name = "catppuccin-mocha-dark-cursors";
      package = pkgs.catppuccin-cursors.mochaDark;
    };
    iconTheme = {
       name = "Dracula";
       package = pkgs.dracula-icon-theme;
#      name = "Papirus-Dark";
#      package = pkgs.papirus-icon-theme;
    };
    font = {
      name = "CaskaydiaCove Nerd Font"; #"JetBrainsMono Nerd Font";
      size = 11;
    };
    gtk3.extraConfig = {
      gtk-xft-antialias = 1;
      gtk-xft-hinting = 1;
      gtk-xft-hintstyle = "hintslight";
      gtk-xft-rgba = "rgb";
      gtk-cursor-theme-name = "catppuccin-mocha-green-cursors";
    };
    gtk2.extraConfig = ''
      gtk-xft-antialias=1
      gtk-xft-hinting=1
      gtk-xft-hintstyle="hintslight"
      gtk-xft-rgba="rgb"
    '';
    gtk4.extraConfig = {
      gtk-xft-antialias = 1;
      gtk-xft-hinting = 1;
      gtk-xft-hintstyle = "hintslight";
      gtk-xft-rgba = "rgb";
      gtk-cursor-theme-name = "catppuccin-mocha-green-cursors";
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "gtk";
  };
}
