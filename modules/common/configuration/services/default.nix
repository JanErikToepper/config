{ ... } @ inputs: {
  imports = [
    ./cron
    ./greetd
    ./keyd
    ./pipewire
    ./xserver
  ];

  services = {
    envfs.enable = true;
    earlyoom.enable = true;
    openssh.enable = true;
  };
}

