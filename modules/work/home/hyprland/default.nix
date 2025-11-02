{ ... } @ inputs: {
  imports = [ ./plugins/hyprlock ];

  wayland.windowManager.hyprland.settings = {
    "bind" = [
      "$mainMod, space, exec, hyprlock"
    ];
  };
}

