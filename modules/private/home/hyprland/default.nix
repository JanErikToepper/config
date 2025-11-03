{ ... } @ inputs: {
  wayland.windowManager.hyprland.settings = {
    "$monitorMain" = "HDMI-A-1";
    "$monitorLaptop" = "eDP-1";

    "monitor" = [ "$monitorMain, 1920x1080, 0x0, 1" "$monitorLaptop, 1920x1080, 1920x0, 1.5" ];

    "workspace" = [ "1, monitor:$monitorMain, persistent:true, default:true, on-created-empty:$terminal tmux" "2, monitor:$monitorLaptop, persistent:true, default:false, on-created-empty:firefox" ];
  };
}

