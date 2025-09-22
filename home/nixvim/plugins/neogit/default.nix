{ ... } @ inputs: {
  programs.nixvim.plugins.neogit = {
    enable = true;
    settings = {
      disable_hint = true;
      remember_settings = false;
      commit_editor.kind = "tab";
      integrations = {
        diffview = true;
        telescope = true;
      };
      rebase_editor.kind = "tab";
    };
  };
}

