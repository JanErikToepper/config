{  ... } @ inputs: {
  programs.nixvim.plugins.leetcode = {
    enable = true;
    settings = {
      lang = "java";
      logging = false;
      editor = {
        reset_previous_code = false;
        fold_imports = false;
      };
      picker.picker = "telescope";
      keys = {
        toggle = "<leader>lt";
        confirm = "<leader>lc";
        reset_testcases = "<leader>lr";
        use_testcase = "<leader>lu";
        focus_testcases = "<leader>lh";
        focus_result = "<leader>ll";
      };
    };
  };
}

