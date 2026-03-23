{ pkgs, ... } @ inputs: {
  environment = {
    sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
    };
    systemPackages = with pkgs; [
      uwsm
      vim
      git
      zip
      unzip
      hyprshot
      wf-recorder
      slurp # dep of wf-recorder
      libnotify # utility for wf-recorder
      inotify-tools # dep of vim.lsp
      nodePackages.nodejs # dep of treesitter
    ];
  };
}

