
{ ... } @ inputs: {
  imports = [ ./hardware-configuration.nix ];

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  networking = {
    hostName = inputs.system.hostName;
    networkmanager.enable = true;
  };

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

  console.keyMap = inputs.system.keyboardLayout;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  environment = {
    sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
    };
    systemPackages = map (package: inputs.core.pkgs.${ package }) inputs.system.packages;
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
        layout = inputs.system.keyboardLayout;
        variant = inputs.system.keyboardVariant;
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
  };

  hardware = {
    graphics.enable = true;
    nvidia.modesetting.enable = true;
  };

  system.stateVersion = inputs.core.version;
}

