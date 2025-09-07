{ ... } @ inputs: {
  programs.nixvim.keymaps = [
    {
      key = "<leader>dn";
      action = "<cmd>lua vim.diagnostic.goto_next()<cr>";
    }
    {
      key = "<leader>dp";
      action = "<cmd>lua vim.diagnostic.goto_prev()<cr>";
    }
    {
      key = "<leader>e";
      action = "<cmd>Explore<cr>";
    }
    {
      key = "<leader>ff";
      action = "<cmd>lua require('telescope.builtin').find_files({hidden=true})<cr>";
    }
    {
      key = "<leader>fg";
      action = "<cmd>Telescope live_grep<cr>";
    }
    {
      key = "<leader>gg";
      action = "<cmd>G<cr>";
    }
    {
      key = "<leader>gb";
      action = "<cmd>GBrowse<cr>";
    }
    {
      key = "<leader>gl";
      action = "<cmd>G log<cr>";
    }
  ];
}

