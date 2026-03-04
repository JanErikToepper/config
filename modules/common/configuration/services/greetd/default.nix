{ ... } @ inputs: {
  services.greetd = {
    enable = true;
    settings.default_session = {
      command = "uwsm start -eD Hyprland hyprland.desktop";
      user = "toepper";
    };
  };
}

