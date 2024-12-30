{ inputs, pkgs, config, ...}:

let
  wallpaperone = pkgs.fetchurl {
    url = "https://i.imgur.com/zdrP48b.jpeg";
    hash = "sha256-vnQ002S49uzRJ8dNrBzMKExyESWI85PrbWXqUD0Ox5o=";
  };
  wallpapertwo = pkgs.fetchurl {
    url = "https://i.imgur.com/XKjSHER.jpeg";
    hash = "sha256-+oQ6Ito7qZNPWavAbnBtwE2xlrjrlJBlxXWj8oFdN10=";
  };
  wallpaperthree = pkgs.fetchurl {
    url = "https://i.imgur.com/1ThQItS.png";
    hash = "sha256-GAdQWWkWgSYZJwyPzlbgVnaGuchMAYuX4eBwaBL+Bx0=";
  };
in
{
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      preload = [
        (builtins.toString wallpaperone)
	(builtins.toString wallpapertwo)
	(builtins.toString wallpaperthree)
      ];

      wallpaper = [
        "DP-1,${builtins.toString wallpapertwo}"
        "DP-2,${builtins.toString wallpaperone}"
	"HDMI-A-1,${builtins.toString wallpaperthree}"
      ];
    };
  };
}
