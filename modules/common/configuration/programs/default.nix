{ ... } @ inputs: {
  imports = [
    ./chromium
    ./nix-ld
  ];

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

