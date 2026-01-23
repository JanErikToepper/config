{ ... } @ inputs: {
  programs.nixvim.lsp.servers.ts_ls = {
    enable = true;
    config = {
      init_options = {
        preferences = {
          organizeImportsIgnoreCase = false;
          organizeImportsCollation = "unicode";
          organizeImportsNumericCollation = true;
          organizeImportsCaseFirst = "lower";
          preferTypeOnlyAutoImports = true;
          providePrefixAndSuffixTextForRename = false;
          includePackageJsonAutoImports = "on";
        };
      };
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

