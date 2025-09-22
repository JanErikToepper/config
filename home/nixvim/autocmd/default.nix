{ ... } @ inputs: {
  programs.nixvim.autoCmd = [
    {
      command = "checktime";
      event = "User";
      pattern = "Neogit*";
    }
    {
      command = "nnoremap <buffer> <cr> <cr><cmd>cclose<cr>";
      event = "FileType";
      pattern = "qf";
    }
  ];
}

