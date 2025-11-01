{ ... } @ inputs: {
  programs.nixvim.plugins.diffview = {
    enable = true;
    keymaps = {
      file_panel = [
        {
          mode = "n";
          key = "<c-q>";
          action = "<cmd>DiffviewClose<cr>";
        }
      ];
      view = [
        {
          mode = "n";
          key = "<c-q>";
          action = "<cmd>DiffviewClose<cr>";
        }
      ];
    };
  };
}

