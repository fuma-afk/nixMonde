{ pkgs, ... }:
{
  home.packages = with pkgs; [

 clipse
  ];
   # home.file.".config/waybar/default".recursive = true;
  home.file.".config/clipse/config.json".source = ./config/config.json;
}
