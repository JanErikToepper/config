{ ... } @ inputs: {
  programs.hyprlock = {
    enable = inputs.work.enable;
    settings = {
      general = {
        hide_cursor = true;
        ignore_empty_input = true;
        immediate_render = true;
        fail_timeout = 0;
      };

      animations = [{
        enable = false;
      }];

      background = [{
        color = "rgb(0, 0, 0)";
        blur_size = 0;
        noise = 0;
        contrast = 0;
        brightness = 0;
        vibrancy = 0;
        vibrancy_darkness = 0;
      }];

      input-field = [{
        size = "300, 50";
        outline_thickness = 0;
        dots_spacing = "0.5";
        inner_color = "rgb(30, 30, 30)";
        font_color = "rgb(255, 255, 255)";
        fade_timeout = 0;
        placeholder_text = "";
        rounding = 3;
        check_color = "rgb(60, 60, 60)";
        fail_color = "";
        fail_text = "";
      }];
    };
  };
}

