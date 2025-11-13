{ ... } @ inputs: {
  programs.nixvim.plugins.auto-save = {
    enable = true;
    settings.debounce_delay = 2000;
  };
}

