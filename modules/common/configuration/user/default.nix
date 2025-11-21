{ ... } @ inputs: {
  time.timeZone = "Europe/Berlin";

  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = {
      LC_ADDRESS = "de_DE.UTF-8";
      LC_IDENTIFICATION = "de_DE.UTF-8";
      LC_MEASUREMENT = "de_DE.UTF-8";
      LC_MONETARY = "de_DE.UTF-8";
      LC_NAME = "de_DE.UTF-8";
      LC_NUMERIC = "de_DE.UTF-8";
      LC_PAPER = "de_DE.UTF-8";
      LC_TELEPHONE = "de_DE.UTF-8";
      LC_TIME = "de_DE.UTF-8";
    };
  };

  console.keyMap = "de-latin1";

  users.mutableUsers = false;
  nix.settings.trusted-users = [ "root" "toepper" ];

  users.users.toepper = {
    isNormalUser = true;
    hashedPassword = "$6$K6xoZ6UoJ.FNUlGQ$q1gy5/8UtyYh/.hvioRHmzLE9ZHSygfO93Nm0ptVAV4e3gSPOlo84gY970O1j2Yl7tpYD9RuLEhdPHQJEM3L31";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with inputs.core.pkgs; [ 
      nautilus
      tmuxifier
      devenv
    ];
  };

  fonts.packages = with inputs.core.pkgs.nerd-fonts; [ fira-code ];
}

