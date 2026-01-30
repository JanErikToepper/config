{ ... } @ inputs: {
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

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

