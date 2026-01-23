{ ... } @ inputs: {
  imports = [
    ./angularls
    ./html
    ./ts_ls
  ];

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
      bashls.enable = true;
      cssls.enable = true;
      diagnosticls.enable = true;
      dockerls.enable = true;
      jsonls.enable = true;
      lua_ls.enable = true;
      tailwindcss.enable = true;
    };
  };
}

