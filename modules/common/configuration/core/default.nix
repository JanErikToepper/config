{ ... } @ inputs: {
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  hardware = {
    bluetooth.enable = true;
    graphics.enable = true;
    nvidia.modesetting.enable = true;
  };

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  networking.networkmanager.enable = true;

  virtualisation.docker.enable = true;
}

