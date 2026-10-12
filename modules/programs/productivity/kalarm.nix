{
  flake.modules.homeManager.programs-productivity-kalarm = {pkgs, ...}: {
    home.packages = with pkgs.kdePackages; [kalarm];
  };
}
