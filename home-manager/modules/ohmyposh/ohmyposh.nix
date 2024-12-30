{ pkgs, ... }:
{
  home.packages = with pkgs; [
   
    oh-my-posh
   
  ];

  home.file.".config/ohmyposh/EDM115-newline.omp.json".source = ./config/EDM115-newline.omp.json;
  home.file.".config/ohmyposh/zen.toml".source = ./config/zen.toml;
  
}

