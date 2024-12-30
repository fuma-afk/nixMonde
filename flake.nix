{
	description = "Fuma Nixos config flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

#		hyprland-plugins = {
#			url = "github:hyprwm/hyprland-plugins";
#			inputs.hyprland.follows = "hyprland";		#using regular package
#		};	
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
     		};

		spicetify-nix = {								#this plugin is for theming spotify and
      			url = "github:Gerg-L/spicetify-nix";    #adding extensions
		        inputs.nixpkgs.follows = "nixpkgs";
		      };
		catppuccin.url = "github:catppuccin/nix";
  		zen-browser.url = "github:0xc000022070/zen-browser-flake";

#		 winapps = {					#
#	  	 url = "github:winapps-org/winapps";		#   this section is to use winapss until they're merged into nix packages	
#		 inputs.nixpkgs.follows = "nixpkgs";		#   remove afterward
#		 };						#

#		hyprpanel.url = "github:Jas-SinghFSU/HyprPanel";   # this part is repo for hyprpanel remove if merged into packages

		nixvim = {
		url = "github:nix-community/nixvim";
		inputs.nixpkgs.follows = "nixpkgs";
		};

	};

	outputs = { self, nixpkgs, home-manager, catppuccin,  spicetify-nix, ... }@inputs:				#remember to remove winapps when the packas is eventually going to be merged
		let
			system = "x86_64-linux";
		
		in {
		nixosConfigurations.nixMonde = nixpkgs.lib.nixosSystem {
		 specialArgs = {
			inherit inputs system;
			nixpkgs.config.allowUnfree = true;
			#inherit system;
			
			};
			
			modules = [ ./nixos/configuration.nix	
#					 (											#
#           					 { pkgs, ... }:									#
#            						{									#  
#             						 environment.systemPackages = [						#
#                						winapps.packages.${system}.winapps				#  this entire section must be removed once winapps gets merged into nix packages
#						                winapps.packages.${system}.winapps-launcher # optional		#
#						              ];								#
#					            }										#
#				          )											#
#			{nixpkgs.overlays = [inputs.hyprpanel.overlay];}
				];												
				
		};
			
		homeConfigurations.fuma = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.${system};
			extraSpecialArgs = {
        		inherit inputs system;
			nixpkgs.config.allowUnfree = true;
      			};
			modules = [ ./home-manager/home.nix 
				    ./home-manager/modules/hyprland/vars.nix
				    catppuccin.homeManagerModules.catppuccin
				    inputs.spicetify-nix.homeManagerModules.default
			];
		};
	};
}
