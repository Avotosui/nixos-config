{inputs, ...}: {
  flake.modules.homeManager.programs-zen-browser = {
    imports = [
      inputs.zen-browser.homeModules.beta
    ];

    programs.zen-browser = {
      enable = true;
      languagePacks = ["en-US"];

      # policies = import ./dotfiles/policies.nix;
    };

    home.sessionVariables.browser = "zen-browser";

    xdg.mimeApps = {
      enable = true;
      defaultApplications = {
        "text/html" = ["zen.desktop"];
        "x-scheme-handler/http" = ["zen.desktop"];
        "x-scheme-handler/https" = ["zen.desktop"];
      };
    };
  };
}
