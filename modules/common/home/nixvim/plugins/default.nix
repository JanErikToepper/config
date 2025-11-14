{ ... } @ inputs: {
  imports = [
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
    extraPlugins = with inputs.core.pkgs.vimPlugins; [
      neoformat
    ];
  };
}

