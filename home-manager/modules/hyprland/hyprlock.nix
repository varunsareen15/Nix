{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        grace = 10;
        hide_cursor = true;
      };

      label = {
        text = "$TIME";
        font_size = 96;
        font_family = "JetBrains Mono";
        color = "rgba(235, 219, 178, 1.0)";
        position = "0, 100";
        halign = "center";
        valign = "center";
        text_align = "center";

        shadow_passes = 1;
      };

      background = [
        {
          path = "screenshot";
          blur_passes = 3;
          blur_size = 8;
        }
      ];

      input-field = [
        {
          size = "200, 50";
          position = "0, -80";
          monitor = "";
          dots_center = true;
          font_color = "rgb(235, 219, 178)";
          inner_color = "rgb(40, 40, 40)";
          outer_color = "rgb(60, 56, 54)";
          outline_thickness = 5;
          placeholder_text = "OKC in 4";
          shadow_passes = 1;
        }
      ];
    };
  };
}
