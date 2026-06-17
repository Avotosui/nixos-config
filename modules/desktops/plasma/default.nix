{inputs, ...}: {
  flake.modules.nixos.desktops-plasma = {pkgs, ...}: {
    time.timeZone = "America/New_York";

    i18n.defaultLocale = "en_US.UTF-8";

    services = {
      displayManager.plasma-login-manager.enable = true;
      desktopManager.plasma6.enable = true;
    };
  };

  flake.modules.homeManager.desktops-plasma = {pkgs, ...}: {
    imports = [inputs.plasma-manager.homeModules.plasma-manager];

    programs.plasma = {
      enable = true;
      overrideConfig = true;
    };
  };
}
