{ ... } @ inputs: {
  imports = [
    ./auto-save
    ./cmp
    ./gitsigns
    ./neogit
    ./telescope
  ];

  programs.nixvim = {
    plugins = {
      autoclose.enable = true;
      diffview.enable = true;
      lspconfig.enable = true;
      treesitter.enable = true;
      tmux-navigator.enable = true;
      web-devicons.enable = true;
    };

    extraPlugins = with inputs.core.pkgs.vimPlugins; [
      vim-rhubarb
    ]; 
  };
}

