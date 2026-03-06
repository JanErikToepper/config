{ config, ... } @ inputs: {
  systemd.tmpfiles.settings = {
    "notes" = {
      "${config.users.users.toepper.home}/.notes" = { d.mode = "0777"; };
    };
  };
}

