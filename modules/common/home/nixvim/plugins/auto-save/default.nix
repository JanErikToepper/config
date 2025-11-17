{ ... } @ inputs: {
  programs.nixvim.plugins.auto-save = {
    enable = true;
    settings = {
      condition = ''
        function(buf)
          local utils = require("auto-save.utils.data")

          local ignored_filetypes = {
            "TelescopePrompt",
            "oil",
            "NeogitStatus",
            "NeogitLogView",
            "DiffviewFiles",
            "gitcommit",
          }
        
          if utils.not_in(vim.fn.getbufvar(buf, "&filetype"), ignored_filetypes) then
            return true
          end

          return false
        end
      '';
      debounce_delay = 3000;
    };
  };
}

