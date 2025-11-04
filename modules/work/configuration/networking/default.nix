{ config, ... } @ inputs: {
  age.secrets.hse-corporate.file = ../../secrets/hse-corporate.age;
  networking = {
    hostName = "toepper";
    networkmanager.ensureProfiles = {
      environmentFiles = [
        "/etc/nixos/modules/work/secrets/hse-corporate.env"
      ];
      profiles = {
        HSE-Corporate = {
          connection = {
            id = "HSE-Corporate";
            uuid = "2d7cd94c-ad32-4319-9fe5-8da7ec2ba1ef";
            type = "wifi";
            interface-name = "wlp0s20f3";
          };
          wifi = {
            mode = "infrastructure";
            ssid = "HSE-Corporate";
          };
          wifi-security.key-mgmt = "wpa-eap";
          "802-1x" = {
            eap = "peap";
            identity = "$IDENTITY";
            password = "$PASSWORD";
            phase-auth = "mschapv2";
          };
          ipv4 = {
            method = "auto";
            route1 = "94.100.133.30/32,192.168.100.241";
          };
          ipv6 = {
            addr-gen-mode = "default";
            method = "auto";
          };
        };
      };
    };
    wg-quick.interfaces.vpn.configFile = "/etc/wireguard/toepper-vpn-hz1.conf"; 
  };
}

