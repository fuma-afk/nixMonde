{ pkgs, ... }:
{
wayland.windowManager.hyprland = {
	#allow home manager to configure hyprland
	enable = true;
	xwayland.enable = true;


#	systemd.enable = true;	
#	plugins = [
#		inputs.hyprland-plugins.packages."${pkgs.system}".borders-plus-plus	
#		];


	settings = {

		source = [
      				"~/.cache/wal/colors-hyprland"
    			];

		 env = [
			
#			# Hint Electron apps to use Wayland
			"NIXOS_OZONE_WL,1"
			"XDG_CURRENT_DESKTOP,Hyprland"
			"XDG_SESSION_TYPE,wayland"
			"XDG_SESSION_DESKTOP,Hyprland"
#			"QT_QPA_PLATFORM,wayland"   #this seems to fuck up a few apps
			"XDG_SCREENSHOTS_DIR,$HOME/Immagini/Schermate"
			"HYPRCURSOR_THEME,catppuccin-mocha-dark-cursors"
			"HYPRCURSOR_SIZE,24"
			"HYPRSHOT_DIR,$HOME/Immagini/Schermate"
			#fix heroic game launcher
#			"__GL_X11_SYNC_TO_VBLANK,1"
#			"__GL_THREADED_OPTIMIZATIONS,1"
#			" MESA_GL_VERSION_OVERRIDE,4.6"
#			"VDPAU_DRIVER,nvidia"
			# NVIDIA https://wiki.hyprland.org/Nvidia/
#			"LIBVA_DRIVER_NAME,nvidia"
#			"__GLX_VENDOR_LIBRARY_NAME,nvidia"
      ];
	 windowrulev2 = [
		  "float,class:(clipse)|(missioncontrol)|(mpv)|(pavucontrol)$|(qalculate-gtk)|(nm-connection-editor)|(blueman-manager)$"
		  "float,center,class:(kitty)" 
		  "size 622 652,class:(clipse)"
		];


		misc = {
	# Disable default Hyprland background
	      disable_hyprland_logo = true;
	      disable_splash_rendering = true;
	      # Wake computer with mouse/keyboard press
	      mouse_move_enables_dpms = false;
	      key_press_enables_dpms = true;
	      # Replace terminal with applications opened with it
#    	      enable_swallow = true;
# 	      #swallow_regex = "^(kitty)$";
#	      swallow_exception_regex = "^(wev)$";
    };
		


		"$mainMod" = "SUPER";
		"$fileManager" = "nemo";
	        "$terminal" = "kitty";
		 # Scripts
    		"$rWallpaper" =  "$scripts/random_wallpaper.sh";
   		"$wallpaper" =   "$scripts/wallpaper.sh";

		monitor = [",2880x1920@120,auto,1"
			 	
			];

		input = {
			kb_layout = "it";
			#kb_options = "grp:caps_toggle";

			follow_mouse = 1;
		};

		general = {
			gaps_in = 5;
			gaps_out = 5;
			border_size = 3;
#			"col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
		        "col.inactive_border" = "rgba(59595950)";
#			"col.inactive_border" = "rgba(595959aa)";
    			"col.active_border" = "$color11 rgba(59595900) $color14 45deg"; # Pywal
		        layout = "dwindle";

        	#	no_cursor_warps = false;
		};

	
		decoration = {
			rounding = 10;
			active_opacity = 1.0;
			inactive_opacity = 0.8;
			fullscreen_opacity = 1.0;
		blur = {
			enabled = true;
        		size = 6;
          		passes = 2;
			new_optimizations = true;
			ignore_opacity = true;
			xray = true;
			};	
		shadow = {
     			enabled = true;
        		range = 30;
			render_power = 3;
			color = "0x66000000";
			};
	
		};


#############
##AUTOSTART##
#############
exec-once = [
"clipse -listen"
"swaync"
"${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1"
"hyprctl dispatch workspace 1"
"nm-applet --indicator"
"hypridle &"
# Start Waybar
"~/nix/home-manager/modules/waybar/launch.sh &"
#set themese for wallpaper
"~/nix/scripts/wallpaper-restore.sh &"
# Load cliphist history
#"wl-paste --watch cliphist store"
# wallpapaer shenanigans?
#"swww-daemon --format xrgb"
#launch btop on small screen
#"[workspace 7 silent] kitty -e btop"

];


animations = {
        enabled = true;

#        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
#        bezier = "myBezier, 0.33, 0.82, 0.9, -0.08";
	bezier = [
	"wind, 0.05, 0.9, 0.1, 1.05"
	"winIn, 0.1, 1.1, 0.1, 1.1"
	"winOut, 0.3, -0.3, 0, 1"
	"liner, 1, 1, 1, 1"
	];
        animation = [
#          "windows,     1, 7,  myBezier"
#          "windowsOut,  1, 7,  default, popin 80%"
#          "border,      1, 10, default"
#          "borderangle, 1, 8,  default"
#          "fade,        1, 7,  default"
#          "workspaces,  1, 6,  default"
	"windows, 1, 6, wind, slide"
	"windowsIn, 1, 6, winIn, slide2"
	"windowsOut, 1, 5, winOut, slide"
	"windowsMove, 1, 5, wind, slide"
	"border, 1, 1, liner"
	"borderangle, 1, 30, liner, once"
	"fade, 1, 10, default"
	"workspaces, 1, 5, wind"






        ];
      };

 dwindle = {
        pseudotile = true; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = true; # you probably want this
       };

 #     master = {
 #       new_is_master = true;
 #     };

#      gestures = {
#        workspace_swipe = true;s

#        workspace_swipe_fingers = 3;
#        workspace_swipe_invert = false;
#        workspace_swipe_distance = 200;
#        workspace_swipe_forever = true;
#      };

#     workspace = [
#	"1, monitor:DP-2"
#	"2, monitor:DP-2"
#	"3, monitor:DP-2"
#	"4, monitor:DP-1"
#	"5, monitor:DP-1"
#	"6, monitor:DP-1"
#	"8, monitor:HDMI-A-1"
#	"9, monitor:HDMI-A-1"
#	];
     bind = [
        "$mainMod, V, exec, kitty --class clipse -e 'clipse'"

        "$mainMod, Return, exec, kitty"
        "$mainMod, Q, killactive,"
        "$mainMod, M, exit,"
        "$mainMod, E, exec, nemo"
        "$mainMod, F, togglefloating,"
        "$mainMod, space, exec, pkill rofi || rofi -show drun -replace -i"
        "$mainMod, P, pseudo, # dwindle"
        "$mainMod, J, togglesplit, # dwindle"
	"$mainMod, l, exec, hyprlock" # lockscreen
	"$mainMod CTRL, Q, exec, wlgout"
	"$mainMod CTRL, K, exec, $scripts/keybindings.sh" # Show keybindings
	"$mainMod, B, exec, zen"
	"$mainMod CTRL, E, exec, ~/nix/script/emojipicker.sh" # Open the emoji picker	
	"$mainMod CTRL, C, exec, qcalculate-gtk"
	"$mainMod, Z, exec, missioncenter" # Open Mission Center

	#hyprshots - screenshot utility
	"ALT, PRINT, exec, hyprshot -m window" # capture windows
	", PRINT, exec, hyprshot -m region" # capture windows
        
	# Move focus with mainMod + arrow keys
        "$mainMod, left,  movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up,    movefocus, u"
        "$mainMod, down,  movefocus, d"

        # Moving windows
        "$mainMod SHIFT, left,  swapwindow, l"
        "$mainMod SHIFT, right, swapwindow, r"
        "$mainMod SHIFT, up,    swapwindow, u"
        "$mainMod SHIFT, down,  swapwindow, d"

        # Window resizing                     X  Y
        "$mainMod CTRL, left,  resizeactive, -60 0"
        "$mainMod CTRL, right, resizeactive,  60 0"
        "$mainMod CTRL, up,    resizeactive,  0 -60"
        "$mainMod CTRL, down,  resizeactive,  0  60"

        # Switch workspaces with mainMod + [0-9]
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"
	

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        "$mainMod SHIFT, 1, movetoworkspacesilent, 1"
        "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
        "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
        "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
        "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
        "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
        "$mainMod SHIFT, 7, movetoworkspacesilent, 7"
        "$mainMod SHIFT, 8, movetoworkspacesilent, 8"
        "$mainMod SHIFT, 9, movetoworkspacesilent, 9"
        "$mainMod SHIFT, 0, movetoworkspacesilent, 10"

     ## Wallpapers
        "$mainMod CTRL, W, exec, waypaper"
	"$mainMod SHIFT, W, exec, waypaper --random" # Change the wallpaper


        # Scroll through existing workspaces with mainMod + scroll
        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"

        # Keyboard backlight
#        "$mainMod, F3, exec, brightnessctl -d *::kbd_backlight set +33%"
#        "$mainMod, F2, exec, brightnessctl -d *::kbd_backlight set 33%-"

        # Volume and Media Control
        ", XF86AudioRaiseVolume, exec, pamixer -i 5 "
        ", XF86AudioLowerVolume, exec, pamixer -d 5 "
        ", XF86AudioMute, exec, pamixer -t"
        ", XF86AudioMicMute, exec, pamixer --default-source -m"
	# Bind media keys to actions
	", XF86AudioPlay, exec, playerctl play-pause"    # Play/Pause
	", XF86AudioNext, exec, playerctl next"          # Next track
	", XF86AudioPrev, exec, playerctl previous"  # Previous track


        # Brightness control
        ", XF86MonBrightnessDown, exec, brightnessctl set 5%- "
        ", XF86MonBrightnessUp, exec, brightnessctl set +5% "

	#hyprshade
	"$mainMod, H, exec, $scripts/hyprshade.sh" # Toggle screenshader  

        # Waybar
        "$mainMod CTRL, G, exec, pkill -SIGUSR1 waybar"
        

        # Disable all effects
        "$mainMod Shift, G, exec, ~/nix/scripts/gamemode.sh "
      ];

      # Move/resize windows with mainMod + LMB/RMB and dragging
      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
	];


	};

	};
}
