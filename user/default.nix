{ ... } @ inputs: {
  users.mutableUsers = false;

  users.users.${ inputs.user.name } = {
    isNormalUser = true;
    hashedPassword = inputs.user.hashedPassword;
    extraGroups = inputs.user.groups;
    packages = map (package: inputs.core.pkgs.${ package }) inputs.user.packages;
  };

  services.greetd = {
    enable = true;
    settings = rec {
      initial_session = {
        command = "Hyprland";
        user = inputs.user.name;
      };
      default_session = initial_session;
    };
  };
}

