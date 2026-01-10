{ ... } @ inputs: {
  programs.nixvim = {
    extraPlugins = [(inputs.core.pkgs.vimUtils.buildVimPlugin {
      name = "i18n"; 
      src = inputs.core.pkgs.fetchFromGitHub {
        owner = "yelog";
        repo = "i18n.nvim";
        rev = "d884d9c1b9453d1fc41b441f8dbb20252bca8890";
        hash = "sha256-el3rh6BC4DOrQWYFIHtCGWplK9U/njB6Mp+UCA4p0pw=";
      };
      nvimSkipModule = [
        "i18n.integration.fzf"
        "i18n.integration.blink_source"
      ];
    })];
    extraConfigLua = ''
      require('i18n').setup({
        show_mode = 'origin',
        show_locale_file_eol_translation = false,
        func_pattern = {
          {
            pattern = "['\"]([^'\"]+)['\"] ?\| ?translate",
          }
        },
        locales = { 'en' },
        sources = {
          'src/locales/{locales}.json',
        }
      })
    '';
  };
}

