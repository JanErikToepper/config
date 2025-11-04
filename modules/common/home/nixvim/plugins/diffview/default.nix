{ ... } @ inputs: {
  programs.nixvim.plugins.diffview = {
    enable = true;
    keymaps = {
      view = [
        {
          mode = "n";
          key = "<c-p>";
          action = "[c";
        }
        {
          mode = "n";
          key = "<c-n>";
          action = "]c";
        }
        {
          mode = "n";
          key = "<c-P>";
          action = "<cmd>lua require('diffview.actions').next_conflict()<cr>";
        }
        {
          mode = "n";
          key = "<c-N>";
          action = "<cmd>lua require('diffview.actions').prev_conflict()<cr>";
        }
      ];
    };
  };
}

