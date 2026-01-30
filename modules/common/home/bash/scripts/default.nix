{ ... } @ inputs: {
  home.packages = with inputs.core.pkgs; [
    (writeShellApplication {
      name = "rc";
      text = builtins.readFile ./rc;
    })
  ];
}

