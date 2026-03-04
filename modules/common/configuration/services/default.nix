{ ... } @ inputs: {
  imports = [
    ./cron
    ./greetd
    ./keyd
    ./pipewire
    ./xserver
  ];

  services = {
    dbus.implementation = "broker";
    envfs.enable = true;
    earlyoom.enable = true;
    openssh.enable = true;
  };
}

