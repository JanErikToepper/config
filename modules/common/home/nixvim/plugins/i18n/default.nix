{ ... } @ inputs: {
  programs.nixvim.extraPlugins = [(inputs.core.pkgs.vimUtils.buildVimPlugin {
    name = "i18n"; 
    src inputs.core.pkgs.fetchFromGithub {
      owner = "yelog";
      repo = "i18n";
      rev = "d884d9c1b9453d1fc41b441f8dbb20252bca8890";
    };
  })];
}

