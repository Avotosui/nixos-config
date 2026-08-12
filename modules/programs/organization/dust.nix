{
  flake.modules.homeManager.programs-organization-dust = {pkgs, ...}: {
    home.packages = with pkgs; [dust];
  };
}
