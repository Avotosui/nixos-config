{
  flake.modules.homeManager.programs-terminals-kitty = {
    programs.kitty = {
      enable = true;

      font.name = "JetBrainsMono Nerd Font";

      themeFile = "tokyo_night_night";
    };

    xdg = {
      mimeApps = {
        enable = true;
        defaultApplications = {
          "x-scheme-handler/terminal" = ["kitty.desktop"];
        };
      };

      terminal-exec = {
        enable = true;
        settings = {
          default = ["kitty.desktop"];
        };
      };
    };
  };
}
