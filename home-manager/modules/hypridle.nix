{
  services.hypridle = {
	enable = true;    

    settings = {
      general = {
        lock_cmd = "pidof hyprlock || hyprlock";

        before_sleep_cmd = "hyprlock";
        after_sleep_cmd = "hyprctl dispatch dpms on";
      };

      listener = [
        {
          timeout = 150;
          on-timeout = "hyprlock";
        }
        {
          timeout = 300;  #350
          on-timeout = "hyprctl dispatch dpms off";

          on-resume = "hyprctl dispatch dpms on";
        }
        {
          timeout = 1200; #1200
          on-timeout = "systemctl suspend"; #systemctl hybernate For hibernation
        }
      ];
    };
  };
}
