{ ... } @ inputs: {
  programs.nixvim.lsp = {
    keymaps = [
      {
        key = "ga";
        lspBufAction = "code_action";
      }
      {
        key = "gr";
        lspBufAction = "rename";
      }
      {
        key = "K";
        lspBufAction = "hover";
      }
    ];
    servers = {
      angularls.enable = true;
      bashls.enable = true;
      cssls.enable = true;
      diagnosticls.enable = true;
      dockerls.enable = true;
      html.enable = true;
      jsonls.enable = true;
      lua_ls.enable = true;
      tailwindcss.enable = false;
      ts_ls.enable = true;
    };
  };
}

