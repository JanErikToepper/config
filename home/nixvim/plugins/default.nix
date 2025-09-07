{ ... } @ inputs: {
  programs.nixvim = {
    plugins = {
      autoclose.enable = true;
      cmp = {
        enable = true;
        settings = {
          mapping = {
            "<c-x>" = "cmp.mapping.close()";
            "<cr>" = "cmp.mapping.confirm({ select = true })";
            "<c-n>" = "cmp.mapping.select_next_item()";
            "<c-p>" = "cmp.mapping.select_prev_item()";
          };
          preselect = "cmp.PreselectMode.Item";
          sources = [
            {
              name = "nvim_lsp";
            }
            {
              name = "path";
            }
            {
              name = "buffer";
            }
          ];
        };
      };
      fugitive.enable = true;
      lspconfig.enable = true;
      treesitter.enable = true;
      telescope = {
        enable = true;
        extensions = {
          advanced-git-search.enable = true;
        };
        settings.defaults = {
          file_ignore_patterns = [
            ".git"
            "node_modules/"
            "package-lock.json"
            "package.json"
          ];
        };
      };
      tmux-navigator.enable = true;
      web-devicons.enable = true;
    };

    extraPlugins = with pkgs.vimPlugins; [
      vim-rhubarb
    ]; 
  };
}

