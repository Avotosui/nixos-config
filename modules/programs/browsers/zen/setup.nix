{inputs, ...}: {
  flake.modules.homeManager.programs-browsers-zen = {
    imports = [
      inputs.zen-browser.homeModules.beta
    ];

    programs.zen-browser = {
      enable = true;
      languagePacks = ["en-US"];

      setAsDefaultBrowser = true;
    };

    home.sessionVariables.browser = "zen-browser";

    xdg.mimeApps = {
      enable = true;
      defaultApplications = {
        "text/html" = ["zen.desktop"];
        "x-scheme-handler/chrome" = ["zen.desktop"];
        "x-scheme-handler/http" = ["zen.desktop"];
        "x-scheme-handler/https" = ["zen.desktop"];
        "application/x-extension-htm" = ["zen.desktop"];
        "application/x-extension-html" = ["zen.desktop"];
        "application/x-extension-shtml" = ["zen.desktop"];
        "application/x-extension-xhtml" = ["zen.desktop"];
        "application/xhtml+xml" = ["zen.desktop"];
      };
    };
  };
}
