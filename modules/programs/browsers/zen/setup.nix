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

    xdg.mimeApps = {
      enable = true;
    };
  };
}
