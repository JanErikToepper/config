{ ... } @ inputs: {
  imports = [
    ./firefox
    ./git
    ./hyprland
    ./nixvim
    ./tmux
  ];

  home = {
    username = "toepper";
    homeDirectory = "/home/toepper";
    pointerCursor = {
      enable = true;
      name = "Hackneyed";
      package = inputs.core.pkgs.hackneyed;
    };
    stateVersion = inputs.core.version;
  };
}

