{ ... } @ inputs: {
  networking = {
    hostName = "toepper";
    wg-quick.interfaces.vpn.configFile = "/etc/wireguard/toepper-vpn-hz1.conf"; 
  };
}

