{

		programs.bash = {
                        enable = true;
                        shellAliases =
			let
				flakePath = "~/nix";
			in {
                                        reflake = "sudo nixos-rebuild switch --flake ./";
                                        hms = "home-manager switch --flake ./";
					v = "vim";
					nfu = "sudo nix flake update";
					gcollect = "sudo nix-collect-garbage -d";
                        };
        };
}
