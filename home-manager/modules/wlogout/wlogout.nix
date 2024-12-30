{ pkgs, ... }:
{

  # TODO: im not satisfied with that

 
  programs.wlogout = {
    enable = true;
    package = pkgs.wlogout;
    layout = [
      {
        label = "lock";
        action = "hyprlock";
        text = "Lock";
        keybind = "l";
      }

      {
        label = "logout";
        action = "hyprctl dispatch exit 0";
        text = "Logout";
        keybind = "e";
      }

      {
        label = "shutdown";
        action = "systemctl poweroff";
        text = "Shutdown";
        keybind = "s";
      }

      {
        label = "reboot";
        action = "systemctl reboot";
        text = "Reboot";
        keybind = "r";
      }
   {
        label = "suspend";
        action = "systemctl suspend";
        text = "Suspend";
        keybind = "z";
      }
    {
        label = "hibernate";
        action = "systemctl hibernate";
        text = "Hibernate";
        keybind = "z";
      }
    ];

    style = ''
@import '/home/fuma/.cache/wal/colors-wlogout.css';

window {
    font-family: CaskaydiaCove Nerd Font;
    font-size: 14pt;
    color: #cdd6f4; /* text */
    background-color: rgba(30, 30, 46, 0.5);
}

grid {
  border-radius: 30px;
  margin: 200px 400px;
  padding: 10px;
  background-color: @background;
}

button {
  color: @foreground;

  border-radius: 20px;
  border-width: 3px;
  border-color: black;
  outline-style: none;
  margin: 10px;
  padding: 40px;

  background-repeat: no-repeat;
  background-size: 15%;
  background-position: center;
  background-color: rgba(30, 30, 46, 0);
}

button:hover {
    background-color: @color11;
    border-color: @color12;
	margin-left : 30px;
	margin-bottom : 30px;
	border-radius: 20px;
}


#lock {
    background-image: image(url("/home/fuma/nix/assets/apps/wlogout/lock.png"));
}

#logout {
    background-image: image(url("/home/fuma/nix/assets/apps/wlogout/logout.png"));
}

#shutdown {
    background-image: image(url("/home/fuma/nix/assets/apps/wlogout/power.png"));
}

#reboot {
    background-image: image(url("/home/fuma/nix/assets/apps/wlogout/restart.png"));
}
#suspend {
    background-image: image(url("/home/fuma/nix/assets/apps/wlogout/suspend.png"));
}
#hibernate {
    background-image: image(url("/home/fuma/nix/assets/apps/wlogout/hibernate.png"));
}
    '';
  };

}
