{ ... } @ inputs: {
  imports = [ ./plugins ];

  wayland.windowManager.hyprland.settings = {
    "$monitorLaptop" = "eDP-1";
    "$monitorMain" = "desc:Samsung Electric Company U28E590 HNMR403620";
    "$monitorExtra" = "desc:LG Electronics LG ULTRAFINE 504NTTQC8953";

    "monitor" = [
      "$monitorLaptop, 1920x1200, 0x0, 1.5"
      "$monitorMain, 1920x1080, 1280x0, 1"
      "$monitorExtra, 1920x1080, 3200x0, 1"
    ];

    "workspace" = [
      "1, monitor:$monitorLaptop, persistent:true, default:true, on-created-empty:firefox --new-window https://teams.microsoft.com/v2/"
      "2, monitor:$monitorMain, persistent:true, default:true, on-created-empty:$terminal tmux"
      "3, monitor:$monitorExtra, persistent:true, default:true"
    ];

    "bind" = [
      "$mainMod, space, exec, hyprlock"
    ];
  };
}

