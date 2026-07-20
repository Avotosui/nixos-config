{
  flake.modules.programs-productivity-kalarm = {pkgs, ...}: {
    home.packages = with pkgs.kdePackages; [kalarm];
  };
}
