{
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        grace = 1;
      };

      background = {
        path = "screenshot";
        blur_size = 5;
        blur_passes = 1;
        brightness = 1;
      };

      input-field = {
        monitor = "";
        size = "300, 50";
        outline_thickness = 3;
        dots_size = 0.3;
        dots_spacing = 0.2;
        fade_on_empty = false;
        font_color = "rgba(255,255,255,0.8)";
        inner_color = "rgba(20,20,20,0.6)";
        outer_color = "rgba(255,255,255,0.3)";
        placeholder_text = "<i>Enter password...</i>";
        position = "0, 100";
        halign = "center";
        valign = "center";
      };

      label = [
        {
          text = "$TIME";
          font_size = 48;
          position = "0, -100";
          halign = "center";
          valign = "center";
        }
        {
          text = "Locked";
          font_size = 24;
          position = "0, -160";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}
