{ ... } @ inputs: {
  programs.nixvim.autoCmd = [
    {
      command = "silent lua pcall(function() vim.cmd('undojoin') end) vim.lsp.buf.format({ filter = function(client) return client.name == 'null-ls' end })";
      event = [
        "BufWritePre"
        "BufLeave"
      ];
    }
    {
      command = "nnoremap <buffer> <cr> <cr><cmd>cclose<cr>";
      event = "FileType";
      pattern = "qf";
    }
  ];
}

