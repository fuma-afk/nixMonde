{ pkgs, ... }:
{
  home.packages = with pkgs; [
				fastfetch
			];

  home.file.".config/fastfetch/config.jsonc".source = ./config/config.jsonc;
}

