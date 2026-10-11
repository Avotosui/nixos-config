{
  flake.modules.homeManager.programs-terminals-kitty = {
    programs.kitty = {
      enable = true;

      font.name = "JetBrainsMono Nerd Font";

      settings = {
        remember_window_size = "no";
      };

      themeFile = "tokyo_night_night";
    };
  };
}
