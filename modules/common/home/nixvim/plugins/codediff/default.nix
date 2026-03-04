{ ... } @ inputs: {
  programs.nixvim.plugins.codediff = {
    enable = true;
    settings = {
      diff = {
        hide_merge_artifacts = true;
        conflict_ours_position = "left";
        conflict_result_position = "center";
      };
      explorer = {
        view_mode = "tree";
      };
      keymaps = {
        view = {
          next_file = "<leader>fn";
          prev_file = "<leader>fp";
        };
        conflict = {
          next_conflict = "<leader>N";
          prev_conflict = "<leader>P";
        };
      };
    };
  };
}

