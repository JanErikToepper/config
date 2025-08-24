{ ... } @ inputs: {
  imports = [
    ./firefox
    ./git
    ./hyprland
    ./nixvim
    ./tmux
  ];

  home = {
    username = inputs.user.name;
    homeDirectory = "/home/${ inputs.user.name }";
    pointerCursor = {
      enable = true;
      name = "Hackneyed";
      package = inputs.core.pkgs.hackneyed;
    };
    stateVersion = inputs.core.version;
  };
}

