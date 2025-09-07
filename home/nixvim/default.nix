{ pkgs, ... } @ inputs: let
  func = inputs.config.lib.nixvim.mkRaw;
  lua = inputs.lib.generators.mkLuaInline;
  gen = inputs.lib.generators.toLua;
in {
  imports = [
    inputs.core.nixvim.homeModules.nixvim
    ./colorschemes
    ./diagnostic
    ./globals
    ./keymaps
    ./lsp
    ./lua
    ./opts
    ./plugins
  ];

  programs = {
    nixvim = {
      enable = true;

      dependencies = {
        tree-sitter.enable = true;
        gcc.enable = true;
      };
    };
    fd.enable = true;
    ripgrep.enable = true;
  };
}
