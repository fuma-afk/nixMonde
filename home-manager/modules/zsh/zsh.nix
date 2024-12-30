
{ config, pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let
        flakeDir = "~/nix";
      in {
       reflake = "sudo nixos-rebuild switch --flake ./";
       hms = "home-manager switch --flake ./";
       nfu = "sudo nix flake update";
       ncg = "nix-collect-garbage -d && sudo nix-collect-garbage";
       ls = "eza -a --icons=always";	       
	       
      
        pkgs = "nvim ${flakeDir}/nixos/packages.nix";

        r = "ranger";
        v = "nvim";
        se = "sudoedit";
        microfetch = "microfetch && echo";

#        gs = "git status";
#        ga = "git add";
#        gc = "git commit";
#        gp = "git push";

        ".." = "cd ..";
      };


		
    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";


    initExtra = ''
	eval "$(${pkgs.oh-my-posh}/bin/oh-my-posh init zsh --config ${../ohmyposh/config/EDM115-newline.omp.json})"
# Check if Hyprland or Wayland is running by checking for the WAYLAND_DISPLAY environment variable
if [ -z "$WAYLAND_DISPLAY" ]; then
    # If WAYLAND_DISPLAY is not set, we assume we're not in a Wayland session (Hyprland), so run uwsm start select
    uwsm start select
else
    # If WAYLAND_DISPLAY is set, we assume we are in a Wayland session (Hyprland), so run fastfetch
     fastfetch --config examples/13
fi
	
	#keybinds
	bindkey '^[[H' beginning-of-line                                # Home key
        bindkey '^[[F' end-of-line                                      # End key
	bindkey  "^[[3~"  delete-char    				# Del key
        bindkey '^[[5~' history-beginning-search-backward               # Page up key
	bindkey '^[[6~' history-beginning-search-forward                # Page down key  
        bindkey '^H' backward-kill-word                                 # delete previous word with ctrl+backspace
	bindkey '^[[Z' undo                                             # Shift+tab undo last action  
'';
  };
}
