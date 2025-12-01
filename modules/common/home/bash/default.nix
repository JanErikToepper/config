{ ... } @ inputs: {
  programs.bash = {
    enable = true;
    shellAliases = {
      tx = "tmuxifier";
      rc = "wf-recorder -g \"$(slurp)\" -m h264 -f ~/record.mp4 -y 2> /dev/null";
    };
  };
}

