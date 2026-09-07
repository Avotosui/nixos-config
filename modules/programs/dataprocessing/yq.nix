{
  flake.modules.homeManager.programs-dataprocessing-yq = {pkgs, ...}: {
    home.packages = with pkgs; [yq-go];
  };
}
