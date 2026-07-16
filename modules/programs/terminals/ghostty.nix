{
  flake.modules.homeManager.programs-ghostty = {
    programs.ghostty = {
      enable = true;

      enableBashIntegration = true;
      enableZshIntegration = true;

      settings = {
        font-family = "JetBrainsMono Nerd Font";
      };
    };

    home.sessionVariables.TERMINAL = "ghostty";

    xdg = {
      mimeApps = {
        enable = true;
        defaultApplications = {
          "x-scheme-handler/terminal" = ["ghostty.desktop"];
        };
      };

      terminal-exec = {
        enable = true;
        settings = {
          default = ["ghostty.desktop"];
        };
      };
    };
  };
}
