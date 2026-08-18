{
  flake.modules.homeManager.programs-desktops-noctaliahyprland = {pkgs, ...}: {
    home.pointerCursor = {
      enable = true;
      package = pkgs.simp1e-cursors;
      name = "Simp1e-Tokyo-Night";
      gtk.enable = true;
      hyprcursor = {
        enable = true;
        size = 24;
      };
      x11.enable = true;
    };
  };
}
