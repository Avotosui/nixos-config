{
  flake.modules.nixos.programs-windowmanagers-hyprland = {
    programs.hyprland = {
      enable = true;
      withUWSM = true;
      xwayland.enable = true;
    };
  };

  flake.modules.homeManager.programs-windowmanagers-hyprland = {
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
