{ ... } @ inputs: {
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  networking.networkmanager.enable = true;

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

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  environment = {
    sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
    };
    systemPackages = with inputs.core.pkgs; [
      vim
      git
      unzip
      hyprshot
      jq
      grim
      slurp
      wl-clipboard
    ];
  };

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
    pipewire = {
      enable = true;
      audio.enable = true;
    };
    openssh.enable = true;
  };

  hardware = {
    bluetooth.enable = true;
    graphics.enable = true;
    nvidia.modesetting.enable = true;
  };

  system.stateVersion = inputs.core.version;

  users.mutableUsers = false;

  users.users.toepper = {
    isNormalUser = true;
    hashedPassword = "$6$K6xoZ6UoJ.FNUlGQ$q1gy5/8UtyYh/.hvioRHmzLE9ZHSygfO93Nm0ptVAV4e3gSPOlo84gY970O1j2Yl7tpYD9RuLEhdPHQJEM3L31";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with inputs.core.pkgs; [ 
      nautilus
      tmuxifier
      devenv
      nodePackages.prettier
    ];
  };
  
  nix.settings.trusted-users = [ "root" "toepper" ];

  fonts.packages = with inputs.core.pkgs.nerd-fonts; [ fira-code ];

  services.greetd = {
    enable = true;
    settings.default_session = {
      command = "Hyprland";
      user = "toepper";
    };
  };

  virtualisation.docker.enable = true;
}

