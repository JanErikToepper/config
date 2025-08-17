{ ... } @ inputs: let
  tmuxifier = inputs.core.pkgs.stdenv.mkDerivation rec {
    pname = "tmuxifier";
    version = "0.13.0";
  
    src = inputs.core.pkgs.fetchFromGitHub {
      owner = "jimeh";
      repo = "tmuxifier";
      rev = "v${version}";
      hash = "sha256-7TvJnvtZEo5h45PcSy3tJN09UblswV0mQbTaKjgLyqw=";
    };
  
    nativeBuildInputs = [ inputs.core.pkgs.installShellFiles ];
  
    dontBuild = true;
  
    installPhase = ''
      runHook preInstall
  
      sed -i "s@set -e@TMUXIFIER=$out\nTMUXIFIER_LAYOUT_PATH=\"\''${TMUXIFIER_LAYOUT_PATH:-\$HOME/.tmux-layouts}\"\nset -e@" \
          bin/tmuxifier
      sed -i "s@\$TMUXIFIER/lib/@\$TMUXIFIER/lib/tmuxifier/@g" \
          bin/tmuxifier libexec/* lib/*
      sed -i "s@\$TMUXIFIER/templates/@\$TMUXIFIER/share/tmuxifier/templates/@g; s@\$TMUXIFIER/init.@\$TMUXIFIER/share/tmuxifier/init/init.@g" \
          libexec/*
      sed -i "s@\$TMUXIFIER/completion/tmuxifier.bash@\$TMUXIFIER/share/bash-completion/completions/tmuxifier.bash@g; s@\$TMUXIFIER/completion/tmuxifier.zsh@\$TMUXIFIER/share/zsh/site-functions/_tmuxifier@g" \
          init.sh
      sed -i "s@\$TMUXIFIER/completion/tmuxifier.tcsh@\$TMUXIFIER/share/tmuxifier/completion/tmuxifier.tcsh@g" \
          init.tcsh
      sed -i "s@\$TMUXIFIER/completion/tmuxifier.fish@\$TMUXIFIER/share/fish/vendor_completions.d/tmuxifier.fish@g" \
          init.fish
  
      install -t $out/bin -Dm555 bin/tmuxifier
      install -t $out/share/tmuxifier/init -Dm444 init.fish init.sh init.tcsh
      install -t $out/share/tmuxifier/templates -Dm444 templates/*
      install -t $out/lib/tmuxifier -Dm444 lib/*
      cp -r libexec $out
      installShellCompletion --cmd tmuxifier \
          --bash completion/tmuxifier.bash \
          --fish completion/tmuxifier.fish \
          --zsh completion/tmuxifier.zsh
      install -t $out/share/tmuxifier/completion -Dm444 completion/tmuxifier.tcsh
  
      runHook postInstall
    '';
  
    meta = with inputs.lib; {
      description = "Powerful session, window & pane management for Tmux";
      homepage = "https://github.com/jimeh/tmuxifier";
      license = licenses.mit;
      mainProgram = "tmuxifier";
      platforms = platforms.unix;
    };
  };
in {
  home.packages = [
    tmuxifier
  ];
  programs = {
    tmux = {
      enable = true;
      plugins = with inputs.core.pkgs; [
        tmuxPlugins.vim-tmux-navigator
      ]; 

      extraConfig = ''
        set -g prefix C-s
        set -g status-style fg=white,bg=black
        set -g status-right '''
        set -g window-status-format '#I:#W'
        set -g window-status-current-format '#I:#W'
        set -g window-status-current-style bold

        bind-key h select-pane -L
        bind-key j select-pane -D
        bind-key k select-pane -U
        bind-key l select-pane -R

        bind-key J swap-pane -D
        bind-key K swap-pane -U

        bind-key v splitw -h
        bind-key w splitw -v 
      '';
    };
  };
}
