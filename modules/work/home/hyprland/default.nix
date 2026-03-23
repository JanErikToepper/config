{ ... } @ inputs: let
  laptopIsMostRight = true;
in {
  imports = [ ./plugins ];

  wayland.windowManager.hyprland.settings = {
    "$monitorLaptop" = "eDP-1";
    "$monitorMain" = "desc:Dell Inc. DELL S2817Q J42MC693088M";
    "$monitorExtra" = "desc:Samsung Electric Company U28E590 HNMR508347";

    "$workspace1" = "monitor:$monitorLaptop, persistent:true, default:true, on-created-empty:teams-for-linux";
    "$workspace2" = "monitor:$monitorMain, persistent:true, default:true, on-created-empty:$terminal tmux";
    "$workspace3" = "monitor:$monitorExtra, persistent:true, default:true, on-created-empty:$browser";

    "monitor" = if laptopIsMostRight then [
      "$monitorExtra, 1920x1080, 0x0, 1"
      "$monitorMain, 1920x1080, 1920x0, 1"
      "$monitorLaptop, 1920x1200, 3840x0, 1.5"
    ] else [
      "$monitorLaptop, 1920x1200, 0x0, 1.5"
      "$monitorMain, 1920x1080, 1280x0, 1"
      "$monitorExtra, 1920x1080, 3200x0, 1"
    ];

    "workspace" = if laptopIsMostRight then [
      "1, $workspace3"
      "2, $workspace2"
      "3, $workspace1"
    ] else [
      "1, $workspace1"
      "2, $workspace2"
      "3, $workspace3"
    ];

    "bind" = [
      "$mainMod, space, exec, hyprlock"
    ];
  };
}

