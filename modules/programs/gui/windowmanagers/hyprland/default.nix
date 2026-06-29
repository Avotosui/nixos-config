{
  flake.nixos.homeManager.programs-gui-windowmanagers-hyprland = {
    programs.hyprland = {
      enable = true;
      withUWSM = true;
      xwayland.enable = true;
    };
  };
}
