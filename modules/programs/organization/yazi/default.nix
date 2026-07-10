{
  flake.modules.homeManager.programs-organization-yazi = {pkgs, ...}: {
    home.packages = with pkgs; [yazi];
  };
}
