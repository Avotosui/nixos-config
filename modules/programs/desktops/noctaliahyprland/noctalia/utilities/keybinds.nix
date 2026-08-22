{
  flake.modules.homeManager.programs-desktops-noctaliahyprland = {
    programs.noctalia.settings.keybinds = {
      delete = ["alt+d"];

      down = ["alt+j" "alt+n"];
      left = ["alt+h"];
      right = ["alt+l"];
      up = ["alt+k" "alt+p"];

      tab_next = ["alt+u"];
      tab_previous = ["alt+i"];
    };
  };
}
