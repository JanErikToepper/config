{ ... } @ inputs: {
  environment = {
    systemPackages = with inputs.core.pkgs; [
      teams-for-linux
    ];
  };
}
