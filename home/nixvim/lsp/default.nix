{ ... } @ inputs: {
  programs.nixvim.lsp = {
    keymaps = [
      {
        key = "ga";
        lspBufAction = "code_action";
      }
      {
        key = "gd";
        lspBufAction = "definition";
      }
      {
        key = "gD";
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
      {
        key = "K";
        lspBufAction = "hover";
      }
    ];
    servers = {
      ts_ls = {
        enable = true;
      };
    };
  };
}

