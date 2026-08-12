{
  flake.modules.homeManager.programs-organization-gdu = {pkgs, ...}: {
    home.packages = with pkgs; [gdu];
  };
}
