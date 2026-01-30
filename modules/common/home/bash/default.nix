{ ... } @ inputs: {
  imports = [ ./scripts ];

  programs.bash = {
    enable = true;
    shellAliases = {
      tx = "tmuxifier";
    };
  };
}

