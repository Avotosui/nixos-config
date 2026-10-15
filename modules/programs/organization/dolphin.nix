{
  flake.modules.homeManager.programs-organization-dolphin = {pkgs, ...}: {
    home.packages = with pkgs.kdePackages; [dolphin];
  };
}
