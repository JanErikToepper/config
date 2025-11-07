{ ... } @ inputs: {
  programs.nixvim.autoCmd = [
    {
      command = "nnoremap <buffer> <cr> <cr><cmd>cclose<cr>";
      event = "FileType";
      pattern = "qf";
    }
    {
      command = "checktime";
      event = "User";
      pattern = "Neogit*";
    }
  ];
}

