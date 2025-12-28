{ ... } @ inputs: {
  programs.git = {
    enable = true;
    ignores = [
      ".devenv*"
      ".direnv"
      ".envrc"
      ".pre-commit-config.yaml"
      "devenv*"
      "dist"
      "node_modules"
    ];
    settings = {
      user.name = "Jan Erik Töpper";
      advice.detachedHead = false;
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

