{
  flake.modules.homeManager.programs-desktops-noctaliahyprland = {
    gtk.enable = true;

    programs.noctalia.settings.theme = {
      builtin = "Tokyo-Night";
      source = "builtin";
      mode = "dark";
    };
  };
}
