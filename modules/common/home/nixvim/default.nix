{ pkgs, ... } @ inputs: {
  imports = [
    inputs.core.nixvim.homeModules.nixvim
    ./autocmd
    ./colorschemes
    ./diagnostic
    ./editorconfig
    ./globals
    ./keymaps
    ./lsp
    ./lua
    ./opts
    ./plugins
  ];

  programs.nixvim = {
    enable = true;

    dependencies = {
      tree-sitter.enable = true;
      gcc.enable = true;
    };
  };
}

