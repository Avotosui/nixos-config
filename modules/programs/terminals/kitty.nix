{
  flake.modules.homeManager.programs-terminals-kitty = {
    programs.kitty = {
      enable = true;

      font.name = "JetBrainsMono Nerd Font";

      settings = {
        enable_audio_bell = "no";
        remember_window_size = "no";
      };

      themeFile = "tokyo_night_night";
    };
  };
}
