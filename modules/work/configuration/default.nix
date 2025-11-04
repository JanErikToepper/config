{ config, ... } @ inputs: {
  imports = [
    ./networking
  ];

  environment.systemPackages = [
    inputs.core.agenix.packages.x86_64-linux.default
  ];
}

