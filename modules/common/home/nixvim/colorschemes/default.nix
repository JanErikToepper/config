{ ... } @ inputs: {
  programs.nixvim.colorschemes = {
    catppuccin = {
      enable = false;
      settings.flavour = "mocha";
    };
    cyberdream.enable = true;
  };
}

