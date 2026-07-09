{inputs, ...}: {
  flake.modules.homeManager.programs-desktopshells-caelestia = {
    imports = [
      inputs.caelestia-shell.homeManagerModules.default
    ];

    programs.caelestia = {
      enable = true;

      settings = {
        general.apps = {
          terminal = ["kitty"];
          explorer = ["yazi"];
        };

        bar.status = {
          showBattery = true;
        };

        cli = {
          enable = true;
        };
      };
    };
  };
}
