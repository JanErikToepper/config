{ ... } @ inputs: {
  programs.nixvim.plugins.nvim-snippets = {
    enable = true;
    settings.search_paths = [ "${inputs.config.home.homeDirectory}/.nvim-snippets/" ];
  };

  home.file."./.nvim-snippets/common/".source = ./snippets;
}

