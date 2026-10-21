{
  flake.modules.homeManager.programs-fun-bonsai = {pkgs, ...}: {
    home.packages = with pkgs; [cbonsai];
  };
}
