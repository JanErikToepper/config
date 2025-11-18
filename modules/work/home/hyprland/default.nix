{ ... } @ inputs: {
  imports = [ ./plugins ];

  wayland.windowManager.hyprland.settings = {
    "$monitorExtra" = "desc:Samsung Electric Company U28E590 HNMR508347";
    "$monitorMain" = "desc:Dell Inc. DELL S2817Q J42MC693088M";
    "$monitorLaptop" = "eDP-1";

    "monitor" = [
      "$monitorExtra, 1920x1080, 0x0, 1"
      "$monitorMain, 1920x1080, 1920x0, 1"
      "$monitorLaptop, 1920x1200, 3840x0, 1.5"
    ];

    "workspace" = [
      "1, monitor:$monitorExtra, persistent:true, default:true"
      "2, monitor:$monitorMain, persistent:true, default:true, on-created-empty:$terminal tmux"
      "3, monitor:$monitorLaptop, persistent:true, default:true, on-created-empty:firefox --new-window https://teams.microsoft.com/v2/"
    ];

    "bind" = [
      "$mainMod, space, exec, hyprlock"
    ];
  };
}

