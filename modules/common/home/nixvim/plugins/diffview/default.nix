{ ... } @ inputs: {
  programs.nixvim.plugins.diffview = {
    enable = true;
    keymaps = {
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

