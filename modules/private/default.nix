{ ... } @ inputs: {
  imports = [
    ./configuration
    ./hardware.nix
  ];

  config.home-manager.users.toepper = {
    imports = [ ./home ];
  };
}

