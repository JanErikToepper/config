{ ... } @ inputs: {
  imports = [ ./chromium ];

  programs.bash.shellAliases = {
    nrs = "nixos-rebuild switch --flake .#work";
  };
}

