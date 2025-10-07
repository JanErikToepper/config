{ ... } @ inputs: {
  imports = [
    ./plugins/waybar
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$borderColor" = "0xffffffff";
      "$monitorMain" = "HDMI-A-1";
      "$monitorLaptop" = "eDP-1";

      "monitor" = [ "$monitorMain, 1920x1080, 0x0, 1" "$monitorLaptop, 1920x1080, 1920x0, 1.5" ];

      "$terminal" = "kitty";
      "$fileManager" = "nautilus";
      "$browser" = "firefox";

      "workspace" = [ "1, monitor:$monitorMain, persistent:true, default:true, on-created-empty:$terminal tmux" "2, monitor:$monitorLaptop, persistent:true, default:true, on-created-empty:firefox" ];

      "animations" = import ./modules/animations.nix {};
      "cursor" = import ./modules/cursor.nix {};
      "decoration" = import ./modules/decoration.nix {};
      "general" = import ./modules/general.nix {};
      "group" = import ./modules/group.nix {};
      "input" = import ./modules/input.nix {};
      "master" = import ./modules/layout.nix {};
      "misc" = import ./modules/misc.nix {};

      "$mainMod" = "SUPER";

      "bind" = [
        "$mainMod, return, exec, kitty"
        "$mainMod, escape, killactive"
        "$mainMod, b, exec, $browser"
        "$mainMod, f, exec, $fileManager"
        "$mainMod, g, exec, gimp"

        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"

        "$mainMod, h, movefocus, l"
        "$mainMod, l, movefocus, r"
        "$mainMod, k, movefocus, u"
        "$mainMod, j, movefocus, d"

        "$mainMod CTRL, h, swapwindow, l"
        "$mainMod CTRL, l, swapwindow, r"
        "$mainMod CTRL, k, swapwindow, u"
        "$mainMod CTRL, j, swapwindow, d"

        "$mainMod SHIFT, h, movewindow, l"
        "$mainMod SHIFT, l, movewindow, r"
        "$mainMod SHIFT, k, movewindow, u"
        "$mainMod SHIFT, j, movewindow, d"

        "$mainMod CTRL, g, togglegroup"
        "$mainMod CTRL, n, changegroupactive, f"
        "$mainMod CTRL, p, changegroupactive, b"
      ];

      "binde" = [
        "$mainMod CTRL, 35, exec, wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+"
        "$mainMod CTRL, 61, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        "$mainMod CTRL, m, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ];

      "exec-once" = [ "waybar" ];
    };
    plugins = with inputs.core.hyprland-plugins; [];
  };

  
  programs.kitty.enable = true;
}

