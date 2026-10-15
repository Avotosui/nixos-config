{
  flake.modules.homeManager.programs-multimedia-videos-davinciresolve = {pkgs, ...}: {
    home.packages = with pkgs; [davinci-resolve];
  };
}
