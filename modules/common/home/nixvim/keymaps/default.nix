{ ... } @ inputs: {
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "gD";
      action = "<cmd>lua require('telescope.builtin').lsp_references()<cr>";
    }
    {
      mode = "n";
      key = "gi";
      action = "<cmd>lua vim.lsp.buf.code_action({ filter = function(x) return x.kind == 'quickfix' and string.match(x.title, 'import') end, apply = true, })<cr>";
    }
    {
      mode = "n";
      key = "gl";
      action = "<cmd>LspRestart<cr>";
    }
    {
      mode = "n";
      key = "<leader>dk";
      action = "<cmd>lua vim.diagnostic.open_float()<cr>";
    }
    {
      mode = "n";
      key = "<leader>dn";
      action = "<cmd>lua vim.diagnostic.goto_next()<cr>";
    }
    {
      mode = "n";
      key = "<leader>do";
      action = "<cmd>DiffviewOpen<cr>";
    }
    {
      mode = "n";
      key = "<leader>dp";
      action = "<cmd>lua vim.diagnostic.goto_prev()<cr>";
    }
    {
      mode = "n";
      key = "<leader>dq";
      action = "<cmd>DiffviewClose<cr>";
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Oil<cr>";
    }
    {
      mode = "n";
      key = "<leader>E";
      action = "<cmd>lua require('oil.actions').open_cwd.callback()<cr>";
    }
    {
      mode = "n";
      key = "<leader>fc";
      action = "<cmd>lua require('telescope.builtin').git_status()<cr>";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>lua require('telescope.builtin').find_files({ hidden=true })<cr>";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>Telescope live_grep<cr>";
    }
    {
      mode = "n";
      key = "<leader>fh";
      action = "<cmd>lua require('telescope.builtin').help_tags()<cr>";
    }
    {
      mode = "n";
      key = "<leader>fm"; 
      action = "<cmd>lua require('telescope.builtin').man_pages()<cr>";
    }
    {
      mode = "n";
      key = "<leader>ga";
      action = "<cmd>lua require('neogit.lib.git.status').stage_all(); require('neogit').action('commit', 'amend')()<cr>";
    }
    {
      mode = "n";
      key = "<leader>gb";
      action = "<cmd>lua require('telescope.builtin').git_branches()<cr>";
    }
    {
      mode = "n";
      key = "<leader>gc";
      action = "<cmd>lua require('neogit.lib.git.status').stage_all(); require('neogit').action('commit', 'commit')()<cr>";
    }
    {
      mode = "n";
      key = "<leader>gl";
      action = "<cmd>lua require('neogit').action('log', 'log_current')()<cr>";
    }
    {
      mode = "n";
      key = "<leader>gm";
      action = "<cmd>lua require('neogit').action('branch', 'open_pull_request')()<cr>";
    }
    {
      mode = "n";
      key = "<leader>gp";
      action = "<cmd>lua require('neogit').action('pull', 'from_pushremote', { '--rebase' })()<cr>";
    }
    {
      mode = "n";
      key = "<leader>gP";
      action = "<cmd>lua require('neogit').action('push', 'to_pushremote', { '--force-with-lease' })()<cr>";
    }
    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>Neogit<cr>";
    }
    {
      mode = "n";
      key = "<leader>gra";
      action = "<cmd>lua require('neogit').action('rebase', 'abort')()<cr>";
    }
    {
      mode = "n";
      key = "<leader>grb";
      action = "<cmd>lua require('neogit').action('rebase', 'onto_elsewhere', { '--autostash' })()<cr>";
    }
    {
      mode = "n";
      key = "<leader>grc";
      action = "<cmd>lua require('neogit.lib.git.status').stage_all(); require('neogit').action('rebase', 'continue')()<cr>";
    }
    {
      mode = "n";
      key = "<leader>gri";
      action = "<cmd>lua require('neogit').action('rebase', 'interactively', { '--autostash' })()<cr>";
    }
    {
      mode = "n";
      key = "<leader>ghp";
      action = "<cmd>Gitsigns preview_hunk_inline<cr>";
    }
    {
      mode = "n";
      key = "<leader>ghr";
      action = "<cmd>Gitsigns reset_hunk<cr>";
    }
    {
      mode = "n";
      key = "<leader>gxs";
      action = "<cmd>lua require('neogit.lib.git.reset').mixed('HEAD~1')<cr>";
    }
    {
      mode = "n";
      key = "<leader>gxh";
      action = "<cmd>lua require('neogit.lib.git.status').stage_all(); require('neogit.lib.git.cli').reset.hard.args(require('neogit.lib.git.branch').current()).call(); vim.cmd('checktime')<cr>";
    }
    {
      mode = "n";
      key = "<leader>n";
      action = "<cmd>Gitsigns nav_hunk next<cr>";
    }
    {
      mode = "n";
      key = "<leader>p";
      action = "<cmd>Gitsigns nav_hunk prev<cr>";
    }
    {
      mode = "n";
      key = "<leader>r";
      action = "<cmd>checktime<cr>";
    }
    {
      mode = "n";
      key = "<leader>t";
      action = "<cmd>tabn<cr>";
    }
    {
      mode = "n";
      key = "<leader>T";
      action = "<cmd>tabp<cr>";
    }
  ];
}

