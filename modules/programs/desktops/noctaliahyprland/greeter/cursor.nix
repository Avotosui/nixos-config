{
  flake.modules.nixos.programs-desktops-noctaliahyprland = {
    lib,
    pkgs,
    ...
  }: {
    services.displayManager.noctalia-greeter.settings.cursor = {
      path = "${pkgs.simp1e-cursors}/share/icons";
      size = 24;
      theme = "Simp1e-Tokyo-Night";
    };
  };
}
