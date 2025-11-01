{ ... } @ inputs: {
  programs.git = {
    enable = true;
    userName = "Jan Erik Toepper";
    userEmail = if inputs.work.enable then inputs.work.email else "tech.toepper@outlook.com";
    ignores = [
      ".devenv*"
      "devenv*"
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

