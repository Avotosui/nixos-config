{
  flake.modules.homeManager.programs-socials-zoom = {pkgs, ...}: {
    home.packages = with pkgs; [zoom-us];
  };
}
