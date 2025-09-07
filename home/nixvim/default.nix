{ pkgs, ... } @ inputs: let
  func = inputs.config.lib.nixvim.mkRaw;
  lua = inputs.lib.generators.mkLuaInline;
  gen = inputs.lib.generators.toLua;
in {
  imports = [
    inputs.core.nixvim.homeModules.nixvim
    ./modules/keymaps
  ];

  programs = {
    nixvim = {
      enable = true;

      colorschemes.modus = {
        enable = true;
        luaConfig.post = ''
          vim.api.nvim_set_hl(0, "NormalFloat", {bg="#000000"})
       '';
        settings.transparent = true;
      };

      extraConfigLua = ''
local function branch_name()
	local branch = io.popen("git rev-parse --abbrev-ref HEAD 2>/dev/null")
  local commit = io.popen("git log -1 --pretty=%B HEAD 2>/dev/null")
	if branch then
		local name = branch:read("*l")
    local com = commit:read("*l")
		branch:close()
    commit:close()
		if name then
			return string.format('%s: %s', name, com)
		else
			return ""
		end
	end
end

function _G.status_line()
	return " "
		.. branch_name()
end

vim.opt.statusline = "%{%v:lua.status_line()%}"
      '';

      globals= {
        mapleader = " ";
        maplocalleader = " ";
        netrw_winsize = 30;
        netrw_banner = 0;
        netrw_list_hide = "\(^\|\s\s\)\zs\.\S\+";
        netrw_localcopydircmd = "cp -r";
      };

      opts = {
        autoindent = true;
        autoread = true;
        autowriteall = true;
        background = "dark";
        backup = false;
        breakindent = true;
        clipboard = "unnamedplus";
        complete = "";
        expandtab = true;
        hlsearch = false;
        ignorecase = true;
        incsearch = true;
        infercase = true;
        laststatus = 2;
        lazyredraw = true;
        linebreak = true;
        maxmempattern = 20000;
        mouse = "";
        number = true;
        redrawtime = 10000;
        relativenumber = true;
        scrolloff = 999;
        shiftwidth = 2;
        showbreak = ">";
        showmatch = true;
        sidescrolloff = 10;
        signcolumn = "no";
        smartcase = true;
        smartindent = true;
        softtabstop = -1;
        splitbelow = true;
        splitright = true;
        statusline = "%f";
        swapfile = false;
        synmaxcol = 300;
        tabstop = 2;
        ttimeoutlen = 0;
        undofile = true;
        updatetime = 300;
        wrap = true;
        writebackup = false;
      };

      diagnostic.settings = {
        virtual_text = {
          spacing = 1;
        };
        signs = false;
        float = {
          scope = "c";
          header = "";
          source = false;
          format = func ''
            function(d)
              return d.message .. '  ' 
            end
          '';
          suffix = func ''
            function(d) 
              return tostring(d.code)
            end
          '';
          border = "solid";
        };
      };

      keymaps = (import ./keymaps.nix {}).keymaps;
  
      plugins = {
        autoclose.enable = true;
        cmp = {
          enable = true;
          settings = {
            mapping = {
              "<c-x>" = "cmp.mapping.close()";
              "<cr>" = "cmp.mapping.confirm({ select = true })";
              "<c-n>" = "cmp.mapping.select_next_item()";
              "<c-p>" = "cmp.mapping.select_prev_item()";
            };
            preselect = "cmp.PreselectMode.Item";
            sources = [
              {
                name = "nvim_lsp";
              }
              {
                name = "path";
              }
              {
                name = "buffer";
              }
            ];
          };
        };
        fugitive.enable = true;
        lspconfig.enable = true;
        treesitter.enable = true;
        telescope = {
          enable = true;
          extensions = {
            advanced-git-search.enable = true;
          };
          settings.defaults = {
            file_ignore_patterns = [
              ".git"
              "node_modules/"
              "package-lock.json"
              "package.json"
            ];
          };
        };
        tmux-navigator.enable = true;
        web-devicons.enable = true;
      };

      extraPlugins = with pkgs.vimPlugins; [
        vim-rhubarb
      ]; 

      lsp = {
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

      dependencies = {
        tree-sitter.enable = true;
        gcc.enable = true;
      };
    };
    fd.enable = true;
    ripgrep.enable = true;
  };
}
