{ ... } @ inputs: {
  programs.nixvim.lsp = {
    luaConfig.post = ''
      vim.api.nvim_create_autocmd(
        "FileType", {
          pattern = {"qf"},
          command = [[ nnoremap <buffer> <cr> <cr>:cclose<cr> ]]
        }
      )
    '';
    keymaps = [
      {
        key = "gd";
        lspBufAction = "definition";
      }
      {
        key = "K";
        lspBufAction = "hover";
      }
      {
        key = "gi";
        lspBufAction = "implementation";
      }
      {
        key = "gR";
        lspBufAction = "references";
      }
      {
        key = "gr";
        lspBufAction = "rename";
      }
      {
        key = "gt";
        lspBufAction = "type_definition";
      }
    ];
    servers = {
      ts_ls = {
        enable = true;
      };
    };
  };
}

