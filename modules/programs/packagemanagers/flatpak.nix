{inputs, ...}: {
  flake.modules.nixos.programs-packagemanagers-flatpak = {
    imports = [inputs.nix-flatpak.nixosModules.nix-flatpak];

    services.flatpak = {
      enable = true;

      update.auto = {
        enable = true;
        onCalendar = "weekly";
      };
    };
  };

  flake.modules.homeManager.programs-packagemanagers-flatpak = {
    imports = [inputs.nix-flatpak.homeManagerModules.nix-flatpak];

    services.flatpak = {
      enable = true;

      update.auto = {
        enable = true;
        onCalendar = "weekly";
      };
    };
  };
}
