let
  ghostty = "ghostty.desktop";
  kitty = "kitty.desktop";
  zen = "zen-beta.desktop";
in {
  flake.modules.homeManager.system-xdg = {
    home.sessionVariables = {
      browser = "zen-browser";

      VISUAL = "nvim";
      EDITOR = "nvim";

      TERMINAL = "kitty";
    };

    xdg = {
      mimeApps = {
        enable = true;

        defaultApplications = {
          "x-scheme-handler/terminal" = kitty;

          "text/html" = zen;
          "application/x-extension-htm" = zen;
          "application/x-extension-html" = zen;
          "application/x-extension-shtml" = zen;
          "application/x-extension-xhtml" = zen;
          "application/xhtml+xml" = zen;
          "x-scheme-handler/chrome" = zen;
          "x-scheme-handler/about" = zen;
          "x-scheme-handler/http" = zen;
          "x-scheme-handler/https" = zen;
          "x-scheme-handler/unknown" = zen;
        };
      };

      terminal-exec = {
        enable = true;
        settings.default = [kitty];
      };
    };
  };
}
