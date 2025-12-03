{ ... } @ inputs: {
  programs.nixvim.plugins.notify = {
    enable = true;
    settings = {
      level = "warn";
      render = "compact";
      stages = "static";
      timeout = 10000;
    };
  };
}

