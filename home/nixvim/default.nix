{ ... } @ inputs: {
  imports = [ inputs.core.nixvim.homeModules.nixvim ];

  programs = {
    ripgrep.enable = true;
    nixvim = {
      enable = true;
  
      globals.mapleader = " ";
  
      plugins = {
        web-devicons.enable = true;
        tmux-navigator.enable = true;
        telescope.enable = true;
      };
  
      keymaps = [
        {
          key = "<leader>p";
          action = "<cmd>Explore<cr>";
        }
        {
          key = "<leader>ff";
          action = "<cmd>Telescope find_files<cr>";
        }
        {
          key = "<leader>fg";
          action = "<cmd>Telescope live_grep<cr>";
        }
      ];

      lsp.servers = {
        ts_ls.enable = true;
      };
    };
  };
}
