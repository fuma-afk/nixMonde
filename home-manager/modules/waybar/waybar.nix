{ pkgs, ... }:
{
  home.packages = with pkgs; [
    waybar
    wttrbar
    pamixer

#    (nerdfonts.override {
#      fonts = [
#        "JetBrainsMono"
#      ];
#    })
  ];

 # home.file.".config/waybar/modules".source = ./modules;
  
  
 # home.file.".config/waybar/default".recursive = true;
 # home.file.".config/waybar/default".source = ./default;
  
 # home.file.".config/waybar/bar2".recursive = true;
  
}
