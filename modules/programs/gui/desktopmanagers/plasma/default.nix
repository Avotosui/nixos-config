{inputs, ...}: {
  flake.modules.nixos.programs-gui-desktopmanagers-plasma = {
    services = {
      displayManager.plasma-login-manager.enable = true;
      desktopManager.plasma6.enable = true;
    };
  };

  flake.modules.homeManager.programs-gui-desktopmanagers-plasma = {
    imports = [inputs.plasma-manager.homeModules.plasma-manager];

    programs.plasma = {
      enable = true;
      overrideConfig = true;
    };
  };
}
