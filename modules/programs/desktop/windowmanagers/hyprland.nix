{
  flake.modules.nixos.programs-desktop-windowmanagers-hyprland = {
    programs.hyprland = {
      enable = true;
      withUWSM = true;
      xwayland.enable = true;
    };
  };

  flake.modules.homeManager.programs-desktop-windowmanagers-hyprland = {
    wayland.windowManager.hyprland = {
      enable = true;
      systemd.enable = false;
      package = null;
      portalPackage = null;

      settings = {
        "$mod" = "SUPER";
        "$terminal" = "kitty";

        exec-once = [
          "celestia-shell"
          "$terminal"
        ];
      };
    };
  };
}
