{config, pkgs, inputs, lib, ... }:
{
environment.systemPackages = with pkgs; [
(nmap.overrideAttrs(old: rec {
    nativeBuildInputs = old.nativeBuildInputs ++ [
      gobject-introspection
      (python3.withPackages(pypkgs: [
        pypkgs.pygobject3
      ]))
      wrapGAppsHook
    ];

    buildInputs = old.buildInputs ++ [ gtk3 ];

    configureFlags = lib.remove "--without-zenmap" (lib.flatten old.configureFlags);

    installPhase = ''
      cd zenmap
      python setup.py install --prefix=$out
      sed -i "58a sys.path.append(\"$out/lib/python${python3.sourceVersion.major}.${python3.sourceVersion.minor}/site-packages/\")" $out/bin/zenmap
    '';
  }))
  
];
}
