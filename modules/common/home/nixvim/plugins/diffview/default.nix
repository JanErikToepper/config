{ ... } @ inputs: {
  programs.nixvim.plugins.diffview = {
    enable = true;
    diffBinaries = true;
    enhancedDiffHl = true;
    showHelpHints = false;
    filePanel = {
      treeOptions.folderStatuses = "never";
      winConfig.width = 50;
    };
    keymaps = {
      view = [
        {
          mode = "n";
          key = "q";
          action = "<cmd>DiffviewClose<cr>";
        }
        {
          mode = "n";
          key = "<leader>p";
          action = "[c";
        }
        {
          mode = "n";
          key = "<leader>n";
          action = "]c";
        }
        {
          mode = "n";
          key = "<leader>P";
          action = "<cmd>lua require('diffview.actions').next_conflict()<cr>";
        }
        {
          mode = "n";
          key = "<leader>N";
          action = "<cmd>lua require('diffview.actions').prev_conflict()<cr>";
        }
      ];
      filePanel = [
        {
          mode = "n";
          key = "q";
          action = "<cmd>DiffviewClose<cr>";
        }
        {
          mode = "n";
          key = "<c-w>";
          action = "<C-W>>";
        }
      ];
    };
  };
}

