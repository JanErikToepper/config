{ ... } @ inputs: {
  programs.nixvim.lsp.servers.angularls = {
    enable = true;
    config = {
      filetypes = [ "html" "htmlangular" ];
    };
  };
}

