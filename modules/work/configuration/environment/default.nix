{ pkgs, ... } @ inputs: {
  environment = {
    systemPackages = with pkgs; [
      jetbrains.datagrip
      jetbrains.pycharm
      teams-for-linux
    ];
  };
}
