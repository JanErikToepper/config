{ ... } @ inputs: let
  refreshState = "require('neogit.lib.git.repository').instance():refresh()";
  stageAll = "vim.cmd('update'); require('neogit.lib.git.status').stage_all()";
in {
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = ">";
      action = "<c-w>>";
    }
    {
      mode = "n";
      key = "<";
      action = "<c-w><";
    }
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
      key = "<leader>dp";
      action = "<cmd>lua vim.diagnostic.goto_prev()<cr>";
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
      action = "<cmd>lua require('telescope.builtin').live_grep()<cr>";
    }
    {
      mode = "n";
      key = "<leader>fh";
      action = "<cmd>lua require('telescope.builtin').help_tags()<cr>";
    }
    {
      mode = [ "n" "v" ];
      key = "<leader>fk";
      action = "<cmd>lua require('telescope.builtin').grep_string()<cr>";
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = "<cmd>lua require('spectre').open()<cr>";
    }
    {
      mode = "n";
      key = "<leader>ga";
      action = "<cmd>lua ${refreshState}; ${stageAll}; require('neogit').action('commit', 'amend')()<cr>";
    }
    {
      mode = "n";
      key = "<leader>gb";
      action = "<cmd>lua if (require('neogit.lib.git.status').is_dirty()) then vim.notify('Branch is dirty', 'warn', { title = 'Neogit' }) else require('telescope.builtin').git_branches() end<cr>";
    }
    {
      mode = "n";
      key = "<leader>gc";
      action = "<cmd>lua ${stageAll}; require('neogit').action('commit', 'commit')()<cr>";
    }
    {
      mode = "n";
      key = "<leader>gC";
      action = "<cmd>lua require('neogit.lib.git.branch').checkout('-')<cr>";
    }
    {
      mode = "n";
      key = "<leader>gd";
      action = "<cmd>DiffviewOpen<cr>";
    }
    {
      mode = "n";
      key = "<leader>gf";
      action = "<cmd>lua require('neogit').action('fetch', 'fetch_upstream', { '--prune' })()<cr>";
    }
    {
      mode = "n";
      key = "<leader>ghp";
      action = "<cmd>Gitsigns preview_hunk_inline<cr>";
    }
    {
      mode = "n";
      key = "<leader>ghx";
      action = "<cmd>Gitsigns reset_hunk<cr>";
    }
    {
      mode = "n";
      key = "<leader>gH";
      action = "<cmd>lua require('telescope.builtin').git_bcommits()<cr>";
    }
    {
      mode = "v";
      key = "<leader>gH";
      action = "<cmd>lua require('telescope.builtin').git_bcommits_range()<cr>";
    }
    {
      mode = "n";
      key = "<leader>gl";
      action = "<cmd>lua require('neogit').action('log', 'log_current', { '--decorate' })()<cr>";
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
      key = "<leader>gsp";
      action = "<cmd>lua require('neogit').action('stash', 'pop')()<cr>";
    }
    {
      mode = "n";
      key = "<leader>gss";
      action = "<cmd>lua require('neogit').action('stash', 'both', { '--include-untracked' })()<cr>";
    }
    {
      mode = "n";
      key = "<leader>gra";
      action = "<cmd>lua require('neogit').action('rebase', 'abort')()<cr>";
    }
    {
      mode = "n";
      key = "<leader>grb";
      action = "<cmd>lua ${refreshState}; require('neogit').action('rebase', 'onto_elsewhere')()<cr>";
    }
    {
      mode = "n";
      key = "<leader>grc";
      action = "<cmd>lua if (require('neogit.lib.git.merge').any_conflicted()) then vim.notify('Open merge conflicts', 'warn', { title = 'Neogit' }) else ${stageAll}; require('neogit').action('rebase', 'continue')() end<cr>";
    }
    {
      mode = "n";
      key = "<leader>gri";
      action = "<cmd>lua ${refreshState}; require('neogit').action('rebase', 'interactively')()<cr>";
    }
    {
      mode = "n";
      key = "<leader>gR";
      action = "<cmd>AdvancedGitSearch checkout_reflog<cr>";
    }
    {
      mode = "n";
      key = "<leader>gxs";
      action = "<cmd>lua require('neogit.lib.git.reset').mixed('HEAD~1')<cr>";
    }
    {
      mode = "n";
      key = "<leader>gxS";
      action = "<cmd>lua require('neogit.lib.git.reset').mixed(require('neogit.lib.git.branch').base_branch())<cr>";
    }
    {
      mode = "n";
      key = "<leader>gxh";
      action = "<cmd>lua ${stageAll}; require('neogit.lib.git.cli').reset.hard.args(require('neogit.lib.git.branch').current()).call(); vim.cmd('e!')<cr>";
    }
    {
      mode = "n";
      key = "<leader>G";
      action = "<cmd>Neogit<cr>";
    }
    {
      mode = "n";
      key = "<leader>l";
      action = "<cmd>e!<cr>";
    }
    {
      mode = "n";
      key = "<leader>L";
      action = "<cmd>checktime<cr>";
    }
    {
      mode = "n";
      key = "<leader>m";
      action = "<cmd>Markview splitToggle<cr>";
    }
    {
      mode = "n";
      key = "<leader>n";
      action = "<cmd>Gitsigns nav_hunk next<cr>";
    }
    {
      mode = "n";
      key = "<leader>oc";
      action = "0f[lrX";
    }
    {
      mode = "n";
      key = "<leader>oC";
      action = "0f[lr ";
    }
    {
      mode = "n";
      key = "<leader>od";
      action = "<cmd>Obsidian follow_link vsplit<cr>";
    }
    {
      mode = "n";
      key = "<leader>oD";
      action = "<cmd>Obsidian backlinks<cr>";
    }
    {
      mode = "n";
      key = "<leader>of";
      action = "<cmd>Obsidian search<cr>";
    }
    {
      mode = "n";
      key = "<leader>oip";
      action = "<cmd>Obsidian paste_img<cr>";
    }
    {
      mode = "v";
      key = "<leader>ol";
      action = "<cmd>Obsidian link<cr>";
    }
    {
      mode = "v";
      key = "<leader>oL";
      action = "<cmd>Obsidian link_new<cr>";
    }
    {
      mode = "n";
      key = "<leader>or";
      action = "<cmd>Obsidian rename<cr>";
    }
    {
      mode = "n";
      key = "<leader>ot";
      action = "<cmd>Obsidian tags<cr>";
    }
    {
      mode = "v";
      key = "<leader>ox";
      action = "<cmd>Obsidian extract_note<cr>";
    }
    {
      mode = "n";
      key = "<leader>p";
      action = "<cmd>Gitsigns nav_hunk prev<cr>";
    }
    {
      mode = "n";
      key = "<leader>tc";
      action = "<cmd>tabnew<cr>";
    }
    {
      mode = "n";
      key = "<leader>tn";
      action = "<cmd>tabn<cr>";
    }
    {
      mode = "n";
      key = "<leader>tN";
      action = "<cmd>+tabmove<cr>";
    }
    {
      mode = "n";
      key = "<leader>to";
      action = "<cmd>tabonly<cr>";
    }
    {
      mode = "n";
      key = "<leader>tp";
      action = "<cmd>tabp<cr>";
    }
    {
      mode = "n";
      key = "<leader>tP";
      action = "<cmd>-tabmove<cr>";
    }
    {
      mode = "n";
      key = "<leader>w";
      action = "<cmd>w<cr>";
    }
    {
      mode = "n";
      key = "<leader>W";
      action = "<cmd>wa<cr>";
    }
  ];
}

