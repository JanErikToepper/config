{ ... } @ inputs: {
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        position = "top";
        modules-left = [ "hyprland/workspaces" ];
        modules-right = [
          "network"
          "custom/separator"
          "pulseaudio"
          "custom/separator"
          "battery"
          "custom/separator" 
          "clock#date"
          "custom/separator"
          "clock#time"
        ];
        "custom/separator" = {
          format = "|";
          interval = "once";
          tooltip = false;
        };
        network = {
          format-wifi = "{essid}  ";
          format-disconnected = "--  ";
        };
        pulseaudio = {
          format = "{volume}%  ";
          format-muted = "--  ";
        };
        battery = {
          format = "{capacity}%  󰂂";
          format-charging = "{capacity}%  󰂄";
        };
        "clock#date" = {
          format = "{:%a.  %d.%m}  ";
        };
        "clock#time" = {
          format = "{:%H:%M}  󰥔";
        };
      };
    };
    style = ''
      * {
        font-size: 14px;
        font-weight: bold;
      }

      window#waybar {
        background-color: transparent;
        color: #fff;
      }

      #workspaces button {
        color: #fff;
        border-radius: 0;
      }

      #workspaces button.visible {
        background-color: #fff;
        color: #000;
      }

      #custom-separator,
      #network,
      #pulseaudio,
      #battery,
      #clock {
        margin-left: 10px;
        margin-right: 10px;
      }
    ''; 
  };
}

