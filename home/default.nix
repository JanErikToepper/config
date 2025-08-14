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
    stateVersion = inputs.core.version;
  };
}

