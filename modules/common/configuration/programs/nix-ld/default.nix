{ ... } @ inputs: {
  programs.nix-ld = {
    enable = true;
    libraries = with inputs.core.pkgs; [
      stdenv.cc.cc.lib
      zlib 
    ];
  };
}

