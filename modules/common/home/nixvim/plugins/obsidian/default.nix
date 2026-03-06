{ ... } @ inputs: {
  programs = {
    nixvim.plugins.obsidian = {
      enable = true;
      settings = {
        legacy_commands = false;
        statusline.enable = false;
        workspaces = [
          {
            name = "default";
            path = "~/.notes/";
          }
        ];
        picker.note_mappings.new = "<c-a>";
        daily_notes.enabled = false;
        footer.enabled = false;
      };
    };
    ripgrep.enable = true;
  };
}

