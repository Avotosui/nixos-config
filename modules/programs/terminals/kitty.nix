{
  flake.modules.homeManager.programs-terminals-kitty = {
    programs.kitty = {
      enable = true;

      font.name = "JetBrainsMono Nerd Font";

      themeFile = "tokyo_night_night";
    };
  };
}
