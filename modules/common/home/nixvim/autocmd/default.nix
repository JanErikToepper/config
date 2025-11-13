{ ... } @ inputs: {
  programs.nixvim.autoCmd = [
    {
      command = "lua pcall(function() vim.cmd('undojoin') end) vim.cmd('Neoformat')";
      event = "BufWritePre";
    }
    {
      command = "nnoremap <buffer> <cr> <cr><cmd>cclose<cr>";
      event = "FileType";
      pattern = "qf";
    }
  ];
}

