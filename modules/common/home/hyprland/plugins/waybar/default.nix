{ ... } @ inputs: {
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        position = "top";
        modules-right = [ "network" "pulseaudio" "battery" "clock" ];
        network = {
          format-wifi = "{essid}";
          format-disconnected = "--";
        };
        pulseaudio = {
          format = "{volume}%";
          format-muted = "--";
        };
        battery = {
          format = "{capacity}%";
        };
        clock = {
          format = "{:%H:%M}";
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

      #pulseaudio,
      #clock,
      #battery,
      #network {
        margin-left: 10px;
        margin-right: 10px;
      }
    ''; 
  };
}

