{
  flake.modules.homeManager.programs-fun-areofylfetch = {pkgs, ...}: {
    home.packages = with pkgs; [fetch];
  };
}
