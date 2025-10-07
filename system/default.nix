
{ ... } @ inputs: {
  imports = [ ./hardware ];

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  networking = {
    hostName = inputs.system.hostName;
    networkmanager.enable = true;
  };

  time.timeZone = inputs.system.timeZone;

  i18n = {
    defaultLocale = inputs.system.defaultLocale;
    extraLocaleSettings = {
      LC_ADDRESS = inputs.system.extraLocale;
      LC_IDENTIFICATION = inputs.system.extraLocale;
      LC_MEASUREMENT = inputs.system.extraLocale;
      LC_MONETARY = inputs.system.extraLocale;
      LC_NAME = inputs.system.extraLocale;
      LC_NUMERIC = inputs.system.extraLocale;
      LC_PAPER = inputs.system.extraLocale;
      LC_TELEPHONE = inputs.system.extraLocale;
      LC_TIME = inputs.system.extraLocale;
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

