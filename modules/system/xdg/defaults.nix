let
  ghostty = "ghostty.desktop";
  kitty = "kitty.desktop";
  mpv = "mpv.desktop";
  yazi = "yazi.desktop";
  zathura = "org.pwmt.zathura.desktop";
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
          "application/pdf" = zathura;

          "audio/flac" = mpv;
          "audio/mpeg" = mpv;
          "audio/oog" = mpv;
          "image/gif" = mpv;
          "image/jpeg" = mpv;
          "image/png" = mpv;
          "image/svg+xml" = mpv;
          "image/webp" = mpv;
          "video/mp4" = mpv;
          "video/webm" = mpv;
          "video/x-matroska" = mpv;
          "video/x-msvideo" = mpv;

          "inode/directory" = yazi;

          "x-scheme-handler/terminal" = kitty;

          "text/html" = zen;
          "application/xhtml+xml" = zen;
          "application/x-extension-htm" = zen;
          "application/x-extension-html" = zen;
          "application/x-extension-shtml" = zen;
          "application/x-extension-xhtml" = zen;
          "x-scheme-handler/about" = zen;
          "x-scheme-handler/chrome" = zen;
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
