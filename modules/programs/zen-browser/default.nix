{inputs, ...}: {
  flake.modules.homeManager.programs-zen-browser = {
    imports = [
      inputs.zen-browser.homeModules.beta
    ];

    programs.zen-browser = {
      enable = true;
    };

    home.sessionVariables.browser = "zen-browser";
  };
}
