{ ... } @ inputs: {
  programs.nixvim.plugins.telescope = {
    enable = true;
    extensions = {
      advanced-git-search.enable = true;
      fzf-native.enable = true;
    };
    settings.defaults = {
      file_ignore_patterns = [
        ".angular"
        ".devenv"
        ".git"
        "node_modules/"
        "package-lock.json"
      ];
    };
  };
}

