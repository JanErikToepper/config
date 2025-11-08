{ ... } @ inputs: {
  programs.nixvim.plugins.neogit = {
    enable = true;
    settings = {
      disable_hint = true;
      process_spinner = true;
      remember_settings = false;
      console_timeout = 5000;
      commit_editor.kind = "tab";
      integrations = {
        diffview = true;
        telescope = true;
      };
      rebase_editor.kind = "tab";
    };
  };
}

