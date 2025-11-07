{ ... } @ inputs: {
  imports = [
    ./auto-save
    ./cmp
    ./diffview
    ./gitsigns
    ./neogit
    ./none-ls
    ./oil
    ./telescope
    ./treesitter
  ];

  programs.nixvim = {
    plugins = {
      autoclose.enable = true;
      lspconfig.enable = true;
      tmux-navigator.enable = true;
      ts-autotag.enable = true;
      web-devicons.enable = true;
    };
  };
}

