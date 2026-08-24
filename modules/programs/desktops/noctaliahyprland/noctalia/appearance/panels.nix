{
  flake.modules.homeManager.programs-desktops-noctaliahyprland = {
    programs.noctalia.settings.shell.panel = {
      clipboard_placement = "floating";
      control_center_placement = "floating";
      launcher_placement = "floating";
      polkit_placement = "floating";
      session_placement = "floating";
      wallpaper_placement = "floating";

      clipboard_position = "bottom_center";
      control_center_position = "bottom_center";
      launcher_position = "bottom_center";
      polkit_position = "bottom_center";
      session_position = "bottom_center";
      wallpaper_position = "bottom_center";

      floating_offset = 16;
    };
  };
}
