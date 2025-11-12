{ ... } @ inputs: {
  programs.nixvim.autoCmd = [
    {
      command = "silent lua pcall(function() vim.cmd('undojoin') end) pcall(vim.lsp.buf.format)";
      event = [
        "BufLeave"
        "BufWritePre"
      ];
    }
    {
      command = "nnoremap <buffer> <cr> <cr><cmd>cclose<cr>";
      event = "FileType";
      pattern = "qf";
    }
  ];
}

