{inputs, ...}: {
  flake.modules.nixos.programs-desktops-noctaliahyprland = {
    services.logind.settings.Login.HandleLidSwitch = "ignore";
  };

  flake.modules.homeManager.programs-desktops-noctaliahyprland = {pkgs, ...}: {
    imports = [inputs.noctalia.homeModules.default];

    programs.noctalia = {
      enable = true;

      settings.shell = {
        launch_apps_as_systemd_services = true;
        setup_wizard_enabled = false;
      };
    };
  };
}
