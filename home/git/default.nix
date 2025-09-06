{ ... } @ inputs: {
  programs.git = {
    enable = true;
    userName = "Jan Erik Toepper";
    userEmail = "tech.toepper@outlook.com";
    ignores = [
      ".devenv"
      "dist"
      "node_modules"
    ];
    extraConfig = {
      branch.sort = "-committerdate";
      diff.algorithm = "histogram";
      fetch.prune = true;
      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
      rebase.autostash = true;
      rebase.updateRefs = true;
      rerere.enabled = true;
    };
  };
}

