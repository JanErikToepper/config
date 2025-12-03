{ ... } @ inputs: {
  programs.nixvim.autoCmd = [
    {
      command = "silent lua pcall(function() vim.cmd('undojoin') end) vim.lsp.buf.format()";
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

