# ~/.config/nixpkgs/hyprshade.nix
{ pkgs, lib, ... }:

let
  # Gamma and vibrance values to balance eye protection and image quality
  gammaValue = "1.2";  # Adjust gamma (brightness and contrast)
  vibranceValue = "0.3";  # Subtle color enhancement

in
{
  # Ensure hyprshade is installed as a package
  home.packages = [
    pkgs.hyprshade
  ];


  home.file.".config/hyprshade/shaders/blue-light-filter-25.glsl".source = ./shaders/blue-light-filter-25.glsl;
  home.file.".config/hyprshade/shaders/blue-light-filter-50.glsl".source = ./shaders/blue-light-filter-50.glsl;
  home.file.".config/hyprshade/shaders/blue-light-filter-75.glsl".source = ./shaders/blue-light-filter-75.glsl;
  home.file.".config/hyprshade/shaders/invert-colors.glsl".source = ./shaders/invert-colors.glsl;

}