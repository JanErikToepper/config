{ ... } @ inputs: {
  programs.git = {
    enable = true;
    userName = "Jan Erik Töpper";
    ignores = [
      ".devenv*"
      "devenv*"
      ".direnv"
      ".envrc"
      ".pre-commit-config.yaml"
    ];
    extraConfig = {
      branch.sort = "-committerdate";
      diff.algorithm = "histogram";
      fetch.prune = true;
      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
      rebase.updateRefs = true;
      rerere.enabled = true;
    };
  };
}

