{
  flake.modules.homeManager.programs-organization-kondo = {pkgs, ...}: {
    home.packages = with pkgs; [kondo];
  };
}
