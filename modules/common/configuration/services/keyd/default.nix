{ ... } @ inputs: {
  services.keyd = {
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
}

