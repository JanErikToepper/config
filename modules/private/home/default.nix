{ ... } @ inputs: {
  imports = [
    ./firefox
    ./git
    ./hyprland
  ];  

  home.stateVersion = inputs.core.version;
}

