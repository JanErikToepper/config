{ ... } @ inputs: {
  programs.tmux = {
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

      bind-key v splitw -v 
      bind-key w splitw -h 
    '';
  };
}
