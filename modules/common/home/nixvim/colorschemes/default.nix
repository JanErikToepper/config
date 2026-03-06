{ ... } @ inputs: {
  programs.nixvim.colorschemes = {
    catppuccin = {
      enable = false;
      settings.flavour = "mocha";
    };
    cyberdream.enable = false;
    dracula.enable = true;
  };
}

