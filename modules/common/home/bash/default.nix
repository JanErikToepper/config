{ ... } @ inputs: {
  programs.bash = {
    enable = true;
    shellAliases = {
      tx = "tmuxifier";
    };
  };
}

