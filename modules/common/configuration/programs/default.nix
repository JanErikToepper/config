{ ... } @ inputs: {
  programs = {
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    vim = {
      enable = true;
      defaultEditor = true;
    };
  };
}

