{ ... } @ inputs: {
  imports = [
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
      jdtls.enable = true;
      jsonls.enable = true;
      lua_ls.enable = true;
      marksman.enable = true;
      tailwindcss.enable = true;
    };
  };
}

