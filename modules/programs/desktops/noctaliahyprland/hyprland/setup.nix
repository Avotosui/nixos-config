{
  flake.modules.nixos.programs-desktops-noctaliahyprland = {
    programs.hyprland.enable = true;
    environment.sessionVariables.LIBGL_ALWAYS_SOFTWARE = "1";
  };

  flake.modules.homeManager.programs-desktops-noctaliahyprland = {
    xdg.configFile."hyprland" = {
      recursive = true;
      source = ./dotfiles;
      target = "hypr";
    };
  };
}
