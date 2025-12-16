{ ... } @ inputs: {
  services = {
    xserver = {
      xkb = {
        layout = "de-latin1";
        variant = "cherryblue";
      };
    };
    keyd = {
      enable = true;
      keyboards = {
        default = {
          ids = [ "*" ];
          settings = {
            main = {
              leftalt = "rightalt";
              rightalt = "escape";
            };
          };
        };
      };
    };
    greetd = {
      enable = true;
      settings.default_session = {
        command = "Hyprland";
        user = "toepper";
      };
    };
    pipewire = {
      enable = true;
      audio.enable = true;
    };
    earlyoom.enable = true;
    openssh.enable = true;
  };
}

