{ config, ... } @ inputs: {
  age = {
    identityPaths = [ "/root/.ssh/id_ed25519" ];
    secrets.vpn = {
      file = ../secrets/vpn.age;
    };
  };
  networking.wg-quick.interfaces.vpn = {
    privateKeyFile = config.age.secrets.vpn.path;
    address = [ "172.21.1.39/16" ];
    dns = [
      "94.100.132.153"
      "94.100.132.154"
    ];
    peers = [{
      publicKey = "YtvbC3jwQ7apC13V07SfbQGC+ZziJRmXXvR+4h5QFn0=";
      allowedIPs = [
        "83.246.65.0/24"
        "94.100.128.0/20"
        "10.0.0.0/8"
        "92.54.39.0/24"
        "46.235.240.0/24"
        "81.20.94.0/24"
        "185.229.25.8/29"
        "212.56.139.8/29"
        "195.158.110.89/32"
        "80.71.51.32/29"
        "52.29.18.69/32"
        "52.236.149.245/32"
        "193.135.100.11/32"
        "51.144.184.51/32"
        "162.209.96.222/32"
        "192.168.0.0/18"
      ];
      endpoint = "vpn-eu1.hornetsecurity.com:500";
      persistentKeepalive = 21;
    }];
  };
}

