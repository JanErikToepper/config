{ ... } @ inputs: {
  system.stateVersion = "25.05";

  networking = {
    hostName = "toepper";
    wg-quick.interfaces.vpn.configFile = "/etc/wireguard/toepper-vpn-hz1.conf"; 
  };
}

