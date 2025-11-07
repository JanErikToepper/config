{ ... } @ inputs: {
  programs = {
    nixvim.plugins.telescope = {
      enable = true;
      extensions = {
        advanced-git-search = {
          enable = true;
          settings.diff_plugin = "diffview";
        };
        frecency.enable = true;
        fzf-native.enable = true;
      };
      settings = {
        defaults = {
          layout_config.horizontal = {
            width = 0.999;
            height = 0.999;
            preview_cutoff = 0;
          };
          prompt_prefix = " ";
          selection_caret = "  ";
          path_display = [ "truncate" "smart" ];
          borderchars = [ "─" "│" "─" "│" "┌" "┐" "┘" "└" ];
          results_title = false;
          prompt_title = false;
          history = false;
          preview.timeout = 1000;
          file_ignore_patterns = [
            ".angular"
            ".devenv"
            ".git"
            "build"
            "dist"
            "node_modules/"
            "package-lock.json"
          ];
        };
        pickers = {
          git_branches = {
            mappings = {
              i = {
                "<cr>".__raw = "require('telescope.actions').git_switch_branch";
              };
            };
          };
        };
      };
    };

    fzf.enable = true;
    ripgrep.enable = true;
  };
}

