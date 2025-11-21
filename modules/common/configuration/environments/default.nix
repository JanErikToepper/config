{ ... } @ inputs: {
  environment = {
    sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
    };
    systemPackages = with inputs.core.pkgs; [
      vim
      git
      unzip
      hyprshot
      jq
      grim
      slurp
      wl-clipboard
    ];
  };
}

