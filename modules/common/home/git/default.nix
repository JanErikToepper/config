{ ... } @ inputs: {
  programs.git = {
    enable = true;
    ignores = [
      ".devenv*"
      ".direnv/"
      ".env"
      ".envrc"
      ".pre-commit-config.yaml"
      "devenv*"
      "dist/"
      "node_modules/"
    ];
    settings = {
      advice.detachedHead = false;
      branch.sort = "-committerdate";
      diff.algorithm = "histogram";
      fetch.prune = true;
      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
      rebase.updateRefs = true;
      user.name = "Jan Erik Töpper";
    };
  };
}

