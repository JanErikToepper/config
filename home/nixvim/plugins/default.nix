{ ... } @ inputs: {
  imports = [
    ./auto-save
    ./cmp
    ./diffview
    ./gitsigns
    ./neogit
    ./oil
    ./telescope
  ];

  programs.nixvim = {
    plugins = {
      autoclose.enable = true;
      lspconfig.enable = true;
      tmux-navigator.enable = true;
      treesitter.enable = true;
      ts-autotag.enable = true;
      web-devicons.enable = true;
    };
  };
}

