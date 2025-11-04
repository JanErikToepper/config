{ ... } @ inputs: {
  programs.nixvim.keymaps = [
    {
      key = "gi";
      action = "<cmd>lua vim.lsp.buf.code_action({ filter = function(x) return x.kind == 'quickfix' and string.match(x.title, 'import') end, apply = true, })<cr>";
    }
    {
      key = "gl";
      action = "<cmd>LspRestart<cr>";
    }
    {
      key = "<leader>db";
      action = "<cmd>AdvancedGitSearch diff_branch_file<cr>";
    }
    {
      key = "<leader>dl";
      action = "<cmd>lua require('telescope.builtin').diagnostics({bufnr=0})<cr>";
    }
    {
      key = "<leader>do";
      action = "<cmd>DiffviewOpen<cr>";
    }
    {
      key = "<leader>dq";
      action = "<cmd>DiffviewClose<cr>";
    }
    {
      key = "<leader>e";
      action = "<cmd>Oil<cr>";
    }
    {
      key = "<leader>E";
      action = "<cmd>lua require('oil.actions').open_cwd.callback()<cr>";
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
      key = "<leader>fh";
      action = "<cmd>lua require('telescope.builtin').help_tags()<cr>";
    }
    {
      key = "<leader>fm"; 
      action = "<cmd>lua require('telescope.builtin').man_pages()<cr>";
    }
    {
      key = "<leader>gb";
      action = "<cmd>lua require('telescope.builtin').git_branches()<cr>";
    }
    {
      key = "<leader>gc";
      action = "<cmd>lua require('neogit.lib.git.status').stage_all(); require('neogit').action('commit', 'commit')()<cr>";
    }
    {
      key = "<leader>gl";
      action = "<cmd>lua require('neogit').action('log', 'log_current')()<cr>";
    }
    {
      key = "<leader>gp";
      action = "<cmd>lua require('neogit').action('pull', 'from_pushremote', { '--rebase' })()<cr>";
    }
    {
      key = "<leader>gP";
      action = "<cmd>lua require('neogit').action('push', 'to_pushremote', { '--force-with-lease' })()<cr>";
    }
    {
      key = "<leader>gs";
      action = "<cmd>Neogit<cr>";
    }
    {
      key = "<leader>gra";
      action = "<cmd>lua require('neogit').action('rebase', 'abort')()<cr>";
    }
    {
      key = "<leader>grc";
      action = "<cmd>lua require('neogit').action('rebase', 'continue')()<cr>";
    }
    {
      key = "<leader>gri";
      action = "<cmd>lua require('neogit').action('rebase', 'interactively', { '--autostash' })()<cr>";
    }
    {
      key = "<leader>grb";
      action = "<cmd>lua require('neogit').action('rebase', 'onto_elsewhere', { '--autostash' })()<cr>";
    }
    {
      key = "<leader>ghp";
      action = "<cmd>Gitsigns preview_hunk_inline<cr>";
    }
    {
      key = "<leader>ghr";
      action = "<cmd>Gitsigns reset_hunk<cr>";
    }
    {
      key = "<leader>k";
      action = "<cmd>lua vim.diagnostic.open_float()<cr>";
    }
  ];
}

