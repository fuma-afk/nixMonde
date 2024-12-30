{ pkgs, config, lib, ... }:
{

 nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
             "davinci-resolve"
		"anydesk"
           ];
      




  # Create a wrapper for DaVinci Resolve to set environment variable only for it
  environment.systemPackages = with pkgs; [
    # Create a custom wrapper for DaVinci Resolve
    writeShellScriptBin "davinci-resolve-wrapper" ''
      # Set the environment variable only for DaVinci Resolve
      export QT_QPA_PLATFORMTHEME=xcb
      # Run DaVinci Resolve with any arguments passed to the wrapper
      ${pkgs.davinci-resolve}/bin/davinci-resolve "$@"
    ''
  ];


}
