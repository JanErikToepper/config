{ ... } @ inputs: {
  imports = [
    ./bash
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
  };
}

