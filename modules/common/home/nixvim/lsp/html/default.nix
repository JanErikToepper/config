{ ... } @ inputs: {
  programs.nixvim.lsp.servers.html = {
    enable = true;
    config = {
      on_attach.__raw = ''
        function(client, bufnr)
          if not (vim.fs.root(bufnr, "angular.json") == nil) then
            vim.lsp.stop_client(client.id)
          end
        end
      '';
    };
  };
}

