{ ... } @ inputs: {
  programs.bash.shellAliases = {
    nrs = "nixos-rebuild switch --flake .#private";
  };
}

