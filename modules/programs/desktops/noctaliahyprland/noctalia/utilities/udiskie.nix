{
  flake.modules.nixos.programs-desktops-noctaliahyprland = {
    services.udisks2.enable = true;
  };

  flake.modules.homeManager.programs-desktops-noctaliahyprland = {pkgs, ...}: {
    home.packages = with pkgs; [udiskie];

    services.udiskie.enable = true;
  };
}
