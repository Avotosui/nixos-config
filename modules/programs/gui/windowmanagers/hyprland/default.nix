{
  flake.modules.nixos.programs-gui-windowmanagers-hyprland = {
    programs.hyprland = {
      enable = true;
      withUWSM = true;
      xwayland.enable = true;
    };
  };

  flake.modules.homeManager.programs-gui-windowmanagers-hyprland = {pkgs, ...}: {
    wayland.windowManager.hyprland = {
      enable = true;
      systemd.enable = false;
      package = null;
      portalPackage = null;
    };

    # xdg.portal = {
    #   enable = true;
    #   extraPortals = [pkgs.xdg-desktop-portal-gtk];
    # };
  };
}
