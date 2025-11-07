{ ... } @ inputs: {
  programs.nixvim.autoCmd = [
    {
      command = "undojoin | lua vim.lsp.buf.format()";
      event = "BufWritePre";
    }
    {
      command = "nnoremap <buffer> <cr> <cr><cmd>cclose<cr>";
      event = "FileType";
      pattern = "qf";
    }
  ];
}

