{
  flake.modules.nixos.programs-gui-windowmanagers-hyprland = {
    programs.hyprland = {
      enable = true;
      withUWSM = true;
      xwayland.enable = true;
    };
  };

  flake.modules.homeManager.programs-gui-windowmanagers-hyprland = {
    programs.hyprland = {
      enable = true;
      withUWSM = true;
      xwayland.enable = true;
    };
  };
}
